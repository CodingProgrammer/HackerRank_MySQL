#coding=utf-8
from pymysql import *
conn = connect(host = 'localhost', port = 3306, user = 'root', passwd = 'zs007578', db = 'python3', charset = 'utf8')
cursor1 = conn.cursor()
sql = 'update students set name = "王小二" where id = 10'
cursor1.execute(sql)
conn.commit()
cursor1.close()
conn.close()
print('Done!')