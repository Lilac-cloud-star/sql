USE world_layoffs;

SELECT *
FROM layoffs
where country LIKE 'T%'
;

-- 1.REMOVE DUPLICATES
-- 2.STANDARDIZE THE DATA
-- 3.NULL VALUES OR BLANK VALUES
-- 4.REMOVE ANY COLUMNS

CREATE TABLE layoffs_staging
LIKE layoffs;

SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
SELECT *
FROM layoffs;

