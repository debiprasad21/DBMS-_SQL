-- Find avg internal memory cappacity of smartphones that have a refresh rate of 120 Hz or higher and a frond facing camera >=20mp

SELECT AVG(internal_memory)
FROM campusx.smartphones
WHERE refresh_rate>=120 AND primary_camera_front>=20