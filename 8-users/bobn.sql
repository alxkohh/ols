DROP USER bobn;
CREATE USER bobn IDENTIFIED BY bobn0;
GRANT CREATE SESSION TO bobn;

-- C, ENG (FE), APAC, MGR

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'proj_policy',
        user_name         => 'bobn',
        max_read_label    => 'C:FE:APAC',
        max_write_label   => 'C:FE:APAC',
        min_write_label   => 'C',
        def_label         => 'C:FE:APAC'
    );
END;
/

GRANT SELECT, INSERT, UPDATE, DELETE ON company.projects TO bobn;
GRANT SELECT, INSERT, UPDATE, DELETE ON company.project_budgets TO bobn;
