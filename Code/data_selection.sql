select *
  from product
 where category_id = (
   select id
     from category
    where name = 'Elektronik'
);
select p.name,
       c.name as category_name
  from product p
 inner join category c
on p.category_id = c.id;

select u.first_name,
       a.full_address,
       o.total_price
  from orders o
  join app_user u
on o.user_id = u.id
  join address a
on o.address_id = a.id;

select category_id,
       count(*) as urun_sayisi
  from product
 group by category_id;

select *
  from orders
 where trunc(order_date) = trunc(sysdate);

select first_name,
       upper(first_name),
       lower(first_name)
  from app_user;

update app_user
   set
   first_name = 'Mehmet'
 where id = 1;

alter table app_user add (
   city    varchar2(100),
   country varchar2(100)
);
