\c tphc

set enable_material = off;
set enable_mergejoin = off;
set enable_hashjoin = off;
set enable_indexonlyscan = off; 
set enable_indexscan = off;
set enable_bitmapscan=off;
set work_mem = "64kB";
set enable_seqscan = off;
set enable_fastjoin = on;
set enable_block=on;
set max_parallel_workers_per_gather=0;

EXPLAIN select * from customer join orders on c_custkey = o_custkey LIMIT 100;

select * from customer join orders on c_custkey = o_custkey LIMIT 100;
