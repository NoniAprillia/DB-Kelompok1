DROP TABLE IF EXISTS magang;
CREATE TABLE magang (
    id_magang INT AUTO_INCREMENT PRIMARY KEY,
    npm_mhs char (9) NULL,
    id_perusahaan INT NULL,
    nidn_pembimbing char (10) NULL,
    tgl_mulai DATE NULL,
    tgl_selesai DATE NULL,
    status_magang VARCHAR(50) NULL,
    FOREIGN KEY (npm_mhs) REFERENCES MAHASISWA(npm_mhs),
    FOREIGN KEY (id_perusahaan) REFERENCES PERUSAHAAN(id_perusahaan),
    FOREIGN KEY (nidn_pembimbing) REFERENCES PEMBIMBING(nidn_pembimbing), 
    UNIQUE(npm_Mhs, id_perusahaan)
);