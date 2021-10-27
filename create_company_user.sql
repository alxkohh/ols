-- run as sys
DROP USER company;
CREATE USER company IDENTIFIED BY company0;

GRANT CREATE SESSION TO company;
GRANT ALL PRIVILEGES TO company;