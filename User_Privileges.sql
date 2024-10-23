--User creation/setup

alter session set "_ORACLE_SCRIPT"=true;  
create user BRAIN_WAVE_DBA_INTERN identified by "Test";

show user;

grant all privileges to BRAIN_WAVE_DBA_INTERN;
