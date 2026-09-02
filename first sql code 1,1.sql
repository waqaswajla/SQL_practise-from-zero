drop table if exists sqlpart1 ;
create table sqlpart1 (
user_id integer primary key not null ,
age varchar(100),
city varchar (100)
) ;
insert into sqlpart1 
values (
10,20,"mianwali"
);
delete from sqlpart1 
where user_id =10
and age ='20'
and city ="mianwali";
insert into sqlpart1(
user_id  ,age ,city )
values (
10  , '20' ,'mianwali ' 
);
create temporary table sqlpart2 as (
select *
from sqlpart1 
where user_id=10
and age ='20');
update sqlpart2  
set user_id =20,
 age ='30',
where user_id=10
and age ='20';

select * from sqlpart2 ;
select * from sqlpart1 ;