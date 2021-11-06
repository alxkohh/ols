DROP USER dongy;
CREATE USER dongy IDENTIFIED BY dongy0;
GRANT CREATE SESSION TO dongy;

-- DIR, HR, APAC

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_policy',
        user_name         => 'dongy',
        max_read_label    => 'DIR:ENG,HR,FIN:APAC',
        max_write_label   => 'DIR:ENG,HR,FIN:APAC',
        min_write_label   => 'EMP',
        def_label         => 'DIR:ENG,HR,FIN:APAC'
    );
    
    -- TODO write_label should not include HR, but even with HR it doesn't work
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'sal_policy',
        user_name         => 'dongy',
        max_read_label    => 'DIR:ENG,HR,FIN:APAC',
        max_write_label   => 'DIR:ENG,HR,FIN:APAC',
        min_write_label   => 'EMP',
        def_label         => 'DIR:ENG,HR,FIN:APAC'
    );
END;
/

GRANT SELECT, UPDATE ON company.employees TO dongy;
GRANT SELECT, UPDATE ON company.salary TO dongy;