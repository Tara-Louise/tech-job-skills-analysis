-- ===========================================
-- 04_top20skills.sql
-- Purpose: Identify top 20 most in-demand technical skills
-- ===========================================

CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.Top20skills` AS
SELECT
  skill,
  COUNT(*) AS mentions
FROM `techjobskills.Tech_Skills.job_skills`
GROUP BY skill
ORDER BY mentions DESC
LIMIT 20;
