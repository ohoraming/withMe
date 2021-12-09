create database if not exists withme;
use withme;

create table if not exists user(
	num int not null auto_increment,
    email varchar(30) not null,
    pass varchar(15) not null,
    interest_local varchar(100) null,
    interest_category varchar(200) null,
    primary key (num)
)default charset="utf8";

create table if not exists festival(
	num int not null auto_increment,
    fest_id int not null,
    primary key (num)
)default charset="utf8";

create table if not exists interest_fest(
	num int not null auto_increment,
    uid int not null,
    fid int not null,
    memo text null,
    alam boolean not null default false,
    primary key(num),
    unique key(uid, fid),
    foreign key(uid) references user(num)
    on update cascade
    on delete cascade,
    foreign key(fid) references festival(num)
    on update cascade
    on delete cascade
)default charset="utf8";

show tables;

select * from user;