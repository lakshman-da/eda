create database assin;
use assin;

select * from quote;
-- Find the number of quotes by each author. 

-- SELECT 
--     author, 
--     COUNT(*) AS quote_count
-- FROM 
--     quote
-- GROUP BY 
--     author
-- ORDER BY 
--     quote_count DESC;

-- WITH RECURSIVE tag_split AS (
--     SELECT 
--         SUBSTRING_INDEX(SUBSTRING_INDEX(tags, ',', 1), ',', -1) AS tag,
--         SUBSTRING(tags, LENGTH(SUBSTRING_INDEX(tags, ',', 1)) + 2) AS remaining_tags
--     FROM 
--         quote
--     WHERE 
--         tags IS NOT NULL AND tags != ''
--     
--     UNION ALL
--     
--     SELECT 
--         SUBSTRING_INDEX(SUBSTRING_INDEX(remaining_tags, ',', 1), ',', -1) AS tag,
--         SUBSTRING(remaining_tags, LENGTH(SUBSTRING_INDEX(remaining_tags, ',', 1)) + 2) AS remaining_tags
--     FROM 
--         tag_split
--     WHERE 
--         remaining_tags != ''
-- )

-- SELECT 
--     TRIM(tag) AS tag,
--     COUNT(*) AS tag_count
-- FROM 
-- tag_split
-- WHERE 
-- TRIM(tag) != ''
--  GROUP BY 
-- TRIM(tag)
-- ORDER BY 
-- tag_count DESC
--  LIMIT 5; 



-- SELECT 
--     author, 
--     COUNT(*) AS quote_count
-- FROM 
--     quote
-- GROUP BY 
--     author
-- HAVING 
--     COUNT(*) > 5
-- ORDER BY 
--     quote_count DESC;
SELECT 
    author,
    quote,
    LENGTH(quote) AS quote_length
FROM 
    quote
ORDER BY 
    quote_length DESC
LIMIT 1;


    