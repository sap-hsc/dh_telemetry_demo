CREATE VIRTUAL TABLE "SYSTEM"."THRESHOLD_VIOLATIONS_BATTERYVOLTAGE" AT "DATAHUB_VORA"."<NULL>"."VORA"."THRESHOLD_VIOLATIONS_BATTERYVOLTAGE"; CREATE VIRTUAL TABLE "SYSTEM"."THRESHOLD_VIOLATIONS_BATTERYVOLTAGE" ("BATTERY" DOUBLE, "GEAR" NVARCHAR(32) , "RACE" NVARCHAR(32) , "TIMEST" NVARCHAR(128) , "MACADDRESS" NVARCHAR(50) , "MAC" NVARCHAR(50) , "THRES" DECIMAL(28,6), "VENDNAME" NVARCHAR(50) , "MAT" NVARCHAR(50) , "THRESHOLD_OVER_BIN" INT ) AT "DATAHUB_VORA"."?"."SYSTEM"."THRESHOLD_VIOLATIONS_BATTERYVOLTAGE_LOCAL"