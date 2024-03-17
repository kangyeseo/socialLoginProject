DROP SCHEMA IF EXISTS eatja;
CREATE SCHEMA IF NOT EXISTS eatja DEFAULT CHARACTER SET utf8;
USE eatja;

-- --------------------------------

DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
  userId VARCHAR(60),
  userName VARCHAR(20),
  profileImg VARCHAR(200),
  followerCount INT DEFAULT 0,
  followeeCount INT DEFAULT 0,
  PRIMARY KEY(userId)
);

-- --------------------------------

DROP TABLE IF EXISTS userRelation;

CREATE TABLE IF NOT EXISTS userRelation (
  userRelationId INT NOT NULL AUTO_INCREMENT,
  followerId VARCHAR(60),
  followeeId VARCHAR(60),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY(userRelationId)
);

-- --------------------------------

DROP TABLE IF EXISTS review;

CREATE TABLE IF NOT EXISTS review (
  reviewId INT NOT NULL AUTO_INCREMENT,
  userId VARCHAR(60),
  reviewName VARCHAR(30),
  imgUrl VARCHAR(200),
  locationUrl VARCHAR(200),
  tag TINYINT(1),
  description VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY(reviewId)
);

-- --------------------------------

DROP TABLE IF EXISTS tag;

CREATE TABLE IF NOT EXISTS tag (
  tagId TINYINT(1),
  tagName VARCHAR(10),
  PRIMARY KEY(tagId)
);

-- --------------------------------

SELECT userId, username
FROM User
ORDER BY created DESC
LIMIT 1;

SELECT username
FROM User
WHERE userId = 'asd';

DELETE FROM User
WHERE username = '박근원';

UPDATE User
SET userId = 'dsa'
WHERE username = '김기재';
