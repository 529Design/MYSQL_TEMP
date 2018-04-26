--This creates a new table from an existing one

CREATE TABLE test_table
(
id integer not null,
first_name varchar(35),
last_name varchar(45),
email varchar(75),
primary key (id)
);

insert into test_table (first_name, last_name, email) (select first_name, last_name, email from other_table);
