DROP TABLE IF EXISTS perusahaan;

CREATE TABLE perusahaan (
    id_perusahaan INT AUTO_INCREMENT PRIMARY KEY,
    nama_perusahaan VARCHAR(50) NULL,
    no_telp CHAR (13) NULL,
    alamat VARCHAR(50) NULL,
    email_perusahaan VARCHAR(30) NULL
);