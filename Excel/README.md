# Excel Analysis – AI Hiring Fairness

## Overview

This Excel analysis examines hiring patterns and potential disparities across different candidate groups using Pivot Tables and hiring fairness metrics.

## Analysis Performed

- Gender Hiring Fairness
- Education Level Hiring Fairness
- Age Group Hiring Fairness
- Experience Level Hiring Fairness
- Distance-Based Hiring Fairness

## Pivot Table Analysis

### 1. Gender Hiring Fairness


<img width="604" height="131" alt="image" src="https://github.com/user-attachments/assets/5f57c1f9-af5f-4d83-b5f4-ff5ea0740672" />
<img width="366" height="121" alt="image" src="https://github.com/user-attachments/assets/5ac5dac1-adb6-4ce1-862a-e34ad12c5ecf" />


## Interpretation: 
Gender selection rates are highly similar, with a difference of only **0.21 percentage points**. The disparate impact ratio of **0.993** indicates that the selection rates between the two gender groups are nearly equal in this dataset.


### 2. Education Level Hiring Fairness

<img width="607" height="173" alt="image" src="https://github.com/user-attachments/assets/9f3ae503-4d8f-40c8-b2b6-176ec2a5053a" />
<img width="361" height="158" alt="image" src="https://github.com/user-attachments/assets/75a909fb-b913-4ce8-ad6e-df52473850ac" />

## Interpretation: 
Selection rates vary substantially across education levels, ranging from **22.80% for Level 1 to 56.62% for Level 4**. The **33.82 percentage-point difference** indicates a notable disparity in hiring outcomes across education groups. The disparate-impact ratio of **0.403** for Level 1 relative to Level 4 indicates a substantial difference in selection rates that warrants further investigation.


### 3. Age Group Hiring Fairness

<img width="602" height="214" alt="image" src="https://github.com/user-attachments/assets/e09bfae3-e58a-4f4b-82b8-93314f674026" />
<img width="367" height="197" alt="image" src="https://github.com/user-attachments/assets/f82af739-4918-40ee-9934-5e3564527398" />

## Interpretation: 
Selection rates vary across age groups, ranging from **27.39% for candidates aged 36–40 to 37.20% for candidates aged 26–30**. The **9.81 percentage-point difference** indicates some variation in hiring outcomes across age groups. The disparate-impact ratio of **0.736** for the 36–40 group relative to the 26–30 group indicates a disparity that warrants further investigation.

### 4. Experience Level Hiring Fairness

<img width="613" height="164" alt="image" src="https://github.com/user-attachments/assets/f4999257-2b6a-4cc6-8fa9-659b3783fa0e" />
<img width="376" height="147" alt="image" src="https://github.com/user-attachments/assets/3bd5482f-8dab-4c1c-9609-a1a8fc813205" />

## Interpretation:
Selection rates increase across experience levels, from **19.26% for Entry Level candidates to 36.22% for Senior Level candidates**. The **16.96 percentage-point difference** indicates substantial variation in hiring outcomes across experience groups. The disparate-impact ratio of **0.532** for Entry Level relative to Senior Level indicates a notable disparity that warrants further investigation, while recognizing that experience may be a legitimate job-related hiring factor.


### 5. Distance-Based Hiring Fairness

<img width="605" height="219" alt="image" src="https://github.com/user-attachments/assets/534115ae-5ad1-4ace-9ac9-b808a4a1135f" />
<img width="378" height="200" alt="image" src="https://github.com/user-attachments/assets/1dbef117-c36e-45f4-8c68-598fbc20ca7d" />

## Interpretation:
Selection rates vary across distance bands, ranging from **27.30% for candidates located 40–50 units from the company to 35.29% for candidates in the 50+ band**. The **7.99 percentage-point difference** indicates some variation in hiring outcomes across distance groups. The disparate-impact ratio of **0.774** for the 40–50 group relative to the 50+ group indicates a moderate disparity that warrants further investigation.




## Tools Used

- Microsoft Excel
- Pivot Tables
- Selection Rate Analysis
- Disparate Impact Analysis
