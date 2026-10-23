-- ========================================
-- 03. MENTAL HEALTH TRENDS
-- ========================================

-- Mental health outcomes by survey year
SELECT
    survey_year,
    COUNT(*) AS total_students,
    COUNT(flourish) AS n_flourish,
    COUNT(deprawsc) AS n_depression,
    COUNT(anx_score) AS n_anxiety,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY survey_year
ORDER BY survey_year;