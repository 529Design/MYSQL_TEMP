/*This creates a new table from an existing one*/

CREATE TABLE test_table
(
id integer not null,
first_name varchar(35),
last_name varchar(45),
email varchar(75),
primary key (id)
);

insert into test_table (first_name, last_name, email) (select first_name, last_name, email from other_table);

/*Sets a variable in case of many fields to encrypt with same key*/

SET @skeletonkey = 'mypassword'

/*casts to binary*/

alter TABLE test_table MODIFT OLUMN id varbinary(255);

/* adds encryption */
UPDATE test_table SET id = AES_ENCRYPT(id,@skeletonkey);

SELECT cast(AES_DECRYPT(id,@skeletonkey) as char(255)) from test_table

/* or the select can contain the plain text key ''mypassword' */
