-- find delivery partner compensation using formula (# deliveries *100 + 1000* avg rating)

SELECT t1.partner_name, (count(*)*100 + 1000 * AVG(t2.delivery_rating)) AS 'compensation' FROM delivery_partner t1
join orders t2
on t1.partner_id=t2.partner_id
GROUP BY t1.partner_id ORDER BY compensation DESC