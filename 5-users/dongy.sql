BEGIN
  SA_USER_ADMIN.SET_LEVELS (
    policy_name   => 'user_label',
    user_name     => 'dongy', 
    max_level     => 'S',
  );

  SA_USER_ADMIN.SET_COMPARTMENTS (
    policy_name   => 'user_label',
    user_name     => 'dongy', 
    read_comps    => 'HR',
  );

  SA_USER_ADMIN.SET_GROUPS (
    policy_name   => 'user_label',
    user_name     => 'dongy', 
    read_groups   => 'APAC',
  );

  SA_USER_ADMIN.SET_GROUPS (
    policy_name   => 'user_label',
    user_name     => 'dongy', 
    read_groups   => 'DIR',
  );
  
END;
/