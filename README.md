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

B.Tipe Data 
1. magang 
id_magang char(10) ganti ke INT Auto incremenet. 
2. Pembimbing 
no_telp varchar(15) ganti ke char(13) 
3. Perusahaan 
id_perusahaan INT 
4. Mahasiswa 
no_telp varchar(15) ganti char(13)


C. Relasi 
1. Satu mahasiswa hanya bisa memiliki satu data magang.
2. Satu perusahaan bisa menerima banyak mahasiswa magang.
3. Satu pembimbing bisa membimbing banyak mahasiswa.
4. Tabel Magang adalah jembatan yang menghubungkan semuanya.


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

# TEST BACKEND 

![image](https://github.com/user-attachments/assets/711a7e2c-4cee-4aa4-a70e-efb8cbec2407)

1. Pertama Download zib backend lalu extract file dan buka visual studio code  
2. Pergi ke terminal ketik composer install
3. Lalu php spark serve ( untuk ngecek server lokal ) 
4.	Coba ke postman apakah sudah jalan ? 

![image](https://github.com/user-attachments/assets/cb05f4ef-1f8a-4c0d-9b53-213c91a0a6bd)

Oke done bisa jalan kan postman nya 

# TEST FRONTEND 

![image](https://github.com/user-attachments/assets/97d0bb98-eddd-4e48-aee6-a5a805cc032d)

1. Pertama Download zib backend lalu extract file dan buka visual studio code  
2.	Pergi ke terminal ketik composer install
3.	Cp .env.example .env ( nyalin file .env.example jadi .env. ) 
4.	Php artisan key:generate ( mengenkripsi data (sesi login) ) 
5.	Php artisan migrate ( Menjalankan semua migration untuk membuat tabel di database ) 
6.	Pilih Yes 
7.	Ke env setting database, password untuk mengatur koneksi ke database MySQL.
8.	Php artisan session:table ( exits )
9.	Php artisan migrate 
10.	Php artisan serve ( Menjalankan server Laravel lokal ) 
11.	Cek server apakah mau tampil ?

BERHASIL LOGIN : 

![image](https://github.com/user-attachments/assets/7ca252a4-cd87-4451-9c65-6693f1f7d511)

