#coding=utf-8
from pymysql import *
conn = connect(host = 'localhost', port = 3306, user = 'root', passwd = 'zs007578', db = 'python3', charset = 'utf8')
cursor1 = conn.cursor()
sql = 'delete from students where id = 8'
cursor1.execute(sql)
conn.commit()
cursor1.close()
conn.close()
print('Done!')