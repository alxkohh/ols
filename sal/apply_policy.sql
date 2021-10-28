BEGIN
  SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('sal_all_label_policy', 'company', 'salary');
END;
/

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'sal_all_label_policy',
    schema_name    => 'company',
    table_name     => 'salary',
    table_options  => 'READ_CONTROL, WRITE_CONTROL, LABEL_DEFAULT'
  );
END;
/
