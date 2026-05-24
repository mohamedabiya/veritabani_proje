-- 3 müşteri + 3 satıcı = 6 kullanıcı
insert into app_user (
   first_name,
   last_name,
   email,
   password_hash,
   phone_number
) values ( 'Ahmet',
           'Demir',
           'ahmet@mail.com',
           '123',
           '05550000001' );

insert into app_user (
   first_name,
   last_name,
   email,
   password_hash,
   phone_number
) values ( 'Ayşe',
           'Kaya',
           'ayse@mail.com',
           '123',
           '05550000002' );

insert into app_user (
   first_name,
   last_name,
   email,
   password_hash,
   phone_number
) values ( 'Mehmet',
           'Yıldız',
           'mehmet@mail.com',
           '123',
           '05550000003' );

insert into app_user (
   first_name,
   last_name,
   email,
   password_hash,
   phone_number
) values ( 'Can',
           'Aydın',
           'can@mail.com',
           '123',
           '05550000004' );

insert into app_user (
   first_name,
   last_name,
   email,
   password_hash,
   phone_number
) values ( 'Zeynep',
           'Şahin',
           'zeynep@mail.com',
           '123',
           '05550000005' );

insert into app_user (
   first_name,
   last_name,
   email,
   password_hash,
   phone_number
) values ( 'Ali',
           'Koç',
           'ali@mail.com',
           '123',
           '05550000006' );
insert into customer ( id ) values ( 1 );
insert into customer ( id ) values ( 2 );
insert into customer ( id ) values ( 3 );

insert into sales (
   id,
   store_name
) values ( 4,
           'Tech Store' );

insert into sales (
   id,
   store_name
) values ( 5,
           'Market Plus' );

insert into sales (
   id,
   store_name
) values ( 6,
           'Digital Shop' );


insert into category ( name ) values ( 'Elektronik' );
insert into category ( name ) values ( 'Giyim' );
insert into category ( name ) values ( 'Kitap' );

insert into address (
   user_id,
   full_address
) values ( 1,
           'Karabük Merkez Mahallesi No:1' );

insert into address (
   user_id,
   full_address
) values ( 2,
           'Ankara Çankaya Sokak No:5' );

insert into address (
   user_id,
   full_address
) values ( 3,
           'İstanbul Kadıköy Cadde No:10' );

insert into product (
   user_id,
   category_id,
   name,
   price,
   stock
) values ( 4,
           1,
           'Laptop',
           15000,
           5 );

insert into product (
   user_id,
   category_id,
   name,
   price,
   stock
) values ( 5,
           2,
           'T-Shirt',
           300,
           50 );

insert into product (
   user_id,
   category_id,
   name,
   price,
   stock
) values ( 6,
           3,
           'Roman Kitap',
           120,
           20 );

-- picture
insert into picture (
   product_id,
   image_path
) values ( 1,
           '/img/laptop.png' );

insert into picture (
   product_id,
   image_path
) values ( 2,
           '/img/tshirt.png' );

insert into picture (
   product_id,
   image_path
) values ( 3,
           '/img/book.png' );

insert into cart ( user_id ) values ( 1 );
insert into cart ( user_id ) values ( 2 );
insert into cart ( user_id ) values ( 3 );

insert into cart_item (
   cart_id,
   product_id,
   quantity
) values ( 1,
           1,
           1 );

insert into cart_item (
   cart_id,
   product_id,
   quantity
) values ( 2,
           2,
           2 );

insert into cart_item (
   cart_id,
   product_id,
   quantity
) values ( 3,
           3,
           1 );

insert into orders (
   user_id,
   address_id,
   total_price,
   order_status
) values ( 1,
           1,
           15000,
           'pending' );

insert into orders (
   user_id,
   address_id,
   total_price,
   order_status
) values ( 2,
           2,
           300,
           'processing' );

insert into orders (
   user_id,
   address_id,
   total_price,
   order_status
) values ( 3,
           3,
           120,
           'shipped' );

insert into order_item (
   order_id,
   product_id,
   price,
   quantity
) values ( 1,
           1,
           15000,
           1 );

insert into order_item (
   order_id,
   product_id,
   price,
   quantity
) values ( 2,
           2,
           300,
           2 );

insert into order_item (
   order_id,
   product_id,
   price,
   quantity
) values ( 3,
           3,
           120,
           1 );

insert into payment (
   order_id,
   payment_method,
   payment_status
) values ( 1,
           'card',
           'completed' );

insert into payment (
   order_id,
   payment_method,
   payment_status
) values ( 2,
           'cash_on_delivery',
           'pending' );

insert into payment_by_card (
   id,
   card_number,
   cvv,
   end_date
) values ( 1,
           '1234567812345678',
           '123',
           date '2027-12-31' );

insert into cash_on_delivery (
   id,
   verify_code
) values ( 2,
           'XYZ789' );