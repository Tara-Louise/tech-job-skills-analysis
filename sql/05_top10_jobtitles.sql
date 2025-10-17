-- ===========================================
-- 05_top10_jobtitles.sql
-- Purpose: Identify top 10 job titles in tech job dataset
-- ===========================================

CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.JobTitle_Top10` AS
SELECT
  Title,
  COUNT(*) AS postings
FROM `techjobskills.Tech_Skills.jobs_ready`
GROUP BY Title
ORDER BY postings DESC
LIMIT 10;
