USE world_layoffs;

# Exploratory Data Analysis
-- In this phase of the Data cleaning, we will explore and look how data is looking and perform cleaning.


SELECT * 
FROM layoffs_staging2;


-- Find the maximum values for total layoffs and percentage of layoffs
-- This helps identify outliers or extreme cases in the dataset

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

-- Find companies with 100% layoffs and sort them by the amount of funds raised
-- This identifies companies most severely affected despite their financial backing
SELECt *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;



-- Find companies with 100% layoffs and sort them by the amount of funds raised
-- This identifies companies most severely affected despite their financial backing
SELECt company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;


-- Aggregate total layoffs by industry and sort in descending order
-- This provides insights into which industries were hit hardest
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;


-- Aggregate total layoffs by country and sort in descending order
-- This shows which countries experienced the most layoffs
SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;



-- Determine the time range of the dataset by finding the earliest and latest dates
-- This establishes the historical scope of the analysis
SELECT min(`date`), MAX(`date`)
FROM layoffs_staging2;











