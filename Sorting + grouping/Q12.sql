-- which brand makes the smallest screen smartphones
SELECT brand_name , AVG(screen_size) AS 'avgscreensize'FROM campusx.smartphones GROUP BY brand_name ORDER BY avgscreensize ASC LIMIT 1