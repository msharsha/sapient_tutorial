create database if not exists tutorial;
use tutorial;
drop table blog;
create table if not exists blog(
	blog_id int unsigned not null primary key,
	blog_name varchar(20) not null,
	blog_url varchar(30) unique,
	created_date date not null
	); 
create table if not exists category(
	cat_id int unsigned primary key,
	cat_name varchar(20),
	blog_id int unsigned,
	parent_cat_id int unsigned,
	constraint blog_id_fk foreign key(blog_id) references blog(blog_id),
	constraint cat_id_fk foreign key(parent_cat_id) references category(cat_id)
);
create table post(
	post_id int unsigned not null primary key,
	post_title varchar(30) not null,
	author varchar(20),
	cat_id int unsigned,
	constraint post_id_fk foreign key(cat_id) references category(cat_id)
);
create table comments(
	com_id int unsigned not null primary key,
	com_name varchar(20),
	commentby varchar(20),
	com_text varchar(100),
	post_id int unsigned not null,
	constraint posts_id_fk foreign key(post_id) references post(post_id)
); 
create table author(
	author_id int unsigned not null primary key,
	author_name varchar(20),
	skills varchar(20)
); 
create table tag(
	tag_id int unsigned not null primary key,
	tag_name varchar(20)
); 

create table post_tag(
	post_id int unsigned not null,
	tag_id int unsigned not null,
	primary key(post_id,tag_id),
	constraint posts_id_fk2 foreign key(post_id) references post(post_id),
	constraint tag_id_fk2 foreign key(tag_id) references tag(tag_id)
);
create table post_author(
	post_id int unsigned not null,
	author_id int unsigned not null,
	primary key(post_id,author_id),
	foreign key(post_id) references post(post_id),
	foreign key(author_id) references author(author_id)
);
show databases;
use tutorial;
show create table post;
show create table post_tag;
alter table post add column created_date date not null;
alter table comments add column create_date date not null;
alter table category drop foreign key cat_id_fk;
show create table category;
alter table category add foreign key cat_id_fk(parent_cat_id) references category(cat_id);
alter table comments change com_text comment_text varchar(100);  
show create table comments;
alter table post change post_id post_idd int unsigned not null;
show create table post;
alter table post change post_idd post_id int unsigned not null;
	

