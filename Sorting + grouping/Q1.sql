-- Find top 5 samsung phones with biggest screensize
SELECT model,screen_size FROM campusx.smartphones WHERE brand_name='samsung' ORDER BY screen_size DESC LIMIT 5