create table sales
(
	purshase_number int not null primary key auto_increment,
    date_of_purshase date not null,
    cutomer_id int,
    item_code varchar(10) not null
);
