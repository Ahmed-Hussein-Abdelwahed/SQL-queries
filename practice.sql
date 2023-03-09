create table product(
    product_id varchar(50) not null,
    category varchar(50) not null,
    sub_category varchar(50) null,
    product_name varchar(200) not null,
    primary key (product_id)
);

copy product from 'E:\cources\sql masterclass\[FreeAllCourse.Com] Udemy - SQL Masterclass SQL for Data Analytics\5. Restore and Back-up\Product.csv' delimiter ',' csv header encoding 'windows-1251'; 

select * from product;


create table customer(
    customer_id varchar(50) not null,	
    customer_name varchar(50) not null,	
    segment varchar(50) not null,	
    age int not null check(age > 0),	
    country varchar(50) not null,	
    city varchar(50) not null,
    state_name varchar(50) not null, 
    postal_code varchar(50) not null,
    region varchar(50) not null,
    primary key (customer_id)
);

copy customer from 'E:\cources\sql masterclass\[FreeAllCourse.Com] Udemy - SQL Masterclass SQL for Data Analytics\5. Restore and Back-up\2.2 Customer.csv' delimiter ',' csv header; 

select * from customer;


create table sales(
    order_line int not null, 
    order_id varchar(50) not null,
    order_date date not null,
    ship_date date not null,
    ship_mode varchar(50) not null,
    customer_id varchar(50) not null,
    product_id varchar(50) not null,
    sales float not null,
    quantity float not null,
    discount float not null,
    profit float not null,
    
    foreign key (customer_id) references customer (customer_id),
    foreign key (product_id) references product (product_id)
);

copy sales from 'E:\cources\sql masterclass\[FreeAllCourse.Com] Udemy - SQL Masterclass SQL for Data Analytics\5. Restore and Back-up\2.3 Sales.csv' delimiter ',' csv header;

select * from sales;

