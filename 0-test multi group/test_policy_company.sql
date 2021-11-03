CREATE TABLE test3_tab (
    id int,
    PRIMARY KEY(id)
);

GRANT SELECT ON test_tab TO PUBLIC;

INSERT INTO test_tab (id, test3_label) VALUES (1, char_to_label('test3_policy', 's::dir,global'));
INSERT INTO test_tab (id, test3_label) VALUES (2, char_to_label('test3_policy', 's::mgr,global'));
INSERT INTO test_tab (id, test3_label) VALUES (3, char_to_label('test3_policy', 's::emp,global'));
INSERT INTO test_tab (id, test3_label) VALUES (4, char_to_label('test3_policy', 's::dir,apac'));
INSERT INTO test_tab (id, test3_label) VALUES (5, char_to_label('test3_policy', 's::mgr,apac'));
INSERT INTO test_tab (id, test3_label) VALUES (6, char_to_label('test3_policy', 's::emp,apac'));
INSERT INTO test_tab (id, test3_label) VALUES (7, char_to_label('test3_policy', 's::dir,sg'));
INSERT INTO test_tab (id, test3_label) VALUES (8, char_to_label('test3_policy', 's::mgr,sg'));
INSERT INTO test_tab (id, test3_label) VALUES (9, char_to_label('test3_policy', 's::emp,sg'));
INSERT INTO test_tab (id, test3_label) VALUES (11, char_to_label('test3_policy', 'u::dir,global'));
INSERT INTO test_tab (id, test3_label) VALUES (12, char_to_label('test3_policy', 'u::mgr,global'));
INSERT INTO test_tab (id, test3_label) VALUES (13, char_to_label('test3_policy', 'u::emp,global'));
INSERT INTO test_tab (id, test3_label) VALUES (14, char_to_label('test3_policy', 'u::dir,apac'));
INSERT INTO test_tab (id, test3_label) VALUES (15, char_to_label('test3_policy', 'u::mgr,apac'));
INSERT INTO test_tab (id, test3_label) VALUES (16, char_to_label('test3_policy', 'u::emp,apac'));
INSERT INTO test_tab (id, test3_label) VALUES (17, char_to_label('test3_policy', 'u::dir,sg'));
INSERT INTO test_tab (id, test3_label) VALUES (18, char_to_label('test3_policy', 'u::mgr,sg'));
INSERT INTO test_tab (id, test3_label) VALUES (19, char_to_label('test3_policy', 'u::emp,sg'));

select id, label_to_char(test3_label) from company.test3_tab;
select SA_SESSION.LABEL('test3_policy') from dual;