DROP USER carolt;
CREATE USER carolt IDENTIFIED BY carolt0;
GRANT CREATE SESSION TO carolt;

-- C, ENG (SEC, DEV), EMEA, MGR

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'proj_policy',
        user_name         => 'carolt',
        max_read_label    => 'C:SEC,DEV:EMEA',
        max_write_label   => 'C:SEC,DEV:EMEA',
        min_write_label   => 'C',
        def_label         => 'C:SEC,DEV:EMEA'
    );
END;
/

GRANT SELECT, INSERT, UPDATE, DELETE ON company.projects TO carolt;
GRANT SELECT, INSERT, UPDATE, DELETE ON company.project_budgets TO carolt;
