Q1
CREATE TABLE departments (
  department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
ALTER TABLE people ADD department_id INT UNSIGNED NULL AFTER email;

Q3
INSERT INTO departments (name) VALUES ('営業','開発','経理','人事','情報システム');

INSERT INTO people (name,email,age,gender,department_id) VALUES ('秋山翔吾','akiyama@gmail.com',32,1,1)
('大島洋平','ohshima@gmail.com',35,1,1)
('亀井善行','kamei@gmail.com',38,1,1)
('園田真理','mari@gmail.com',26,2,2)
('長田結花','yuka@gmail.com',28,2,2)
('木場勇治','kiba@gmail.com',27,1,2)
('橘朔夜','sakuya@gamail.com',28,1,2)
('草加雅人','masato@gmail.com',28,1,3)
('利根川幸雄','tonegawa@gmail.com',52,1,4)
('桐生戦兎','sento@gmail.com',24,1,5);

INSERT INTO reports (content) VALUES ('本日の営業で無事に契約を締結しました')
('昨日の業務では誤ってしまった箇所があったので気を付けます')
('昨日の業務でのフィードバックを明日行います')
('今後とも宜しくお願い致します')
('貴方をこのプロジェクトのメンバーから外します')
('貴方を詐欺罪と器物損壊罪で訴えます')
('明日は事情により欠勤します')
('本日は体調不良により、早退しました')
('終業後はそのまま直帰しました')
('このままの状況が続く事は良くないと思います');

 UPDATE  reports SET person_id = 1;
 UPDATE  reports SET person_id = 2 where report_id = 2;
 UPDATE  reports SET person_id = 3 where report_id = 3;
 UPDATE  reports SET person_id = 4 where report_id = 4;
 UPDATE  reports SET person_id = 5 where report_id = 5;
 UPDATE  reports SET person_id = 6 where report_id = 6;
 UPDATE  reports SET person_id = 7 where report_id = 7;
 UPDATE  reports SET person_id = 8 where report_id = 8;
 UPDATE  reports SET person_id = 9 where report_id = 9;
 UPDATE  reports SET person_id = 10 where report_id = 10;

Q4
SELECT * FROM people WHERE department_id IS NULL;
UPDATE people SET department_id =1 WHERE department_id IS NULL;

Q5
SELECT * FROM people WHERE gender=1 ORDER BY name,age DESC;

Q6
peopleテーブルのカラムである`name`, `email`, `age`を取得して、昇順でレコードをソートしようとしている。created_at列から `department_id` = 1の昇順でソートする。

Q7
SELECT * FROM people WHERE gender=2 AND age>=20 OR gender=1 AND age>=40;

Q8
SELECT * FROM people WHERE department_id =1 ORDER BY age ASC;

Q9
SELECT AVG(age) AS average_age FROM people WHERE gender=2 AND department_id =2;

Q10
SELECT people.name,departments.name,reports.content FROM people INNER JOIN reports ON people.person_id = reports.person_id INNER JOIN departments ON people.department_id = departments.department_id WHERE content IS NOT NULL;