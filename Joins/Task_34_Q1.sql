-- Find the top 10 countries with maximum A and D Values

SELECT * FROM (SELECT country,A FROM cx.country_ab
ORDER BY A DESC LIMIT 10 ) A
LEFT JOIN  
(SELECT country,D FROM cx.country_cd
ORDER BY D DESC LIMIT 10) B
ON A.country =B.country
