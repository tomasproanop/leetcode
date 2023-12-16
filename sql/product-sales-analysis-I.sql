select p.product_name, s.year, s.price
from sales s, product p
where p.product_id = s.product_id
order by null;

# alternative

select product_name, year, price
from sales 
inner join product
on product.product_id = sales.product_id
order by null;
