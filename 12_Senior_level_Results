SELECT Level, COUNT(*) AS total_jobs
FROM `techjobskills.Tech_Skills.JobLevel`
GROUP BY Level
ORDER BY CASE Level
  WHEN 'Entry-Level' THEN 1
  WHEN 'Junior' THEN 2
  WHEN 'Mid-Level' THEN 3
  WHEN 'Senior' THEN 4
  WHEN 'Lead/Principal' THEN 5
  WHEN 'Manager/Architect' THEN 6
  ELSE 7
END;
