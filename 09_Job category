CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.JobCategory` AS
SELECT
  JobID,
  Title,
  CASE
    WHEN LOWER(Title) LIKE '%data%' THEN 'Data'
    WHEN LOWER(Title) LIKE '%ai%' OR LOWER(Title) LIKE '%ml%' OR LOWER(Title) LIKE '%machine learning%' OR LOWER(Title) LIKE '%prompt%' THEN 'AI / Machine Learning'
    WHEN LOWER(Title) LIKE '%cloud%' THEN 'Cloud'
    WHEN LOWER(Title) LIKE '%security%' OR LOWER(Title) LIKE '%cyber%' OR LOWER(Title) LIKE '%infosec%' THEN 'Security'
    WHEN LOWER(Title) LIKE '%devops%' OR LOWER(Title) LIKE '%site reliability%' OR LOWER(Title) LIKE '%infrastructure%' THEN 'DevOps / Infrastructure'
    WHEN LOWER(Title) LIKE '%frontend%' OR LOWER(Title) LIKE '%backend%' OR LOWER(Title) LIKE '%full stack%' OR LOWER(Title) LIKE '%developer%' OR LOWER(Title) LIKE '%engineer%' THEN 'Software Engineering'
    WHEN LOWER(Title) LIKE '%designer%' OR LOWER(Title) LIKE '%ux%' OR LOWER(Title) LIKE '%ui%' THEN 'Design / UX'
    WHEN LOWER(Title) LIKE '%marketing%' OR LOWER(Title) LIKE '%seo%' OR LOWER(Title) LIKE '%content%' OR LOWER(Title) LIKE '%copywriter%' THEN 'Marketing / Content'
    WHEN LOWER(Title) LIKE '%analyst%' OR LOWER(Title) LIKE '%bi%' OR LOWER(Title) LIKE '%business%' OR LOWER(Title) LIKE '%operations%' THEN 'Business / Analysis'
    ELSE 'Other / Emerging'
  END AS Category
FROM `techjobskills.Tech_Skills.jobs_ready`;
