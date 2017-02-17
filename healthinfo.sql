create table healthinfo (
	id INT(8) not null unique primary key auto_increment,
	sno INT(8) not null unique,
	sname VARCHAR(20) not null,
	height FLOAT,
	weight FLOAT,
	differentiate ENUM('normal','weak','blaind'),
	left_sight FLOAT,
	right_sight FLOAT,
	left_ear ENUM('normal','weak'),
	right_ear ENUM('normal','weak'),
	legs ENUM('normal','different'),
	pressure ENUM('normal','higher','lower'),
	history VARCHAR(50) not null,
	h_text TEXT,
	CONSTRAINT health_fk FOREIGN KEY (sno)
	REFERENCES studentinfo(sno)
)default charset=utf8;
