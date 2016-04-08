--liquibase formatted sql

--changeset jeff:1 runOnChange:true context:init
create table test1 (
    id int primary key,
    name varchar(255)
);

--changeset jeff:2 runOnChange:true context:init
insert into test1 values(1,'test');
insert into test1 values(2,'test2');
insert into test1 values(3,'test3');

--changeset jeff:3 runOnChange:true context:init 
insert into test1 values(4,'test4');
