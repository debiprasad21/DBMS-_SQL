-- sort phone on ppi basis in decresing order
SELECT model,
ROUND(SQRT((resolution_width*resolution_width + resolution_height*resolution_height)/screen_size)) AS 'ppi'
 FROM campusx.smartphones 
 ORDER BY ppi ASC