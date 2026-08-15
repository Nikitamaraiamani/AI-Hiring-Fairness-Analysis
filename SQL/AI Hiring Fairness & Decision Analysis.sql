CREATE DATABASE ai_hiring_fairness;
USE ai_hiring_fairness;
CREATE TABLE hiring_data (
    Age INT,
    Gender INT,
    Education_Level INT,
    Experience_Years INT,
    Previous_Companies INT,
    Distance_From_Company DECIMAL(10,8),
    Interview_Score INT,
    Skill_Score INT,
    Personality_Score INT,
    Recruitment_Strategy INT,
    Hiring_Decision INT
);
SHOW TABLES;
DESCRIBE hiring_data;
SHOW TABLES;

-- 1 Total Applicants 
SELECT COUNT(*) AS total_applicants
FROM hiring_data;

-- Hiring Decision Distribution
--  2 How many candidates were hired and how many were not hired?
SELECT CASE 
WHEN Hiring_Decision = 1 THEN 'Hired'
ELSE 'Not Hired'
END AS Hiring_Status,
COUNT(*) AS Candidate_Count
FROM hiring_data
GROUP BY Hiring_Decision
ORDER BY Hiring_Decision; 

-- Overall Hiring Rate 
-- 3 What percentage of applicants were hired? 
SELECT COUNT(*) AS total_applicants,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data;

-- Hiring Rate by Gender
-- 4 What is the hiring rate for each gender?   
SELECT CASE
WHEN Gender = 1 THEN 'Male'
ELSE 'Female'
END AS Gender,
COUNT(*) AS total_candidates,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data
GROUP BY Gender;

-- Hiring Rate by Education Level
-- 5 How does the hiring rate vary across different education levels? 
SELECT CASE
WHEN Education_Level = 1 THEN 'High School'
WHEN Education_Level = 2 THEN 'Bachelor''s'
WHEN Education_Level = 3 THEN 'Master''s'
WHEN Education_Level = 4 THEN 'PhD'
END AS Education_Level_Name,
COUNT(*) AS total_candidates,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data
GROUP BY Education_Level
ORDER BY Education_Level;

-- Hiring Rate by Experience Level
-- 6 How does hiring rate vary by candidates' experience level?
SELECT CASE 
WHEN Experience_Years <= 2 THEN 'Entry Level'
WHEN Experience_Years <= 7 THEN 'Mid Level'
ELSE 'Senior Level'
END AS experience_level,
COUNT(*) AS total_candidates,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data
GROUP BY experience_level
ORDER BY hiring_rate;  

-- Average Interview Score by Hiring Status
-- 7 Do hired candidates have higher average interview scores than candidates who were not hired?
SELECT CASE
WHEN Hiring_Decision = 1 THEN 'Hired'
ELSE 'Not Hired'
END AS Hiring_Status,
ROUND(AVG(Interview_Score), 2) AS avg_interview_score
FROM hiring_data
GROUP BY Hiring_Decision;  

-- Average Skill Score by Hiring Status
-- 8 Do hired candidates have higher average skill scores than candidates who were not hired?
SELECT CASE
WHEN Hiring_Decision = 1 THEN 'Hired'
ELSE 'Not Hired'
END AS Hiring_Status,
ROUND(AVG(Skill_Score), 2) AS avg_skill_score
FROM hiring_data
GROUP BY Hiring_Decision;  


-- Average Overall Assessment Score
-- 9 Do hired candidates have a higher average overall assessment score than non-hired candidates?
SELECT CASE
WHEN Hiring_Decision = 1 THEN 'Hired'
ELSE 'Not Hired'
END AS Hiring_Status,
ROUND((AVG(Interview_Score) + AVG(Skill_Score) + AVG(Personality_Score)) / 3,2) AS avg_overall_score
FROM hiring_data
GROUP BY Hiring_Decision;  

-- Hiring Rate by Age Group
-- 10 How does the hiring rate vary across different age groups?
SELECT CASE
WHEN Age BETWEEN 20 AND 25 THEN '20-25'
WHEN Age BETWEEN 26 AND 30 THEN '26-30'
WHEN Age BETWEEN 31 AND 35 THEN '31-35'
WHEN Age BETWEEN 36 AND 40 THEN '36-40'
WHEN Age BETWEEN 41 AND 45 THEN '41-45'
ELSE '46-50'
END AS Age_Group,
COUNT(*) AS total_candidates,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data
GROUP BY Age_Group
ORDER BY Age_Group;  

-- Hiring Rate by Previous Companies
-- 11 Does the number of previous companies affect the hiring rate?
SELECT Previous_Companies,
COUNT(*) AS total_candidates,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data
GROUP BY Previous_Companies
ORDER BY Previous_Companies;  

-- Hiring Rate by Distance
-- 12 Does distance from the company affect the hiring rate?
SELECT CASE
WHEN Distance_From_Company <= 10 THEN '0-10'
WHEN Distance_From_Company <= 20 THEN '10-20'
WHEN Distance_From_Company <= 30 THEN '20-30'
WHEN Distance_From_Company <= 40 THEN '30-40'
WHEN Distance_From_Company <= 50 THEN '40-50'
ELSE '50+'
END AS Distance_Band,
COUNT(*) AS total_candidates,
SUM(Hiring_Decision) AS hired,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS hiring_rate
FROM hiring_data
GROUP BY Distance_Band;  

-- Recruitment Strategies with More Than 30 Hires
-- 13 Which recruitment strategies have more than 30 hired candidates?
SELECT CASE
WHEN Recruitment_Strategy = 1 THEN 'Online Application'
WHEN Recruitment_Strategy = 2 THEN 'Employee Referral'
ELSE 'Campus Recruitment'
END AS Recruitment_Method,
SUM(Hiring_Decision) AS hired
FROM hiring_data
GROUP BY Recruitment_Strategy
HAVING SUM(Hiring_Decision) > 30;

--  Selection Rate by Gender 
-- 14 What is the selection rate for each gender?
SELECT CASE
WHEN Gender = 1 THEN 'Male'
ELSE 'Female'
END AS Gender,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS selection_rate
FROM hiring_data
GROUP BY Gender;


-- Selection Rate by Education Level
-- 15 What is the selection rate for each education level?  
SELECT CASE
WHEN Education_Level = 1 THEN 'High School'
WHEN Education_Level = 2 THEN 'Bachelor''s'
WHEN Education_Level = 3 THEN 'Master''s'
ELSE 'PhD'
END AS Education_Level,
ROUND(SUM(Hiring_Decision) * 100.0 / COUNT(*), 2) AS selection_rate
FROM hiring_data
GROUP BY Education_Level
ORDER BY selection_rate;





