grant select, execute, update, insert, delete on schema SYSTEM to _SYS_REPO with grant option;
grant select, execute, update, insert, delete on schema SAPHE4 to _SYS_REPO with grant option;
grant select, execute, update, insert, delete on schema SAPHE4 to DATAHUB_1 with grant option;
grant select on schema SYSTEM to DATAHUB_1 with grant option;
CREATE VIRTUAL TABLE "SYSTEM"."CAR_TELEMETRY_EXTRACT" at "DATAHUB_VORA"."<NULL>"."VORA"."CAR_TELEMETRY_EXTRACT";
CREATE VIRTUAL TABLE "SYSTEM"."RACE_RESULTS" at "DATAHUB_VORA"."<NULL>"."VORA"."RACE_RESULTS";
CREATE VIRTUAL TABLE "SYSTEM"."THRESHOLDVIOLATIONS_BATTERYVOLTAGE" at "DATAHUB_VORA"."<NULL>"."VORA"."THRESHOLD_VIOLATIONS_BATTERYVOLTAGE";
CREATE VIRTUAL TABLE "SYSTEM"."THRESHOLDVIOLATIONS_BRAKETEMP" at "DATAHUB_VORA"."<NULL>"."VORA"."THRESHOLD_VIOLATIONS_BRAKETEMP";
