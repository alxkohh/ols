DROP USER joycey;
CREATE USER joycey IDENTIFIED BY joycey0;
GRANT CREATE SESSION TO joycey;

-- EMP, HR, GLOBAL

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_policy',
        user_name         => 'joycey',
        max_read_label    => 'EMP:ENG,HR,FIN:GLOBAL',
        max_write_label   => 'EMP:ENG,HR,FIN:GLOBAL',
        min_write_label   => 'EMP',
        def_label         => 'EMP:ENG,HR,FIN:GLOBAL'
    );
    
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'sal_policy',
        user_name         => 'joycey',
        max_read_label    => 'EMP::',
        max_write_label   => 'EMP::',
        min_write_label   => 'EMP',
        def_label         => 'EMP::'
    );
END;
/

GRANT SELECT, UPDATE, INSERT, DELETE ON company.employees TO joycey;
GRANT SELECT ON company.salary TO joycey;
