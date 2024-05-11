--  a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans

SELECT country_origin, SUM(fans) AS total_fans
FROM your_table_name
GROUP BY country_origin
ORDER BY total_fans DESC;