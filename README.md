# AI Hiring Fairness & Decision Analysis

## 📌 Project Overview

This project analyzes hiring decisions and candidate assessment data to identify hiring patterns and potential disparities across different candidate groups.

The project combines **Excel, Python, SQL, and Power BI** to perform data analysis and present insights through structured analysis and interactive visualizations.

---

## 🎯 Project Objectives

- Analyze overall hiring decisions
- Examine hiring outcomes across different candidate groups
- Analyze candidate assessment scores
- Compare hiring rates across demographic and candidate-related factors
- Identify potential disparities in hiring outcomes
- Present findings through interactive dashboards and data analysis

---

## 🗂️ Project Structure

### 📁 Dataset

Contains the dataset used for the analysis.

**Includes:**
- Candidate information
- Assessment scores
- Recruitment information
- Hiring decisions

---

### 📊 Excel Analysis

The Excel analysis uses **Pivot Tables** to examine:

- Gender vs Hiring Decision
- Education Level vs Hiring Decision
- Experience Level vs Hiring Decision
- Age Group vs Hiring Decision
- Recruitment Strategy vs Hiring Decision
- Candidate Assessment Scores
- Assessment Score Bands
- Distance-Based Hiring Outcomes
- Hiring Fairness Analysis

Fairness analysis includes:

- Selection Rate
- Selection Rate Difference
- Disparate Impact Ratio

---

### 🐍 Python Analysis

The Python analysis uses a **Jupyter Notebook** to explore hiring decisions and candidate characteristics.

The analysis includes:

- Hiring decision distribution
- Hiring rates by gender
- Hiring rates by education level
- Hiring rates by experience level
- Hiring rates by age group
- Candidate assessment score analysis
- Data visualizations

**Libraries used:**
- Pandas
- Matplotlib

---

### 🗄️ SQL Analysis

SQL is used to analyze the hiring dataset and identify patterns in:

- Candidate information
- Hiring outcomes
- Assessment scores
- Recruitment-related factors

**Tools used:**
- MySQL
- MySQL Workbench

---

### 📈 Power BI Dashboard

Power BI is used to create an interactive dashboard for analyzing hiring patterns and potential disparities across candidate groups.

The dashboard presents hiring outcomes and key hiring-related insights through interactive visualizations.

---

## ⚖️ Key Fairness Findings

### Gender

- Gender 0 Selection Rate: **31.10%**
- Gender 1 Selection Rate: **30.89%**
- Selection Rate Difference: **0.21 percentage points**
- Disparate Impact Ratio: **0.993**

The selection rates between the two gender groups are nearly equal in this dataset.

### Education Level

- Level 1 Selection Rate: **22.80%**
- Level 4 Selection Rate: **56.62%**
- Selection Rate Difference: **33.82 percentage points**
- Disparate Impact Ratio: **0.403**

Selection rates vary substantially across education levels.

### Experience Level

- Entry Level: **19.26%**
- Mid Level: **29.10%**
- Senior Level: **36.22%**
- Selection Rate Difference: **16.96 percentage points**
- Disparate Impact Ratio: **0.532**

Selection rates increase across experience levels.

### Age Group

- Lowest Selection Rate: **27.39%**
- Highest Selection Rate: **37.20%**
- Selection Rate Difference: **9.81 percentage points**
- Disparate Impact Ratio: **0.736**

Selection rates show variation across age groups.

### Distance

- Lowest Selection Rate: **27.30%**
- Highest Selection Rate: **35.29%**
- Selection Rate Difference: **7.99 percentage points**
- Disparate Impact Ratio: **0.774**

Selection rates vary across distance groups.

---

## 🛠️ Tools & Technologies

- Microsoft Excel
- Python
- Pandas
- Matplotlib
- MySQL
- MySQL Workbench
- Power BI
- Jupyter Notebook

---

## 📌 Note

The fairness analysis identifies differences in selection rates within this dataset. These results indicate areas that may warrant further investigation and should not by themselves be interpreted as proof of discriminatory hiring practices.
