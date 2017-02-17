CREATE TABLE gradeinfo (
	id INT(8) NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
	sno INT(8) NOT NULL,
	cno INT(4) NOT NULL,
	last_time DATE,
	times INT(4) DEFAULT 1,
	grade FLOAT DEFAULT 0,
	CONSTRAINT grade_sno_fk FOREIGN KEY (sno)
	REFERENCES studentinfo(sno),
	CONSTRAINT grade_cno_fk FOREIGN KEY (cno)
	REFERENCES courseinfo(cno)
)DEFAULT CHARSET=utf8;
