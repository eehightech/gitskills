create table studentinfo (
	sno int(8) not null primary key,
	sname varchar(20) not null,
	sex ENUM('male','female') not null,
	Age int(3),
	identify varchar(18) not null unique,
	tel varchar(15),
	car_type varchar(4) not null,
	enroll_time date not null,
	leave_time date,
	scondition enum('learning','graduate','quit') not null,
	s_text text
)default charset=utf8;

