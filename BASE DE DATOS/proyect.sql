create database project365;
use project365;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname varchar(40) not null,
user_lastname varchar(40) not null,
user_email varchar(60)not null,
user_password varbinary(255)
);
select * from users_tbl;

insert into users_tbl (user_firstname, user_lastname, user_email, user_password) values ("Diana","Hernandez","alejandra@email.com","1024481797");

INSERT INTO project365.users_tbl (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('Diana'), UPPER('Hernandez'), 'alejandra@correo.com',
AES_ENCRYPT('Diana_alejadra07.','$2a$12$MvnynbqUim5hG4ub/Kh4y.lVIPK3FhJVPAX7sf9zftHc/e0E.tA/S'));

SELECT *,
 CAST(AES_DECRYPT(user_password,
'$2a$12$MvnynbqUim5hG4ub/Kh4y.lVIPK3FhJVPAX7sf9zftHc/e0E.tA/S') AS CHAR(50))
end_data FROM users_tbl WHERE user_id = 1;

drop database my_app;