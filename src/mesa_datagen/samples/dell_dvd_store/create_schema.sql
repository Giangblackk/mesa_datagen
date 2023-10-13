create table if not exists categories (
	category serial primary key,
	categoryname varchar(50) not null
);

create table if not exists inventory (
	prod_id serial primary key,
	quan_in_stock int not null,
	sales int not null
);

create table if not exists products (
	prod_id serial primary key,
	category int not null,
	title text not null,
	actor text not null,
	price numeric not null,
	special smallint,
	common_prod_id int not null,
	constraint fk_products_categories
		foreign key(category)
			references categories(category),
	constraint fk_products_inventory
		foreign key(prod_id)
			references inventory(prod_id)
);

create table if not exists reorder (
	prod_id int not null,
	date_low date not null,
	quan_low int not null,
	date_reordered date,
	quan_reordered int,
	date_expected date,
	constraint fk_reorder_products
		foreign key(prod_id)
			references products(prod_id)
);

create table if not exists customers (
	customerid serial primary key,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	address1 varchar(50) not null,
	address2 varchar(50),
	city varchar(50) not null,
	state varchar(50),
	zip varchar(9),
	country varchar(50) not null,
	region smallint not null,
	email varchar(50),
	phone varchar(50),
	creditcartype int not null,
	creditcard varchar(50) not null,
	creditcardexpiration varchar(50) not null,
	username varchar(50) not null,
	password varchar(50) not null,
	age smallint,
	income int,
	gender varchar(1)
);

create table if not exists cust_hist (
	customerid int not null,
	orderid int not null,
	prod_id int not null,
	constraint fk_cust_hist_customers
		foreign key(customerid)
			references customers(customerid)
);

create table if not exists orders (
	orderid serial primary key,
	orderdate date not null,
	customerid integer,
	netamount numeric not null,
	tax numeric not null,
	totalamount numeric not null,
	constraint fk_orders_customers
		foreign key(customerid)
			references customers(customerid)
);

create table if not exists orderlines (
	orderlineid smallint not null,
	orderid integer not null,
	prod_id integer not null,
	quantity smallint not null,
	orderdate date not null,
	constraint fk_orderlines_orders
		foreign key(orderid)
			references orders(orderid),
	constraint fk_orderlines_products
		foreign key (prod_id)
			references products(prod_id)
);