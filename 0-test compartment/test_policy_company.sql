CREATE TABLE test2_tab (
    id int,
    PRIMARY KEY(id)
);

GRANT SELECT ON test2_tab TO PUBLIC;

INSERT INTO test2_tab (id, test2_label) VALUES (1, char_to_label('test2_policy', 's:hr'));

select id, label_to_char(test2_label) from company.test2_tab;
select SA_SESSION.LABEL('test2_policy') from dual;