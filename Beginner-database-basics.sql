CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 100 ) not NULL,
  age int,
  height int,
  city varchar ( 100 ),
  favorite_color varchar ( 50 )
  );

  insert into person (name, age, height, city, favorite_color)
  values
  ('Mike', 15, 172, 'Centerville', 'Blue'),
  ('Joe', 115, 195, 'Bountiful', 'Black'),
  ('Fred', 40, 150, 'Ogden', 'Orange'),
  ('Bob', 50, 190, 'Ogden', 'Blue'),
  ('George', 18, 200, 'Lehi', 'Orange');

  select *
  from person
  order by height desc;

  select *
  from person
  order by height asc;

  select *
  from person
  order by age desc;

  select *
  from person
  where age > 20;

  select *
  from person
  where age = 18;

  select *
  from person
  where age < 20 or age > 30;


  select *
  from person
  where age != 27;

  select *
  from person
  where favorite_color != 'red';

  select *
  from person
  where lower(favorite_color) != 'red' and lower(favorite_color) != 'blue'  ;
    
  select *
  from person
  where lower(favorite_color) in ('orange', 'green');

  select *
  from person
  where lower(favorite_color) in ('orange', 'green', 'blue');
  
  select *
  from person
  where lower(favorite_color) in ('yellow', 'purple');

/*Table Orders*/
  CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id int,
    product_name varchar(200),
    product_price decimal,
    quantity int
  );
    
  insert into orders(person_id, product_name, product_price, quantity)
  values
  (1, 'Watermelon', 3, 1),
  (4, 'Apple', 1.25, 8),
  (4, 'Grape (package)', 4.50, 2),
  (5, 'Onion', 0.89, 2),
  (5, 'Celery', 1, 1);

  select *
  from orders;

  select sum(quantity)
  from orders;

  select sum(quantity * product_price)
  from orders;
  
  select sum(quantity * product_price)
  from orders
  where person_id = 5;

/*Table artist*/
insert into artist (name)
values
('They Might Be Giants'),
('CHVRCHES'),
('Major Lazer');

select *
from artist
order by name desc
limit 10;

select *
from artist
order by name asc
limit 5;

select *
from artist
where name ILIKE 'black%';

select *
from artist
where name ILIKE 'black%';

/*Table employee*/
select first_name, last_name
from employee
where lower(city) = 'calgary';

select birth_date
from employee
order by birth_date desc
limit 1;
  
select birth_date
from employee
order by birth_date asc
limit 1;

select *
from employee
where reports_to = (select employee_id from employee where last_name = 'Edwards' and first_name = 'Nancy');

select count(*)
from employee
where city = 'Lethbridge';

/*table invoice*/
select count(*)
from invoice
where billing_country = 'USA';

select total
from invoice
order by total desc
limit 1;

select total
from invoice
order by total asc
limit 1;

select *
from invoice
where total > 5;

select count(*)
from invoice
where total < 5;

select count(*)
from invoice
where total < 5;

select avg(total)
from invoice;

select sum(total)
from invoice;

