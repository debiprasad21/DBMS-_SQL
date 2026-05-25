-- Problem 4: Group by on exercise frequency and smoking status and show average deep sleep time, average light sleep time and avg rem sleep time.
-- Note the differences in deep sleep time for smoking and non smoking status

SELECT `Exercise frequency`,`smoking status`,
AVG(`Sleep duration`*(`Deep sleep percentage`/100)) AS 'avgdeepsleeptime',
AVG(`Sleep duration`*(`Light sleep percentage`/100)) AS 'avgdLightsleeptime',
AVG(`Sleep duration`*(`REM sleep percentage`/100)) AS 'avgREMsleeptime'
 FROM campusx.sleep_efficiency GROUP BY `Exercise frequency`, `Smoking status`
 ORDER BY avgdeepsleeptime DESC