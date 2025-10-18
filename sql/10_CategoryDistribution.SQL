SELECT
  Category,
  COUNT(*) AS total_jobs,
  COUNT(DISTINCT LOWER(TRIM(Title))) AS unique_titles
FROM `techjobskills.Tech_Skills.JobCategory`
GROUP BY Category
ORDER BY total_jobs DESC;
