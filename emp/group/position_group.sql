-- position groups for emp read label
BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 30,
  short_name      => 'DIR',
  long_name       => 'DIRECTOR');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 20,
  short_name      => 'MGR',
  long_name       => 'MANAGER',
  parent_name     => 'DIR');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 10,
  short_name      => 'EMP',
  long_name       => 'EMPLOYEE',
  parent_name     => 'MGR');
END;
/

-- position groups for emp write label
BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_w_label',
  group_num       => 30,
  short_name      => 'DIR',
  long_name       => 'DIRECTOR');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_w_label',
  group_num       => 20,
  short_name      => 'MGR',
  long_name       => 'MANAGER',
  parent_name     => 'DIR');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_w_label',
  group_num       => 10,
  short_name      => 'EMP',
  long_name       => 'EMPLOYEE',
  parent_name     => 'MGR');
END;
/

-- region groups for emp read label
BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 40,
  short_name      => 'GLOBAL',
  long_name       => 'GLOBAL');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 30,
  short_name      => 'APAC',
  long_name       => 'APAC',
  parent_name     => 'GLOBAL');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 20,
  short_name      => 'EMEA',
  long_name       => 'EMEA',
  parent_name     => 'GLOBAL');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 10,
  short_name      => 'AMER',
  long_name       => 'AMER',
  parent_name     => 'GLOBAL');
END;
/
BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 31,
  short_name      => 'SG',
  long_name       => 'SINGAPORE',
  parent_name     => 'APAC');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 32,
  short_name      => 'HK',
  long_name       => 'HONG_KONG',
  parent_name     => 'APAC');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 21,
  short_name      => 'LON',
  long_name       => 'LONDON',
  parent_name     => 'EMEA');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 22,
  short_name      => 'PAR',
  long_name       => 'PARIS',
  parent_name     => 'EMEA');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 11,
  short_name      => 'NY',
  long_name       => 'NEW_YORK',
  parent_name     => 'AMER');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'emp_r_label',
  group_num       => 12,
  short_name      => 'SF',
  long_name       => 'SAN_FRANCISCO',
  parent_name     => 'AMER');
END;
/
