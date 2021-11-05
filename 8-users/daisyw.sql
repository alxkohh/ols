DROP USER daisyw;
CREATE USER daisyw IDENTIFIED BY daisyw0;
GRANT CREATE SESSION TO daisyw;

-- C, ENG (SEC), GLOBAL, not MGR

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'proj_policy',
        user_name         => 'daisyw',
        max_read_label    => 'C:SEC:GLOBAL',
        max_write_label   => 'C:SEC:GLOBAL',
        min_write_label   => 'C',
        def_label         => 'C:SEC:GLOBAL'
    );
END;
/

GRANT SELECT ON company.projects TO daisyw;
