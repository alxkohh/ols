-- run as sys
GRANT inherit privileges ON USER sys TO lbacsys;
GRANT lbac_dba to SYS;

DROP USER company;
CREATE USER company IDENTIFIED BY company0;

GRANT CREATE SESSION TO company;
GRANT ALL PRIVILEGES TO company;
