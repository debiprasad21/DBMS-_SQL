-- Give me last 7 days change of views
SELECT *,LAG(views,7) OVER(),
(views-LAG(views,7) OVER())/LAG(views,7) OVER()*100  AS 'weekly % change'
 FROM YOUTUBE