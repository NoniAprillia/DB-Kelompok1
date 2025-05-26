# DB-Kelompok1

# DATABASE 
database itu seperi tempat menyimpan data yang dapat di akses, di kelola, dan di simpan agar dapat di gunakan kembali 

# ERD 
sebelum membuat database kita merancang Erd di drawio terlebih dahulu
kenapa menggunakan draw io ?
1. Tools nya gratis 
2. User friendly
3. Save ke Drive
4. Banyak Format untuk menyimpan project nya 
5. Banyak Template 
6. Dapat dikerjakan secara bersama-sama 

A. Gambar ERD: 

![image](https://github.com/user-attachments/assets/81f8c7a6-30df-4021-af16-6ed17a41fbf3)

B. Relasi 
1. Satu mahasiswa hanya bisa memiliki satu data magang.
2. Satu perusahaan bisa menerima banyak mahasiswa magang.
3. Satu pembimbing bisa membimbing banyak mahasiswa.
4. Tabel Magang adalah jembatan yang menghubungkan semuanya.

C. Tipe Data 
magang 
id_magang char(10) ganti ke INT Auto incremenet. 
Pembimbing 
no_telp varchar(15) ganti ke char(13) 
Perusahaan 
id_perusahaan INT 
Mahasiswa 
no_telp varchar(15) ganti char(13)

# SQL 
A. Gambar Navicat 
![image](https://github.com/user-attachments/assets/63fdc9f1-fccd-4dde-bf9d-23eae483864f)
navicat itu untuk ngelola database yang kita punya beda nya sama phpmyadmin yang biasa digunakan itu lebih tertata 
PERBEDAAN : 
 ![image](https://github.com/user-attachments/assets/568efd72-7890-419b-b753-83e1eff8bbf1)
Dapat di lihat pada navicat itu lebih terpisah - pisah tempat nya 
table , view, query jadi saat kita akan mengubah data kita tidak bingung tempat nya dimana 
sedangkan di phpmysql itu hanya ada table dan view 
di Navicat juga mudah saat mau membuat join / view kita tinggal tarik table nya 
![image](https://github.com/user-attachments/assets/db2c038e-8fe3-46bf-a8ef-9d09f54a7881)
