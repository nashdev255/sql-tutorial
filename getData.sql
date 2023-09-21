/* テーブルから単一、複数、またはすべてのカラムのデータを取得する */
SELECT name FROM user;
SELECT id, name FROM user;
SELECT * FROM user;

/* 特定の要素を持つuserのレコードを取得する */
SELECT * FROM user WHERE name = "Bob";
SELECT * FROM user WHERE registered_at = "2023-09-21";
SELECT * FROM user WHERE id = 100;
SELECT * FROM user WHERE number_of_followers >= 1000;
SELECT * FROM user WHERE registered_at >= "2022-01-01";
