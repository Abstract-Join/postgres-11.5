#!/bin/bash

make

make install

exec/bin/pg_ctl -D /home/koshy/Desktop/research/db/Abstract-join/pg_data/ -o "-p 8002" stop

exec/bin/pg_ctl -D /home/koshy/Desktop/research/db/Abstract-join/pg_data/ -o "-p 8002" start
clear
exec/bin/psql -p 8002 -a -f sql_explr_bandit.sql