----------------------------
----- SQL Transaction-------
----------------------------

BEGIN;

UPDATE tutorials.demo_table_2 SET state = 'Delhi'
    WHERE name = 'Pavel';
   
SAVEPOINT my_savepoint;

UPDATE tutorials.demo_table_2 SET state = 'UP'
    WHERE name = 'Pavel';
   
-- oops ... forget that and use Wally's account
ROLLBACK TO my_savepoint;

UPDATE tutorials.demo_table_2 SET state = 'West Bengal'
    WHERE name = 'Pavel';
  
select * from tutorials.demo_table_2 where name = 'Pavel';

COMMIT;