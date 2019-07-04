select * from post;
select * from category;
select * from comments;
update comments set com_name='third' where post_id=2;
SET SQL_SAFE_UPDATES = 0;
delete from post where post_title='refraction';
select * from post where cat_id=3;

#joins
select a.post_id, a.post_title,b.commentby from post as a,comments as b where a.post_id = b.post_id;
select a.post_title,b.com_name from post as a left outer join comments as b on a.post_id = b.post_id; 
select b.post_title,a.com_name from comments as a left outer join post as b on a.post_id = b.post_id;
select b.post_title,a.com_name from comments as a inner join post as b on a.post_id = b.post_id;

select * from post order by cat_id asc;
select * from post limit 1;
select distinct post_id from post;

#aggregation
select post_id,count(com_id) from comments group by post_id;
select cat_id,count(post_id) from post group by cat_id;
select cat_name, parent_cat_id from category group by blog_id;
select count(cat_name), blog_id from category group by blog_id;

#sub-queries
select * from employee;
insert into employee values('manoj',2000);
insert into employee values('harsha',3000);
insert into employee values('hari',5000);
insert into employee values('krish',6000);
insert into employee values('kabir',7000);
insert into employee values('salman',9000);
insert into employee values('sharkukh',8000);
insert into employee values('srujana',1000);
select * from employee where salary >(select avg(salary) from employee);
select * from employee where salary between 3000 and 7000;
select * from employee where salary not in (2000,3000,4000);