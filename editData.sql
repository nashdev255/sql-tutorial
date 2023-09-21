/* 重複する特定のカラムを除いたデータを取得する */
SELECT DISTINCT(name) FROM items;

/* 四則演算した状態で取得する */
SELECT price * 1.08 FROM items;
SELECT price - 30 FROM items;

/* 特定のカラムの合計値を取得する */
SELECT SUM(price) FROM items WHERE category = "Beauty";

/* 特定のカラムの平均値を取得する */
SELECT SUM(number_of_followers) FROM user WHERE name LIKE "%Official%";