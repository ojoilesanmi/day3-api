create schema corent;
use corent;

create table product (
product_id integer not null,
product_name varchar(50) not null,
price double not null,
product_description varchar(5000) not null,
constraint product_pk primary key (product_id)
);

create table users (
user_name varchar(50) not null,
first_name varchar(32) not null,
last_name varchar(32) not null,
email varchar(50) not null,
user_password varchar(15) not null,
constraint users_pk primary key(user_name, email)
);

create table rent (
product_id integer not null,
product_name varchar(50) not null,
user_name varchar(50) not null,
rent_start date not null,
rent_expire date not null,
price double not null,
constraint rent_pk primary key (product_id, user_name),
constraint rent_fk1 foreign key(product_id)
references product(product_id),
constraint rent_fk2 foreign key(user_name)
references users(user_name)
);
