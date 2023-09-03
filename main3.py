# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="localhost",
    user="username",  # Diganti dengan username MySQL
    password="password",  # Diganti dengan password MySQL
    database="nama_database"  # Diganti dengan nama database yang digunakan
)

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"

# Data yang akan diinsert
data = ("Nishafa", "Putri", "21", "F", "10000")

try:
    #Eksekusi SQL Command
     cursor.execute(insert_sql, data)

    #Melakukan perubahan (commit) pada DB
     conn.commit()

except:
    #Roll Back apabila ada issue
     conn.rollback()

#Menutup Koneksi
conn.close()