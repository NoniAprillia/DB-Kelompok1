DROP TABLE IF EXISTS mahasiswa ;

CREATE TABLE mahasiswa (
    npm_mhs char(9) NOT NULL PRIMARY KEY,
    nama_mhs VARCHAR(20) NULL,
    prodi VARCHAR(50) NULL,
    alamat VARCHAR(50) NULL,
    no_telp CHAR(13) NULL,
    email VARCHAR(30) NULL
);