CREATE TABLE test_tab (
    id int,
    PRIMARY KEY(id)
);

GRANT SELECT ON test_tab TO PUBLIC;

INSERT INTO test_tab (id, test_label) VALUES (1, char_to_label('test_policy', 's::mgr'));

select id, label_to_char(test_label) from company.test_tab;
select SA_SESSION.LABEL('test_policy') from dual;