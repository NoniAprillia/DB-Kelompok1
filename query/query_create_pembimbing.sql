DROP TABLE IF EXISTS pembimbing ;
CREATE TABLE pembimbing (
    nidn_pembimbing char(10) NOT NULL PRIMARY KEY,
    email VARCHAR(30) NULL,
    nama_pembimbing VARCHAR(50) NULL,
    no_telp CHAR(13) NULL
);