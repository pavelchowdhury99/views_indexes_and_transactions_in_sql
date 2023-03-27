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

### When to use SQL views
1. Easy creation of alias and using them
2. Store calculation logics and add abstractions.
3. To improve securities - limit data access of a table.
4. Migrate from one table to another

### When not to use SQL views
1. Run time of query needs to be less.
2. When you are planning to create multiple tables / views on top of it.

## Indexes
