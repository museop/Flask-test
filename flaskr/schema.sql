DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS product;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE post (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pname TEXT NOT NULL,
    counts INTEGER NOT NULL,
    category TEXT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("apple", 1, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("tomato", 2, "vegetable");
INSERT INTO product (pname, counts, category) VALUES ("keyboard", 1, "equipment");
INSERT INTO product (pname, counts, category) VALUES ("mouse", 5, "equipment");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");
INSERT INTO product (pname, counts, category) VALUES ("orange", 3, "fruit");

