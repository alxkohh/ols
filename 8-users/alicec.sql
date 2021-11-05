DROP USER alicec;
CREATE USER alicec IDENTIFIED BY alicec0;
GRANT CREATE SESSION TO alicec;

-- S, ENG (BE), SG, not MGR

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'proj_policy',
        user_name         => 'alicec',
        max_read_label    => 'S:BE:SG',
        max_write_label   => 'S:BE:SG',
        min_write_label   => 'S',
        def_label         => 'S:BE:SG'
    );
END;
/

GRANT SELECT ON company.projects TO alicec;
