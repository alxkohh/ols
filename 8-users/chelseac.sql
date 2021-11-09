DROP USER chelseac;
CREATE USER chelseac IDENTIFIED BY chelseac0;
GRANT CREATE SESSION TO chelseac;

-- C, Eng, FE + DevOps, Manager, APAC

BEGIN
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_policy',
        user_name         => 'chelseac',
        max_read_label    => 'MGR:ENG:APAC',
        max_write_label   => 'MGR',
        min_write_label   => 'MGR',
        def_label         => 'MGR:ENG:APAC'
    );

    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'sal_policy',
        user_name         => 'chelseac',
        max_read_label    => 'MGR:ENG:APAC',
        max_write_label   => 'MGR',
        min_write_label   => 'MGR',
        def_label         => 'MGR:ENG:APAC'
    );

    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'proj_policy',
        user_name         => 'chelseac',
        max_read_label    => 'C:FE,DEV:APAC',
        max_write_label   => 'C:FE,DEV:APAC',
        min_write_label   => 'C',
        def_label         => 'C:FE,DEV:APAC'
    );

    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'budget_policy',
        user_name         => 'chelseac',
        max_read_label    => 'C:FE,DEV:APAC',
        max_write_label   => 'C:FE,DEV:APAC',
        min_write_label   => 'C',
        def_label         => 'C:FE,DEV:APAC'
    );
END;
/

GRANT SELECT, UPDATE ON company.employees TO chelseac;
GRANT SELECT, UPDATE ON company.salary TO chelseac;
