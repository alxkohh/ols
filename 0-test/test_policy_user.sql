BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'test_policy',
        user_name     => 'company', 
        max_level     => 'S',
        min_level     => 'U',
        def_level     => 'S'
    );
END;
/

DROP USER joycey;
CREATE USER joycey IDENTIFIED BY joycey0;
GRANT CREATE SESSION TO joycey;

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'test_policy',
        user_name     => 'joycey', 
        max_level     => 'U',
        min_level     => 'U',
        def_level     => 'U'
    );
END;
/