BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'sal_all_label_policy',
    schema_name    => 'company',
    table_name     => 'salary',
    table_options  => 'ALL_CONTROL',
  );
END;
/
