-- levels for sal read label
BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'sal_r_label',
   level_num     => 30,
   short_name    => 'S',
   long_name     => 'SECRET');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'sal_r_label',
   level_num     => 20,
   short_name    => 'C',
   long_name     => 'CLASSIFIED');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'sal_r_label',
   level_num     => 10,
   short_name    => 'U',
   long_name     => 'UNCLASSIFIED');
END;
/

-- levels for sal write labels
BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'sal_w_label',
   level_num     => 30,
   short_name    => 'S',
   long_name     => 'SECRET');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'sal_w_label',
   level_num     => 20,
   short_name    => 'C',
   long_name     => 'CLASSIFIED');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'sal_w_label',
   level_num     => 10,
   short_name    => 'U',
   long_name     => 'UNCLASSIFIED');
END;
/
