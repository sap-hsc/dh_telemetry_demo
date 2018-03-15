DROP  COLLECTION VORA.CAR_TELEMETRY_COLLECTION
CREATE COLLECTION VORA.CAR_TELEMETRY_COLLECTION
ALTER COLLECTION VORA.CAR_TELEMETRY_COLLECTION ADD DATASOURCE HDFS('hdfs://spark-hdfs-adapter:8020/car_telemetrydata/car_telemetry.json')
LOAD COLLECTION VORA.CAR_TELEMETRY_COLLECTION
DROP TABLE VORA.CAR_TELEMETRY_EXTRACT
CREATE  TABLE  VORA.CAR_TELEMETRY_EXTRACT ( temperature double ,battery double ,gear VARCHAR(32) ,race VARCHAR(32) , timest VARCHAR(128) ,macaddress VARCHAR(50) )  STORE IN MEMORY
ALTER TABLE VORA.CAR_TELEMETRY_EXTRACT ADD DATASOURCE HDFS('hdfs://spark-hdfs-adapter:8020/car_telemetrydata_solution/CarTelemetryStructuredDataExtract.csv')  DELIMITED BY ','
LOAD TABLE VORA.CAR_TELEMETRY_EXTRACT
DROP  TABLE VORA.CAR_PART_THRESHOLDS
CREATE TABLE VORA.CAR_PART_THRESHOLDS ( MAC VARCHAR(50) ,MAT VARCHAR(50) ,THRES DECIMAL(28,6) ,VENDNAME VARCHAR(50) ,GEW DECIMAL(28,6) ) STORE IN MEMORY TYPE DATASOURCE
DROP TABLE VORA.MATERIAL_THRESHOLDS
CREATE  TABLE  VORA.MATERIAL_THRESHOLDS ( material_nr VARCHAR(32) , macaddress VARCHAR(128) , thresholds double , vendorName VARCHAR(128)  )  STORE IN MEMORY
ALTER TABLE VORA.MATERIAL_THRESHOLDS ADD DATASOURCE HDFS('hdfs://spark-hdfs-adapter:8020/car_telemetry_solution/D_HDFS_RESULT.csv')  DELIMITED BY ','
LOAD TABLE VORA.MATERIAL_THRESHOLDS
drop table VORA.CAR_TELEMETRY_PREDICTED
CREATE TABLE VORA.CAR_TELEMETRY_PREDICTED ( speed VARCHAR(32) ,battery VARCHAR(32) ,gear VARCHAR(32) ,testcase VARCHAR(32) , timest VARCHAR(64) ,macaddress VARCHAR(64), brake_temperature_threshold VARCHAR(32) ,battery_voltag_threshold VARCHAR(32) ,outlier_yesno VARCHAR(32) )  STORE IN MEMORY
ALTER TABLE VORA.CAR_TELEMETRY_PREDICTED ADD DATASOURCE HDFS('hdfs://spark-hdfs-adapter:8020/car_telemetrydata/CarTelemetryAfterPrediction')  DELIMITED BY ','
LOAD TABLE VORA.CAR_TELEMETRY_PREDICTED
