-- ========================================
-- 02. DESCRIPTIVE STATISTICS
-- ========================================

-- Proportion of students that are
-- international vs domestic

SELECT
    CASE
        WHEN international = 1 THEN 'International'
        WHEN international = 0 THEN 'Domestic'
        ELSE 'Missing'
    END AS student_type,

    COUNT(*) AS n_students,

    ROUND(
        COUNT(*) * 1.0 / SUM(COUNT(*)) OVER (), 4
    ) AS proportion,

    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
    ) AS percentage

FROM students
GROUP BY international;