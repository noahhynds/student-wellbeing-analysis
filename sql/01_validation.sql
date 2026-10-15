-- Inspect students database

SELECT *
FROM students
LIMIT 10;

-- Check Count
SELECT COUNT(*) AS total_rows
FROM students;

-- Check summaries for outcomes

SELECT MIN(flourish) AS "Min Flourish",
    ROUND(AVG(flourish), 2) AS "Average Flourish",
    MAX(flourish) AS "Max Flourish"
FROM students;


SELECT MIN(deprawsc) AS "Min deprawsc",
    ROUND(AVG(deprawsc), 2) AS "Average deprawsc",
    MAX(deprawsc) AS "Max deprawsc"
FROM students;


SELECT MIN(anx_score) AS "Min anx_score",
    ROUND(AVG(anx_score), 2) AS "Average anx_score",
    MAX(anx_score) AS "Max anx_score"
FROM students;
-- 

