select count(*) as total_orders from orders;
select count(*) as orders_with_ship_region from orders where ship_region is not null;
select product_name, unit_price from products order by unit_price desc limit 1;
select sum(unit_price * quantity) as total_price from order_details where order_id = 10258;
select product_name, unit_price from products where product_id = (select product_id from order_details where order_id = 10263 order by unit_price limit 1);
select product_name, unit_price from products where unit_price > (select avg(unit_price) from products);
select count(*) as seafood_products from products where category_id = (select category_id from categories where category_name = 'Seafood');
select sum(od.unit_price * od.quantity) as total_value from orders o join order_details od on o.order_id = od.order_id where extract (year from o.order_date) = 1996;
