DROP USER joycey;
CREATE USER joycey IDENTIFIED BY joycey0;
GRANT CREATE SESSION TO joycey;

-- S, Eng, FE, Employee, SG

BEGIN 
    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_r_label_policy',
        user_name         => 'joycey',
        max_read_label    => 'S:ENG,HR,FIN:EMP,SG',
        max_write_label   => 'S:ENG:EMP,SG',
        min_write_label   => '',
        def_label         => 'S:ENG:EMP,SG',
        row_label         => 'U::'
    );

    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'emp_w_label_policy',
        user_name         => 'joycey',
        max_read_label    => 'S:ENG,HR,FIN:EMP,SG',
        max_write_label   => 'S:ENG:EMP,SG',
        min_write_label   => '',
        def_label         => 'S:ENG:EMP,SG',
        row_label         => 'U::'
    );

    SA_USER_ADMIN.SET_USER_LABELS (
        policy_name       => 'sal_rw_label_policy',
        user_name         => 'joycey',
        max_read_label    => 'S:ENG:EMP,SG',
        max_write_label   => 'S:ENG:EMP,SG',
        min_write_label   => '',
        def_label         => 'S:ENG:EMP,SG',
        row_label         => 'U::'
    );
END;
/
