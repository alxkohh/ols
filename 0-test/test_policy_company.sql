CREATE TABLE test_tab (
    id int,
    PRIMARY KEY(id)
);

GRANT SELECT ON test_tab TO PUBLIC;

INSERT INTO test_tab (id, test_label) VALUES (1, char_to_label('test_policy', 's::mgr'));

