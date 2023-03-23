# Views, Indexes and Transactions in SQL

## Views
Views are virtual tablse based on the result-set of SQL statements.

### Syntax
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

### Use cases
1. Easy creation of alias and using them
2. Store calculation logics
3. Migrate from one table to another
4. 
