# Exploratory Data Analysis (EDA) Project: Layoffs Dataset

This repository contains SQL scripts and documentation for conducting Exploratory Data Analysis (EDA) on the `world_layoffs` dataset. The project aims to analyze key trends and patterns, providing insights into layoffs across industries, companies, and countries.

---

## Overview

The EDA process involves:
- Summarizing and visualizing data distributions.
- Identifying trends by grouping and aggregating metrics.
- Discovering relationships between variables for further exploration.

This project builds on the cleaned dataset from the Data Cleaning phase and focuses on extracting actionable insights.

---

## Features

### 1. Data Exploration
Key statistics and records were examined to understand the dataset’s structure and identify significant patterns.

**Snippet:**

SELECT *
FROM layoffs_staging2;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

- **Purpose**: Examine the maximum values for layoffs and identify outliers.

---

### 2. High-Impact Companies
Analyzed companies with the highest layoffs.

**Snippet:**

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

- **Purpose**: Identify organizations contributing the most to layoffs.

---

### 3. Industry-Wise Layoff Trends
Grouped data by industry to understand sectoral impacts.

**Snippet:**

SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;

- **Purpose**: Highlight industries facing the most significant layoffs.

---

### 4. Geographic Analysis
Summarized layoffs by country.

**Snippet:**

SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

- **Purpose**: Assess the geographic distribution of layoffs.

---

### 5. Time-Based Analysis
Analyzed the dataset’s timeline for the earliest and latest layoffs.

**Snippet:**

SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

- **Purpose**: Determine the range of dates covered in the dataset.

---

## Tools and Techniques
- **SQL**: Utilized for querying and aggregating data.
- **Grouping and Aggregation**: Key operations for summarizing data by categories.
- **Order By**: For sorting metrics in descending order to identify key trends.

---

## Results
- Identified companies with the largest layoffs, highlighting their significant impact.
- Pinpointed industries with the highest layoffs to uncover sectoral trends.
- Discovered countries most affected by layoffs for geographic analysis.
- Established the timeline of layoffs for historical context.

---

## Key Learnings
- EDA highlights crucial data trends and outliers, laying the foundation for deeper analysis.
- Grouping and aggregation simplify identifying high-impact factors.
- Combining data cleaning with EDA maximizes dataset usability.

---

## Next Steps
1. Visualize findings using dashboards or charts to enhance insights.
2. Perform deeper statistical analysis to identify correlations and causal factors.
3. Explore predictive modeling to forecast layoff trends.

---

### How to Use
1. Clone this repository.
2. Execute the SQL scripts in your preferred database environment.
3. Analyze the query results to draw insights.

---

### Contact
For questions or feedback, feel free to reach out!

