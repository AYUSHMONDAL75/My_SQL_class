# SQL Class

My SQL class notes converted into runnable MySQL code. Each file covers one topic from my notes.

## Files

| File | Topic |
|------|-------|
| `our_1st_database.sql` | Create, use and drop a database |
| `our_1st_table.sql` | Create the first table |
| `database_queries.sql` | Create, drop, show databases and tables |
| `table_queries.sql` | Create, insert, update, alter, truncate, delete |
| `constraints.sql` | NOT NULL, UNIQUE, DEFAULT, CHECK |
| `primary_key.sql` | Primary key (single and composite) |
| `foreign_key.sql` | Foreign key and cascading actions |
| `insert_into_table.sql` | Insert data into a table |
| `select_command.sql` | SELECT |
| `where_clause.sql` | WHERE |
| `operators.sql` | Arithmetic and comparison operators |
| `limit_clause.sql` | LIMIT |
| `order_by_clause.sql` | ORDER BY (ASC / DESC) |
| `aggregate_functions.sql` | COUNT, MAX, MIN, SUM, AVG |
| `group_by_clause.sql` | GROUP BY |
| `having_clause.sql` | HAVING |
| `general_order.sql` | Full query order: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY |
| `update_queries.sql` | UPDATE |
| `delete_queries.sql` | DELETE |
| `alter_queries.sql` | ADD, DROP, RENAME, CHANGE, MODIFY |
| `truncate.sql` | TRUNCATE |

## How to Run

1. Install MySQL and open it in VS Code (for example with the MySQL extension) or in MySQL Workbench.
2. Open any `.sql` file.
3. Run the file. Each file creates the `college` database and the sample data it needs, so every file works on its own.

## Notes

- Written for MySQL.
- Files that use `UPDATE` or `DELETE` set `SQL_SAFE_UPDATES = 0` first.
