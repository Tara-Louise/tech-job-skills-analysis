-- ===========================================
-- 06_softskills_top20.sql
-- Purpose: Identify top 20 soft skills from dataset
-- ===========================================

CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.Softskills` AS
SELECT soft_skill, COUNT(*) AS mentions
FROM (
  SELECT TRIM(token) AS soft_skill
  FROM `techjobskills.Tech_Skills.jobs_with_split_skills_v3`,
  UNNEST(SPLIT(SoftSkills_v3, ';')) AS token
  WHERE TRIM(token) <> ''
)
GROUP BY soft_skill
ORDER BY mentions DESC
LIMIT 20;
