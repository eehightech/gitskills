#!C:\Program Files\Anaconda2\python.exe -u

import MySQLdb

mydb = MySQLdb.connect(host="localhost",
					user="root",
					passwd="cxgdj95598!",
					db="drivingschool")
					
cur = mydb.cursor()
