/* 重複する特定のカラムを除いたデータを取得する */
SELECT DISTINCT(name) FROM items;

/* 四則演算した状態で取得する */
SELECT price * 1.08 FROM items;
SELECT price - 30 FROM items;

/* 特定のカラムの合計値を取得する */
SELECT SUM(price) FROM items WHERE category = "Beauty";

/* 特定のカラムの平均値を取得する */
SELECT AVG(number_of_followers) FROM user WHERE name LIKE "%Official%";

/* データ、レコードの数を取得する */
SELECT COUNT(*) FROM user;

/* 最小値、最大値を取得する */
SELECT MAX(number_of_followers) FROM user WHERE name LIKE "%Official%";
/* The same action
SELECT number_of_followers FROM user ORDER BY number_of_followers DESC LIMIT 1;
*/
SELECT MIN(price) from items WHERE category = "Laptop";

/* グループ化 */
SELECT COUNT(*), registered_at GROUP BY registered_at;
SELECT SUM(price), category GROUP BY category;

