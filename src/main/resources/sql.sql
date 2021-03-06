-- .read C:\\Users\\Marty\\eclipse-workspace\\/tymova-uloha-pavm07\\src\\main\\resources\\sql.sql

CREATE TABLE IF NOT EXISTS Donations(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	userid INTEGER,
	amount INTEGER,
	hair INTEGER,
	created DATETIME
);

CREATE TABLE IF NOT EXISTS Users(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	username TEXT,
	password TEXT,
	role INTEGER,
	mail TEXT
);

CREATE TABLE IF NOT EXISTS Projects(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	price INTEGER,
	status INTEGER,
	name TEXT,
	userid INTEGER
);

CREATE TABLE IF NOT EXISTS Orders(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	status INTEGER,
	userid INTEGER
);

CREATE TABLE IF NOT EXISTS Intkeyval(
	key TEXT PRIMARY KEY NOT NULL,
	value INTEGER
);

INSERT INTO Users (id, username, password, role, mail) VALUES (1, "admin", "admin", 0, "admin@admin.admin");