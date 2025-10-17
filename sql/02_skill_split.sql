-- ===========================================
-- 02_skill_split.sql
-- Purpose: Split combined skill string into one skill per row
-- ===========================================

CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.job_skills` AS
SELECT
  JobID,
  TRIM(skill) AS skill
FROM `techjobskills.Tech_Skills.jobs_final`,
UNNEST(SPLIT(REGEXP_REPLACE(SkillsCombined, r'[;,]+', ';'), ';')) AS skill
WHERE TRIM(skill) <> '';

-- Remove trailing parentheses or extra characters
UPDATE `techjobskills.Tech_Skills.job_skills`
SET skill = REGEXP_REPLACE(skill, r'\)$', '')
WHERE skill LIKE '%)';
