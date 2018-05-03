DROP  COLLECTION VORA.CAR_TELEMETRY_COLLECTION
CREATE COLLECTION VORA.CAR_TELEMETRY_COLLECTION
ALTER COLLECTION VORA.CAR_TELEMETRY_COLLECTION ADD DATASOURCE HDFS('hdfs://spark-hdfs-adapter:8020/car_telemetrydata/car_telemetry.json')
drop view VORA.THRESHOLD_VIOLATIONS_BRAKETEMP
create view VORA.THRESHOLD_VIOLATIONS_BRAKETEMP as SELECT TEMPERATURE, GEAR,RACE,TIMEST,MACADDRESS,MAC,THRES, VENDNAME,MAT, CASE WHEN (TEMPERATURE - THRES) < 0 THEN 0 ELSE 1 END as threshold_over_bin FROM VORA.CAR_TELEMETRY_EXTRACT join VORA.CAR_PART_THRESHOLDS on TRIM(' ' FROM MACADDRESS) = MAC  where MAT like '%MZ-RM%'
drop view VORA.THRESHOLD_VIOLATIONS_BATTERYVOLTAGE
create view VORA.THRESHOLD_VIOLATIONS_BATTERYVOLTAGE as SELECT BATTERY, GEAR,RACE,TIMEST,MACADDRESS,MAC,THRES,VENDNAME,MAT, CASE WHEN (BATTERY - THRES) < 0 THEN 0 ELSE 1 END as threshold_over_bin FROM VORA.CAR_TELEMETRY_EXTRACT join VORA.CAR_PART_THRESHOLDS on TRIM(' ' FROM MACADDRESS) = MAC where MAT like '%MZ-TG%'