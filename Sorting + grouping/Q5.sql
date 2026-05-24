-- fin the name and ratings of worst rated apple phones

SELECT model, rating FROM campusx.smartphones WHERE brand_name='Apple' ORDER BY rating ASC LIMIT 1