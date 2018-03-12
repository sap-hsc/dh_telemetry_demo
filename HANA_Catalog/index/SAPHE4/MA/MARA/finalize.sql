$$$
CREATE TRIGGER "SAPHE4"."/1LT/00000836INS" AFTER INSERT ON "SAPHE4"."MARA" REFERENCING NEW ROW NEW FOR EACH ROW 
BEGIN /* UTC_TIMESTAMP 20171005073757*/ IF ( :NEW.MANDT = '400' ) THEN INSERT INTO "SAPHE4"."/1CADMC/00000836" ( "IUUC_SEQUENCE" , "IUUC_TIMESTAMP" , "IUUC_PROCESSED" , "MANDT" , "MATNR" , "IUUC_OPERAT_FLAG"  ) VALUES (  "SAPHE4"."SEQ_/1CADMC/00000836".NEXTVAL, to_char(CURRENT_UTCTIMESTAMP, 'yyyymmddhh24missFF7'), 0, :NEW."MANDT",  :NEW."MATNR",   'I'); END IF; END
$$$
$$$
CREATE TRIGGER "SAPHE4"."/1LT/00000836UPD1" AFTER UPDATE ON "SAPHE4"."MARA" REFERENCING OLD ROW OLD, NEW ROW NEW FOR EACH ROW 
BEGIN /* UTC_TIMESTAMP 20171005073757*/ IF ( :NEW.MANDT = '400' ) THEN IF ( :NEW."MANDT" <> :OLD."MANDT"  OR :NEW."MATNR" <> :OLD."MATNR" ) THEN INSERT INTO "SAPHE4"."/1CADMC/00000836" ( "IUUC_SEQUENCE" , "IUUC_TIMESTAMP" , "IUUC_PROCESSED" , "MANDT" , "MATNR" , "IUUC_OPERAT_FLAG"  ) VALUES (  "SAPHE4"."SEQ_/1CADMC/00000836".NEXTVAL, to_char(CURRENT_UTCTIMESTAMP, 'yyyymmddhh24missFF7'), 0, :OLD."MANDT",  :OLD."MATNR",   'D'); INSERT INTO "SAPHE4"."/1CADMC/00000836" ( "IUUC_SEQUENCE" , "IUUC_TIMESTAMP" , "IUUC_PROCESSED" , "MANDT" , "MATNR" , "IUUC_OPERAT_FLAG"  ) VALUES (  "SAPHE4"."SEQ_/1CADMC/00000836".NEXTVAL, to_char(CURRENT_UTCTIMESTAMP, 'yyyymmddhh24missFF7'), 0, :NEW."MANDT",  :NEW."MATNR",   'I'); ELSE INSERT INTO "SAPHE4"."/1CADMC/00000836" ( "IUUC_SEQUENCE" , "IUUC_TIMESTAMP" , "IUUC_PROCESSED" , "MANDT" , "MATNR" , "IUUC_OPERAT_FLAG"  ) VALUES (  "SAPHE4"."SEQ_/1CADMC/00000836".NEXTVAL, to_char(CURRENT_UTCTIMESTAMP, 'yyyymmddhh24missFF7'), 0, :NEW."MANDT",  :NEW."MATNR",   'U'); END IF; END IF; END
$$$
$$$
CREATE TRIGGER "SAPHE4"."/1LT/00000836DEL" AFTER DELETE ON "SAPHE4"."MARA" REFERENCING OLD ROW OLD FOR EACH ROW 
BEGIN /* UTC_TIMESTAMP 20171005073757*/ IF ( :OLD.MANDT = '400' ) THEN INSERT INTO "SAPHE4"."/1CADMC/00000836" ( "IUUC_SEQUENCE" , "IUUC_TIMESTAMP" , "IUUC_PROCESSED" , "MANDT" , "MATNR" , "IUUC_OPERAT_FLAG"  ) VALUES (  "SAPHE4"."SEQ_/1CADMC/00000836".NEXTVAL, to_char(CURRENT_UTCTIMESTAMP, 'yyyymmddhh24missFF7'), 0, :OLD."MANDT",  :OLD."MATNR",   'D'); END IF; END
$$$