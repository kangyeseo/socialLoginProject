DROP SCHEMA IF EXISTS socialLoginProject;
CREATE SCHEMA IF NOT EXISTS socialLoginProject DEFAULT CHARACTER SET utf8;
USE socialLoginProject;

-- --------------------------------

DROP TABLE IF socialLoginProject.user;

CREATE TABLE user (
  userId VARCHAR(60),
  userName VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()<
  PRIMARY KEY(userId)
);

-- --------------------------------

INSERT INTO user (userId, userName, profileImg) VALUES
("root", "근원", "asdfgh"),
("park", "공원", "qwerty"),
("rlwo", "기재", "zxcvbn"),
("xodn", "태우", "hjklop"),
("woals", "재민", "tyuio");


SELECT userId, username FROM User ORDER BY created LIMIT 1;

SELECT username FROM User WHERE userId = 'asd';

DELETE FROM User WHERE username = '박근원';

UPDATE User SET userId = 'dsa' WHERE username = '김기재';