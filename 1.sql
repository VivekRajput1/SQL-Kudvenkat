create database sql_kudvenkat

use sql_kudvenkat

alter database sql_kudvenkat modify name=sql_kudvenkat1

alter database sql_kudvenkat1 modify name=sql_kudvenkat

execute sp_renamedb 'sql_kudvenkat','sql_kudvenkat1'

execute sp_renamedb 'sql_kudvenkat1','sql_kudvenkat'

drop database sql_kudvenkat -- throw error if in use
--Cannot drop database "sql_kudvenkat" because it is currently in use.

alter database sql_kudvenkat set single_user with rollback immediate -- to allow single sign in on db

select * from Employees -- select table name then press ALT+F1 to see datatype of each colum