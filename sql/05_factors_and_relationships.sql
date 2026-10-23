
-- ========================================
-- 05. FACTORS AND RELATIONSHIPS
-- ========================================


-- ========================================
-- 1. FINANCIAL STRESS
-- ========================================

-- Financial stress current and mental health
SELECT
    fincur,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY fincur
ORDER BY fincur;


-- Financial stress past and mental health
SELECT
    finpast,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY finpast
ORDER BY finpast;


-- ========================================
-- 2. CAMPUS BELONGING
-- ========================================

-- Belonging and mental health
SELECT
    belong1,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY belong1
ORDER BY belong1;


-- ========================================
-- 3. DISCRIMINATION
-- ========================================

-- Racial discrimination and mental health
SELECT
    discrim_race,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_race
ORDER BY discrim_race;


-- Cultural discrimination and mental health
SELECT
    discrim_culture,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_culture
ORDER BY discrim_culture;


-- Gender discrimination and mental health
SELECT
    discrim_gender,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_gender
ORDER BY discrim_gender;


-- Sexual discrimination and mental health
SELECT
    discrim_sexual,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_sexual
ORDER BY discrim_sexual;


-- ========================================
-- 4. ALCOHOL CONSUMPTION
-- ========================================

-- Alcohol consumption and mental health
SELECT
    alc_any,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY alc_any
ORDER BY alc_any;


-- ========================================
-- 5. COMBINED FACTORS
-- ========================================

-- E[outcomes | fincur, belong1]
-- Compare belonging levels within
-- each current financial stress level
SELECT
    fincur,
    belong1,
    COUNT(*) AS n_students,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety,
    ROUND(AVG(flourish), 2) AS avg_flourish
FROM students
WHERE fincur BETWEEN 1 AND 5
  AND belong1 BETWEEN 1 AND 6
GROUP BY fincur, belong1
ORDER BY fincur, belong1;


-- E[outcomes | fincur, finpast]
-- Compare current financial stress levels
-- with past financial stress levels
SELECT
    fincur,
    finpast,
    COUNT(*) AS n_students,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety,
    ROUND(AVG(flourish), 2) AS avg_flourish
FROM students
GROUP BY fincur, finpast
ORDER BY fincur, finpast;
