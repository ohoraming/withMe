-- 항상 여기서 수정하고 저장해 둘 것
 
CREATE DATABASE IF NOT EXISTS storebro;

use storebro;

show tables;

 drop table board;
-- delete from board;

CREATE TABLE IF NOT EXISTS board( -- 210730
	id int not null auto_increment,
    bid int not null,
    ordering int not null default 0,
    layer int not null default 0,
    views int not null default 0,
    title varchar(100) not null,
    contents longtext not null,
    tags varchar(100) null,
    author varchar(30) not null,
    regDate timestamp not null default current_timestamp,
    updates timestamp not null default current_timestamp on update current_timestamp,
    primary key(id)
)auto_increment=1 default charset='utf8mb4';

select * from board;

desc board;