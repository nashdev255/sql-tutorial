-- 新しくデータを挿入する
INSERT INTO user(name, age)
VALUE ("Jordan", 18);

-- 既存のデータを上書きする
UPDATE user
SET name = "Emily", age = 16;
WHERE id = 5;

