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

/* 特定の要素を"含む"userのレコードを取得する */
SELECT * FROM user WHERE name LIKE "%Official%";
SELECT * FROM user WHERE name LIKE "Official%";
SELECT * FROM user WHERE name LIKE "%Official";

/* 特定の要素を持たない、または含まないuserのレコードを取得する */
SELECT * FROM user WHERE NOT name = "Bob";
SELECT * FROM user WHERE NOT name LIKE "%Official%";

/* 要素が存在しない(IS NULL)のデータを取得する */
SELECT * FROM user WHERE name IS NOT NULL;

/* 複数の条件(論理演算し)を指定してデータを取得する */
SELECT * FROM user WHERE number_of_followers >= 1000 AND name LIKE "%Official%";
SELECT * FROM user WHERE name = "Bob" OR name = "Tom";

/* 取得したデータの並び替え */
SELECT * FROM user ORDER BY number_of_followers DESC;
SELECT * FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers DESC;
SELECT * FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers ASC;

