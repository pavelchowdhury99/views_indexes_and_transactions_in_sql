----------------------
----- SQL Index-------
----------------------

CREATE TABLE tutorials.demo_table_2 (
	id serial PRIMARY KEY,
	"name" varchar(1024) null,
	state varchar(300) NULL,
	occupation varchar(300) NULL
);

-- overview of data
select * from tutorials.demo_table_2;


-- sample aggregation 
EXPLAIN ANALYZE
select 
state,count(1)
from tutorials.demo_table_2
group by 1;


-- sample aggregation 
EXPLAIN ANALYZE
select 
occupation ,count(1)
from tutorials.demo_table_2
group by 1;


-- searching / sorting / aggregations
EXPLAIN ANALYZE
select 
name 
from tutorials.demo_table_2 dt where occupation='Sales, Shop, Restaurant' and state in ('borno','Cross River');


-- insertion
EXPLAIN ANALYZE
insert into tutorials.demo_table_2 (name,state,occupation) values
('Pavel','West Bengal','Other')


-- creating indexes
create index demo_index_1_on_demo_table_2
on tutorials.demo_table_2 (state,occupation);


-- delete index
drop index tutorials.demo_index_1_on_demo_table_2;

