-- SELECT

-- select all staff order by first_name,
select first_name from  staff

-- select all payment order by amount desc
select * from  payment order by amount desc

-- select all addresses order by postal_code asc
select * from  address order by postal_code desc





-- JOIN

-- Select all customers ad join their addresses.

select first_name, last_name, address from  customer join address using(address_id)
-- Select all stores and join their addresses.
select * from  store join address using(address_id) 
-- Select all stores and join staff using manager_staff_id
select * from  staff  join store using (store_id)

-- Select all addresses join cities
select address, city from  address  join city using (city_id)
 


-- GROUP BY

-- find total payment by date
select payment_date, sum(amount) from payment group by payment_date
-- find average payment
select staff_id, avg(amount) as average from payment group by staff_id
-- sum all payments
select staff_id, count(payment_id) as average from payment group by staff_id