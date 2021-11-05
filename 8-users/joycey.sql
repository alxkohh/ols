DROP USER joycey;
CREATE USER joycey IDENTIFIED BY joycey0;
GRANT CREATE SESSION TO joycey;

-- EMP, HR, HK

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_policy',
        user_name         => 'joycey',
        max_read_label    => 'EMP:ENG,HR,FIN:HK',
        max_write_label   => 'EMP:ENG,HR,FIN:HK',
        min_write_label   => 'EMP',
        def_label         => 'EMP:ENG,HR,FIN:HK'
    );
    
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'sal_policy',
        user_name         => 'joycey',
        max_read_label    => 'EMP:ENG,HR,FIN:HK',
        max_write_label   => 'EMP:ENG,FIN:HK',
        min_write_label   => 'EMP',
        def_label         => 'EMP:ENG,HR,FIN:HK'
    );
END;
/

GRANT SELECT, UPDATE ON company.employees TO joycey;
GRANT SELECT, UPDATE ON company.salary TO joycey;
