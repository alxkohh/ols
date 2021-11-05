DROP USER alexk;
CREATE USER alexk IDENTIFIED BY alexk0;
GRANT CREATE SESSION TO alexk;

-- MGR, FIN, SG

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_policy',
        user_name         => 'alexk',
        max_read_label    => 'MGR:ENG,HR,FIN:SG',
        max_write_label   => 'MGR:ENG,HR,FIN:SG',
        min_write_label   => 'EMP',
        def_label         => 'MGR:ENG,HR,FIN:SG'
    );
END;
/

GRANT SELECT ON company.employees TO alexk;
