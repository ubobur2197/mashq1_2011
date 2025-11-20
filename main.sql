# 1
SELECT first_name, last_name, email
FROM users
WHERE city = 'Toshkent';


# 2
SELECT *
FROM users
WHERE created_at > '2024-03-01'
  AND EXTRACT(MONTH FROM last_login) = 11
  AND EXTRACT(YEAR FROM last_login) = 2024;


# 3
SELECT region, COUNT(*) AS user_count
FROM users
GROUP BY region
ORDER BY user_count DESC;


# 4
SELECT COUNT(*) AS gmail_active_count
FROM users
WHERE email LIKE '%@gmail.com'
  AND status = 'active';


# 5
SELECT *
FROM users
ORDER BY created_at DESC
LIMIT 5;


# 6
SELECT *
FROM users
WHERE created_at < '2024-07-01';

