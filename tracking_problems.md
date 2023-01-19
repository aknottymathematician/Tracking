# Tracking & Generating Random Problems

DB - problem_tracking

Two tables - 
1. constraints - id, parameter_type, parameter, frequency
2. problem_inventory - idx, probID , problem_name, link, difficulty, topic, blacklist, notes, company, first_date, second_date, third_date, fourth_date, fifth_date

## SQL commands

### Constraints table-
- create table constraints (parameter_type varchar(255), parameter varchar(255), frequency int, primary key (probID));
- insert into constraints values (1,'difficulty', 'Easy', 10);
- insert into constraints values (2,'difficulty', 'Medium', 10);
- insert into constraints values (3,'difficulty', 'Hard', 10);
- insert into constraints values (4,'topic', 'Array', 10);
- insert into constraints values (5,'topic', 'LinkedList', 10);
- insert into constraints values (6,'topic', 'Stacks', 10);
- insert into constraints values (7,'topic', 'Queues', 10);
- insert into constraints values (8,'topic', 'String', 10);
- insert into constraints values (9,'topic', 'Trees', 10);
- insert into constraints values (10,'topic', 'GraphsDS', 10);
- insert into constraints values (11,'topic', 'HashMap', 10);
- insert into constraints values (12,'topic', 'Bits', 10);
- insert into constraints values (13,'topic', 'Heaps', 10);
- insert into constraints values (14,'topic', 'Tries', 10);
- insert into constraints values (15,'topic', 'Recursion', 10);
- insert into constraints values (16,'topic', 'Searching', 10);
- insert into constraints values (17,'topic', 'Sorting', 10);
- insert into constraints values (18,'topic', 'DP', 10);
- insert into constraints values (19,'topic', 'Greedy', 10);
- insert into constraints values (20,'topic', 'GraphAlg', 10);
- insert into constraints values (21,'topic', 'Backtracking', 10);

### problem_inventory table-
- create table problem_inventory (idx int NOT NULL AUTO_INCREMENT, probID int, problem_name varchar(255), link varchar(255), difficulty varchar(255), topic varchar(255), blacklist varchar(255), notes varchar(255), company varchar(255), first_date date, second_date date, third_date date, fourth_date date, fifth_date date, primary key (idx)); 
- insert into problem_inventory values(1, 200, 'binary search', 'some link here', 'easy', 'arrays, binary search', 'NO', 'divide and conquer approach', NULL, str_to_date('01-06-2022','%d-%m-%Y'), NULL, NULL, NULL, NULL);