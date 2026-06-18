select sum(case 
	when discount_applied = 'Yes' and promo_code_used = 'Yes' then 1 else 0 
end) as promo_dependent
from company_data
select * from company_data

with segmented_data as(
	select 
    Customer_id,
    CASE 
        WHEN discount_applied = 'Yes' AND previous_purchases <= 15 THEN 'Bargain Hunter'
        WHEN discount_applied= 'Yes' AND previous_purchases BETWEEN 16 AND 30 THEN 'Opportunistic Buyer'
        WHEN discount_applied = 'Yes' AND previous_purchases > 30 THEN 'Promo-Loving Loyal'
        
        WHEN discount_applied = 'No' AND previous_purchases <= 15 THEN 'New Organic Customer'
        WHEN discount_applied = 'No' AND previous_purchases > 15 THEN 'Pure Genuinely Loyal'
        
        ELSE 'Other' 
    END AS Customer_Segment,


	case 
		when purchase_amount_usd <=40 then 'Low'
		when purchase_amount_usd between 41 and 70 then 'Medium'
		else 'High'
	end as Purchase_segment
FROM company_data
)
select customer_segment, purchase_segment, count(*) as total_customers
from segmented_data
group by customer_segment, purchase_segment
order by customer_segment, total_customers desc




with segmented_data as(
	select 
    Customer_id,
	season, 
	gender, 
	category,
	purchase_amount_usd,
    CASE 
        WHEN discount_applied = 'Yes' AND previous_purchases <= 15 THEN 'Bargain Hunter'
        WHEN discount_applied= 'Yes' AND previous_purchases BETWEEN 16 AND 30 THEN 'Opportunistic Buyer'
        WHEN discount_applied = 'Yes' AND previous_purchases > 30 THEN 'Promo-Loving Loyal'
        
        WHEN discount_applied = 'No' AND previous_purchases <= 15 THEN 'New Organic Customer'
        WHEN discount_applied = 'No' AND previous_purchases > 15 THEN 'Pure Genuinely Loyal'
        
        ELSE 'Other' 
    END AS Customer_Segment

from company_data
)
select customer_segment, season ,category, gender, count(*) as total_orders, round(avg(purchase_amount_usd),2) as avg_purchase
from segmented_data
group by customer_segment, season ,category, gender
order by customer_segment, total_orders desc, avg_purchase desc



with segmented_data as(
	select 
    Customer_id,
	location,
    CASE 
        WHEN discount_applied = 'Yes' AND previous_purchases <= 15 THEN 'Bargain Hunter'
        WHEN discount_applied= 'Yes' AND previous_purchases BETWEEN 16 AND 30 THEN 'Opportunistic Buyer'
        WHEN discount_applied = 'Yes' AND previous_purchases > 30 THEN 'Promo-Loving Loyal'
        
        WHEN discount_applied = 'No' AND previous_purchases <= 15 THEN 'New Organic Customer'
        WHEN discount_applied = 'No' AND previous_purchases > 15 THEN 'Pure Genuinely Loyal'
        
        ELSE 'Other' 
    END AS Customer_Segment
FROM company_data
)
select customer_segment, count(*) as total_customers, location
from segmented_data
group by customer_segment, location
order by customer_segment, total_customers desc



select round(avg(age),2) as avg_age, AVG(review_rating) as avg_rating, payment_method, shipping_type
from company_data
where discount_applied = 'No' and previous_purchases>=40
group by payment_method, shipping_type
order by count(*) desc
limit 1 
