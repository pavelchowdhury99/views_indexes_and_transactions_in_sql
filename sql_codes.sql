----------------------
----- SQL View--------
----------------------

create schema if not exists tutorials;

create table if not exists tutorials.demo_table_1 
(
	id int primary key,
	col_1 int,
	col_2 varchar(1),
	col_3 varchar(500),
	col_4 float,
	col_5 bool
);

insert into tutorials.demo_table_1 values
(1,4,'Y','a long text review',60,True),
(2,5,'Y','a long text review',70,True),
(3,5,'Y','a long text review',70,False),
(4,5,'N','a long text review',100,False)
;


-- Use case 1 - Easy creation of alias and using them
create or replace view tutorials.demo_view_1 as 
(
	select 
	id,
	col_1 as quantity,
	col_2 as liked_y_n_flag,
	col_3 as review,
	col_4 as price_per_item,
	col_5 as has_paid_bool
	from tutorials.demo_table_1
)
;

-- Use case 2 - Store calculation logics and add abstractions.
create or replace view tutorials.demo_view_3 as 
(
	select 
	id,
	col_1 as quantity,
	col_2 as liked_y_n_flag,
	col_3 as review,
	col_4 as price_per_item,
	col_5 as has_paid_bool,
	case when col_5<>true then (col_1*col_4*1.10) else 0 end as outstanding_balance
	from tutorials.demo_table_1
)
;

-- Use case 3 - To improve securities - limit data access of a table.
create or replace view tutorials.demo_view_2 as 
(
	select 
	id,
	col_1 as quantity,
	col_2 as liked_y_n_flag,
	col_3 as review,
	col_4 as price_per_item
--	col_5 as has_paid_bool
	from tutorials.demo_table_1
)
;
