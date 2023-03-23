# Views, Indexes and Transactions in SQL

## Views
Views are virtual tablse based on the result-set of SQL statements.

Syntax to create a view <br>
<pre>create of replace view schema_name.view_name as
  select 
  a,
  b
  ..
  from schema_name.table_name
  where 1=1
  group by 1,2,3... 
;
</pre>
