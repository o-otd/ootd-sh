create database ootd default character set utf8 default collate utf8mb3_general_ci;

create user ootd@localhost identified by 'ootd!@#123!@#';
create user ootd@'%' identified by 'ootd!@#123!@#';

grant all privileges on ootd.* to ootd@localhost;
grant all privileges on ootd.* to ootd@'%';

flush privileges;
