-- update blank values to NULL
UPDATE orders
SET restaurant_rating = NULL
WHERE restaurant_rating = '';