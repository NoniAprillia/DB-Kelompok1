CREATE VIEW v_magangg AS 

SELECT
	mahasiswa.nama_mhs, 
	pembimbing.nama_pembimbing, 
	perusahaan.id_perusahaan, 
	perusahaan.nama_perusahaan, 
	magang.tgl_mulai, 
	magang.tgl_selesai, 
	magang.status_magang
FROM
	magang
	INNER JOIN
	mahasiswa
	ON 
		magang.npm_mhs = mahasiswa.npm_mhs
	INNER JOIN
	pembimbing
	ON 
		magang.nidn_pembimbing = pembimbing.nidn_pembimbing
	INNER JOIN
	perusahaan
	ON 
		magang.id_perusahaan = perusahaan.id_perusahaan