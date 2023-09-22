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

/* 要素が存在しない/するデータを取得する */
SELECT * FROM user WHERE name IS NULL;
SELECT * FROM user WHERE name IS NOT NULL;

/* 複数の条件(論理演算し)を指定してデータを取得する */
SELECT * FROM user WHERE number_of_followers >= 1000 AND name LIKE "%Official%";
SELECT * FROM user WHERE name = "Bob" OR name = "Tom";

/* 取得したデータの並び替え */
SELECT * FROM user ORDER BY number_of_followers DESC;
SELECT * FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers DESC;
SELECT * FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers ASC;

/* 取得する件数を指定する */
SELECT * FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers DESC LIMIT 1;
SELECT * FROM user ORDER BY number_of_followers DESC LIMIT 5;

/* 取得したデータをクエリに流用する(サブクエリ) */
SELECT * FROM user WHERE number_of_followers > (
  SELECT AVG(number_of_followers) FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers DESC LIMIT 100;
);

/* カラム名の表示を指定する */
SELECT name AS "フォロワーが1000人以上いるユーザー" FROM user WHERE number_of_followers >= 1000;
SELECT name AS "公式の中でも平均よりフォロワー数が多いユーザー" FROM user WHERE number_of_followers > (
  SELECT AVG(number_of_followers) FROM user WHERE name LIKE "%Official%" ORDER BY number_of_followers DESC LIMIT 100;
) AND name LIKE "%Official%";
