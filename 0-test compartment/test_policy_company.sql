CREATE TABLE test2_tab (
    id int,
    PRIMARY KEY(id)
);

GRANT SELECT ON test2_tab TO PUBLIC;

INSERT INTO test2_tab (id, test2_label) VALUES (1, char_to_label('test2_policy', 'S:'));
INSERT INTO test2_tab (id, test2_label) VALUES (2, char_to_label('test2_policy', 'S:ENG'));
INSERT INTO test2_tab (id, test2_label) VALUES (3, char_to_label('test2_policy', 'S:FIN'));
INSERT INTO test2_tab (id, test2_label) VALUES (4, char_to_label('test2_policy', 'S:HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (5, char_to_label('test2_policy', 'S:ENG,FIN'));
INSERT INTO test2_tab (id, test2_label) VALUES (6, char_to_label('test2_policy', 'S:ENG,HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (7, char_to_label('test2_policy', 'S:FIN,HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (8, char_to_label('test2_policy', 'S:ENG,FIN,HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (9, char_to_label('test2_policy', 'U:'));
INSERT INTO test2_tab (id, test2_label) VALUES (10, char_to_label('test2_policy', 'U:ENG'));
INSERT INTO test2_tab (id, test2_label) VALUES (11, char_to_label('test2_policy', 'U:FIN'));
INSERT INTO test2_tab (id, test2_label) VALUES (12, char_to_label('test2_policy', 'U:HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (13, char_to_label('test2_policy', 'U:ENG,FIN'));
INSERT INTO test2_tab (id, test2_label) VALUES (14, char_to_label('test2_policy', 'U:ENG,HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (15, char_to_label('test2_policy', 'U:FIN,HR'));
INSERT INTO test2_tab (id, test2_label) VALUES (16, char_to_label('test2_policy', 'U:ENG,FIN,HR'));

select id, label_to_char(test2_label) from company.test2_tab;
select SA_SESSION.LABEL('test2_policy') from dual;