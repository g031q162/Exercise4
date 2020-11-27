CREATE TABLE users (
    user_id serial,
    user_name varchar(80) NOT NULL,
    pass varchar(80) NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE deadline (
    deadline_id serial,
    user_id int,
    coupon_id int,
    nummber int DEFAULT 1,
    expire_date date DEFAULT '2030-3-31' NOT NULL,
    PRIMARY KEY (deadline_id)
);

CREATE TABLE coupon (
    coupon_id serial,
    coupon_name varchar(80),
    effect varchar(200),
    store_id int,
    PRIMARY KEY (coupon_id)   
);

CREATE TABLE store (
    store_id serial,
    store_name varchar(80),
    info varchar(200),
    adress varchar(80),
    location point,
    PRIMARY KEY (store_id)    
);