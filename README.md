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
2. When column names of the views are not finalized.
3. When you are planning to create multiple views on top of it and this view might change often.

## Indexes
They are lookup table which enhances the SQL engine's performance in data retrieval.

### Syntax
<pre>
create index index_name
 on table (col_1, col_2,.....); 
</pre>

### When to use
1. Dataset is really big.
2. Very often filter based on few columns with a high number of classes.
3. Often joined with other tables on few columns.
4. When you are using replica of production tables.
5. Storage cost is not an issue.
6. Columns do not update very frequently.

### When not to use
1. When you are using the table for production writes.
2. Tables is going to be of minimal rows.
3. When increasing the storage would be costly.
4. Columns switch classes very frequently.
5. Not planning to use where clause or aggregations.


## Transactions
A SQL transaction is a grouping of one or more SQL statements that interact with a database and maintains database integrities (ACID Properties) before and after it has interacted with the database.

### Syntax
<pre>

BEGIN;

SQL Statements
   
SAVEPOINT savepoint_name;

SQL Statements

ROLLBACK TO savepoint_name;

SQL Statements

COMMIT;
</pre>

