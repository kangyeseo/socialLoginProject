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
