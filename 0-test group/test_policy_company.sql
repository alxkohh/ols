CREATE TABLE test_tab (
    id int,
    PRIMARY KEY(id)
);

GRANT SELECT ON test_tab TO PUBLIC;

INSERT INTO test_tab (id, test_label) VALUES (1, char_to_label('test_policy', 's::dir'));
INSERT INTO test_tab (id, test_label) VALUES (2, char_to_label('test_policy', 's::mgr'));
INSERT INTO test_tab (id, test_label) VALUES (3, char_to_label('test_policy', 's::emp'));
INSERT INTO test_tab (id, test_label) VALUES (4, char_to_label('test_policy', 'u::dir'));
INSERT INTO test_tab (id, test_label) VALUES (5, char_to_label('test_policy', 'u::mgr'));
INSERT INTO test_tab (id, test_label) VALUES (6, char_to_label('test_policy', 'u::emp'));

select id, label_to_char(test_label) from company.test_tab;
select SA_SESSION.LABEL('test_policy') from dual;