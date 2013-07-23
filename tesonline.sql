/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.16 : Database - tesonline
*********************************************************************
Server version : 5.5.16
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `tesonline`;

USE `tesonline`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert into `tbl_admin` (`id_admin`,`username`,`password`,`nama_lengkap`) values (1,'admin','admin','Gede Lumbung Suma Wijaya');

/*Table structure for table `tbl_hasil` */

DROP TABLE IF EXISTS `tbl_hasil`;

CREATE TABLE `tbl_hasil` (
  `id_hasil` int(10) NOT NULL AUTO_INCREMENT,
  `id_kat_soal` int(10) NOT NULL,
  `id_pel` int(10) NOT NULL,
  `no_soal` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `salah` int(5) NOT NULL,
  `benar` int(5) NOT NULL,
  `hasil` varchar(10) CHARACTER SET latin1 NOT NULL,
  `detik` int(30) NOT NULL,
  PRIMARY KEY (`id_hasil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_hasil` */

/*Table structure for table `tbl_hubungi` */

DROP TABLE IF EXISTS `tbl_hubungi`;

CREATE TABLE `tbl_hubungi` (
  `id_hub` int(10) NOT NULL AUTO_INCREMENT,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_hub`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_hubungi` */

/*Table structure for table `tbl_jawab_soal` */

DROP TABLE IF EXISTS `tbl_jawab_soal`;

CREATE TABLE `tbl_jawab_soal` (
  `id_jawaban` int(10) NOT NULL AUTO_INCREMENT,
  `id_soal` int(10) NOT NULL,
  `id_kat_soal` int(10) NOT NULL,
  `no_soal` int(10) NOT NULL,
  `id_pel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `kunci` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_jawab_soal` */

/*Table structure for table `tbl_kat_soal` */

DROP TABLE IF EXISTS `tbl_kat_soal`;

CREATE TABLE `tbl_kat_soal` (
  `id_kat` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kat`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kat_soal` */

insert into `tbl_kat_soal` (`id_kat`,`nama_kat`) values (1,'Soal Ujian Mid Semester');
insert into `tbl_kat_soal` (`id_kat`,`nama_kat`) values (2,'Soal Ujian Semester');
insert into `tbl_kat_soal` (`id_kat`,`nama_kat`) values (3,'Soal Ujian Harian');

/*Table structure for table `tbl_pelajaran` */

DROP TABLE IF EXISTS `tbl_pelajaran`;

CREATE TABLE `tbl_pelajaran` (
  `id_pel` int(10) NOT NULL AUTO_INCREMENT,
  `nama_pel` varchar(100) NOT NULL,
  `lama_waktu` int(5) NOT NULL,
  PRIMARY KEY (`id_pel`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pelajaran` */

insert into `tbl_pelajaran` (`id_pel`,`nama_pel`,`lama_waktu`) values (1,'Matematika',20);
insert into `tbl_pelajaran` (`id_pel`,`nama_pel`,`lama_waktu`) values (2,'Bahasa Indonesia',15);
insert into `tbl_pelajaran` (`id_pel`,`nama_pel`,`lama_waktu`) values (3,'Bahasa Inggris',15);
insert into `tbl_pelajaran` (`id_pel`,`nama_pel`,`lama_waktu`) values (4,'IPA',15);
insert into `tbl_pelajaran` (`id_pel`,`nama_pel`,`lama_waktu`) values (5,'IPS',15);

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `no_induk` varchar(10) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelahiran` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`no_induk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_siswa` */

insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113001','dsd','dsd','dsdsd','dsdsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113002','dsd','dsd','dsdsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113003','ds','sd','dsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113004','dsd','dsd','sdsd','dsds','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113005','dsd','ds','dsdsd','dsds','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113006','dsdsd','dsd','dd','dsds','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113007','dsdd','dsd','dsdsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113008','dsd','dsd','dsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113009','ds','dsd','sdsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113010','dsd','ds','dsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('0113011','dsd','dsd','dsd','dsd','no-photo.jpg');
insert into `tbl_siswa` (`no_induk`,`nama_siswa`,`kelahiran`,`alamat`,`password`,`foto`) values ('113012','sas','sas','sasa','sas','no-photo.jpg');

/*Table structure for table `tbl_soal` */

DROP TABLE IF EXISTS `tbl_soal`;

CREATE TABLE `tbl_soal` (
  `id_soal` int(10) NOT NULL AUTO_INCREMENT,
  `no_soal` int(10) NOT NULL,
  `id_pelajaran` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `pertanyaan` text COLLATE latin1_general_ci NOT NULL,
  `jwb_a` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `jwb_b` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `jwb_c` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `jwb_d` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `kunci` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `penulis` int(10) NOT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_soal` */

insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (1,2,1,2,'Manakah yang termasuk ke dalam periperal Input di dalam komputer...','Mouse','Printer','Scanner','Monitor','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (2,2,1,2,'Kepanjangan dari RAM adalah...','Random Algorithm Management','Random Access Memory','Rational Access Management','','b',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (3,2,1,2,'Salah satu software pengolah gambar yang dikhususkan untuk gambar vektor ialah...','Photoshop','Gimp','Corel Draw','','c',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (4,2,1,2,'Komputer yang berfungsi untuk melayani komputer-komputer lainnya disebut...','Server','Repeater','Switch','','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (5,2,1,2,'Dibawah ini yang bukan merupakan jenis-jenis kabel jaringan ialah...','UTP','Coaxial','Power','Fibre Optik','c',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (6,2,1,2,'Perangkat lunak yang bukan merupakan katagori kelompok sistem operasi adalah :','Ms Windows','Spreedsheet Calc','Linux','','b',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (8,1,1,1,'Secara garis besar sebuah sistem komputer dibagi kedalam tiga katagori yaitu input device, prosesing device dan output device. Yang tidak termasuk ke dalam katagori input device adalah...','Keyboard','Scanner','Monitor','Michrophone','C',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (9,1,1,1,'Linux adalah sistem operasi yang menggunakan lisensi GPL, Kepanjangan dari GPL adalah...','General Public Linux','General Public License','General Private Linux','General Private License','b',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (10,1,1,1,'Ada banyak media penyimpan data yang bisa digunakan saat ini. Diantara media-media penyimpan data yang disebutkan di bawah ini, mana yang memiliki kapasitas paling kecil...','Flashdisk','Disket','Harddisk','CD (Compact Disk)','b',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (11,1,1,1,'Berdasarkan bentuknya, media penyimpan dapat dibagi kedalam 3 kelompok, yaitu magnetis, optis, Elektronis. Yang termasuk kedalam media penyimpan optic adalah...','CD','Memory','Disket','Hard Disk','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (12,3,1,1,'Untuk melakukan penelusuran informasi di internet, diperlukan software browser. Yang bukan merupakan software browser di bawah ini adalah..','Netscape Navigator','Firefox','Internet Explorer','Ms. Power Point','d',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (13,3,1,1,'Dalam perkembangannya isi (content) dari halaman web menjadi bervariasi, sehingga browser menjadi lebih menarik dan interaktif. Berikut yang tidak / belum tersedia sebuah halaman web...','Teks','Gambar','Audio','Aroma','d',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (14,3,1,1,'Untuk membuka halaman web (website)tertentu, kita harus mengetahui alamat URL (Uniform Resource Locator) dan menuliskannya di...','Address','Password','ID','Favorite','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (15,3,1,1,'Situs yang berisi fasilitas pencarian informasi disebut dengan situs ...','Web Mail','Portal','Search Engine','Berita','c',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (16,1,1,1,'Yang bukan merupakan tipe data dalam pemrograman C# adalah...','Int','Char','Double','For','d',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (17,4,2,1,'Salah satu fungsi perulangan yang sering dipakai dalam dunia pemrograman adalah...','While','If','Switch','Or','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (18,4,2,1,'Kepanjangan dari CSS adalah...','Cascading Style Sheet','Component Social System','Configuration Style System','','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (19,4,2,1,'Sub-sub menu yang muncul ketika suatu link disentuh/on hover disebut...','Slide','Drop Down','Tab','Tree','b',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (20,4,2,1,'Yang bukan merupakan attribut dari tag table ialah...','width','height','align','id','d',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (21,4,2,1,'Fungsi dari tag br dalam penulisan kode HTML ialah....','Memberikan jarak ke bawah tanpa spasi','Memberikan jarak ke bawah dengan 1 spasi','Memberikan jarak ke bawah dengan 2 spasi','Memberikan jarak ke bawah dengan 3 spasi','a',1);
insert into `tbl_soal` (`id_soal`,`no_soal`,`id_pelajaran`,`id_kategori`,`pertanyaan`,`jwb_a`,`jwb_b`,`jwb_c`,`jwb_d`,`kunci`,`penulis`) values (28,1,1,1,'Harga apel, jeruk, anggur secara berurutan ialah 2000,4000,5000. Jika Anto membeli 4 buah apel, 8 buah jeruk, dan 10 buah anggur, berapa total yang harus dibayarkan...','90000','80000','10000','85000','A',1);

/* Procedure structure for procedure `AcakSoal` */

drop procedure if exists `AcakSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AcakSoal`(nomor int(10), id_pel int(10), id_kat int(10))
BEGIN
select * from tbl_soal where no_soal=nomor and id_pelajaran=id_pel and id_kategori=id_kat order by RAND() LIMIT 1;
END$$

DELIMITER ;

/* Procedure structure for procedure `bacaPesanMasuk` */

drop procedure if exists `bacaPesanMasuk`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `bacaPesanMasuk`(id int(10))
BEGIN
select id_hub,pengirim,penerima,pesan from tbl_hubungi where penerima=id order by id_hub DESC;
END$$

DELIMITER ;

/* Procedure structure for procedure `balasPesanAdmin` */

drop procedure if exists `balasPesanAdmin`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `balasPesanAdmin`(id_penerima int(10), psn varchar(1500))
BEGIN
insert into tbl_hubungi(pengirim,penerima,pesan) values('admin',id_penerima,psn);
END$$

DELIMITER ;

/* Procedure structure for procedure `cekIkutSerta` */

drop procedure if exists `cekIkutSerta`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cekIkutSerta`(idkat varchar(10),idpel varchar(10),nosoal varchar(10),idsiswa varchar(10))
BEGIN
select * from tbl_hasil where id_kat_soal=idkat and id_pel=idpel and no_soal=nosoal and id_siswa=idsiswa;
END$$

DELIMITER ;

/* Procedure structure for procedure `hapusKat` */

drop procedure if exists `hapusKat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusKat`(id int(10))
BEGIN
delete from tbl_kat_soal where id_kat=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `hapusMat` */

drop procedure if exists `hapusMat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusMat`(id int(10))
BEGIN
delete from tbl_pelajaran where id_pel=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `hapusSiswa` */

drop procedure if exists `hapusSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusSiswa`(id int(10))
BEGIN
delete from tbl_siswa where no_induk=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `hapusSoal` */

drop procedure if exists `hapusSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusSoal`(id int(10))
BEGIN
delete from tbl_soal where id_soal=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `kirimPesanClient` */

drop procedure if exists `kirimPesanClient`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `kirimPesanClient`(p_kirim varchar(100),psn varchar(1500))
BEGIN
insert into tbl_hubungi(pengirim,penerima,pesan) values(p_kirim,'admin',psn);
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatContact` */

drop procedure if exists `lihatContact`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatContact`()
BEGIN
select tbl_hubungi.id_hub,tbl_siswa.nama_siswa,tbl_hubungi.pesan,tbl_hubungi.pengirim from tbl_hubungi left join tbl_siswa on tbl_hubungi.pengirim=tbl_siswa.no_induk where penerima='admin' order by id_hub DESC;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatNilaiPerKat` */

drop procedure if exists `lihatNilaiPerKat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatNilaiPerKat`(id int(10),id_kat int(10))
BEGIN
select tbl_hasil.no_soal,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal) 
on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat where 
tbl_hasil.id_kat_soal=id_kat and id_siswa=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatNilaiPerKategori` */

drop procedure if exists `lihatNilaiPerKategori`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatNilaiPerKategori`(id int(10))
BEGIN
select tbl_hasil.no_soal,nama_siswa,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal,tbl_siswa) on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat and tbl_hasil.id_siswa=tbl_siswa.no_induk where tbl_hasil.id_kat_soal=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatNilaiPerMataPelajaran` */

drop procedure if exists `lihatNilaiPerMataPelajaran`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatNilaiPerMataPelajaran`(id int(10))
BEGIN
select tbl_hasil.no_soal,nama_siswa,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal,tbl_siswa) on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat and tbl_hasil.id_siswa=tbl_siswa.no_induk where tbl_hasil.id_pel=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatNilaiPerMatPel` */

drop procedure if exists `lihatNilaiPerMatPel`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatNilaiPerMatPel`(id int(10),id_pelajaran int(10))
BEGIN
select tbl_hasil.no_soal,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal) 
on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat where 
tbl_hasil.id_pel=id_pelajaran and id_siswa=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatNilaiPerSiswa` */

drop procedure if exists `lihatNilaiPerSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatNilaiPerSiswa`(id int(10))
BEGIN
select tbl_hasil.no_soal,nama_siswa,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal,tbl_siswa) on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat and tbl_hasil.id_siswa=tbl_siswa.no_induk where id_siswa=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatNilaiSemuaSiswa` */

drop procedure if exists `lihatNilaiSemuaSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatNilaiSemuaSiswa`()
BEGIN
select tbl_hasil.no_soal,nama_siswa,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal,tbl_siswa) on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat and tbl_hasil.id_siswa=tbl_siswa.no_induk order by no_induk;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatPerKat` */

drop procedure if exists `lihatPerKat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatPerKat`(id int(10))
BEGIN
select id_soal,id_pelajaran,id_kategori,no_soal,nama_pel,nama_kat,lama_waktu  from tbl_soal left join (tbl_kat_soal,tbl_pelajaran) on tbl_soal.id_kategori=tbl_kat_soal.id_kat
and tbl_soal.id_pelajaran=tbl_pelajaran.id_pel where id_kategori=id group by no_soal;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatPerMat` */

drop procedure if exists `lihatPerMat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatPerMat`(id int(10))
BEGIN
select id_soal,id_pelajaran,id_kategori,no_soal,nama_pel,nama_kat,lama_waktu  from tbl_soal left join (tbl_kat_soal,tbl_pelajaran) on tbl_soal.id_kategori=tbl_kat_soal.id_kat
and tbl_soal.id_pelajaran=tbl_pelajaran.id_pel where id_pelajaran=id group by no_soal;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatRanking` */

drop procedure if exists `lihatRanking`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatRanking`()
BEGIN
SELECT id_siswa, nama_siswa, avg(tbl_hasil.hasil) as jml, sum(detik) FROM tbl_hasil left join tbl_siswa on tbl_hasil.id_siswa=tbl_siswa.no_induk group by tbl_hasil.id_siswa order by jml desc, detik asc;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatSemuaKategori` */

drop procedure if exists `lihatSemuaKategori`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatSemuaKategori`()
BEGIN
select * from tbl_kat_soal;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatSemuaNilai` */

drop procedure if exists `lihatSemuaNilai`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatSemuaNilai`(id int(10))
BEGIN
select tbl_hasil.no_soal,nama_pel,nama_kat,hasil from tbl_hasil left join (tbl_pelajaran,tbl_kat_soal) on tbl_hasil.id_pel=tbl_pelajaran.id_pel and tbl_hasil.id_kat_soal=tbl_kat_soal.id_kat where id_siswa=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatSemuaPelajaran` */

drop procedure if exists `lihatSemuaPelajaran`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatSemuaPelajaran`()
BEGIN
select * from tbl_pelajaran;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatSemuaSoal` */

drop procedure if exists `lihatSemuaSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatSemuaSoal`()
BEGIN
select id_soal,id_pelajaran,id_kategori,no_soal,nama_pel,nama_kat,lama_waktu from tbl_soal left join (tbl_kat_soal,tbl_pelajaran) on tbl_soal.id_kategori=tbl_kat_soal.id_kat
and tbl_soal.id_pelajaran=tbl_pelajaran.id_pel group by no_soal,id_pelajaran,id_kategori;
END$$

DELIMITER ;

/* Procedure structure for procedure `lihatSiswa` */

drop procedure if exists `lihatSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lihatSiswa`()
BEGIN
select no_induk,nama_siswa,alamat from tbl_siswa;
END$$

DELIMITER ;

/* Procedure structure for procedure `loginAdmin` */

drop procedure if exists `loginAdmin`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `loginAdmin`(user varchar(40), pass varchar(40))
BEGIN
select * from tbl_admin where username=user and password=pass;
END$$

DELIMITER ;

/* Procedure structure for procedure `loginUser` */

drop procedure if exists `loginUser`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `loginUser`(user varchar(40), pass varchar(40))
BEGIN
select * from tbl_siswa where no_induk=user and password=pass;
END$$

DELIMITER ;

/* Procedure structure for procedure `maxNis` */

drop procedure if exists `maxNis`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxNis`()
BEGIN
SELECT CONCAT_WS('0113','',LPAD(IFNULL(MAX(CONVERT(SUBSTRING(no_induk, 5, 3),SIGNED))+1, 1), 3, '0')) as id FROM `tbl_siswa`;
END$$

DELIMITER ;

/* Procedure structure for procedure `pilihSiswa` */

drop procedure if exists `pilihSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pilihSiswa`(id int(10))
BEGIN
select * from tbl_siswa where no_induk=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `simpanHasil` */

drop procedure if exists `simpanHasil`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpanHasil`(id_kat int(10),id_pel int(10),no_soal int(10),id_siswa int(10),salah int(5),benar int(5),hasil varchar(10),detik int(20))
BEGIN
insert into tbl_hasil (id_kat_soal,id_pel,no_soal,id_siswa,salah,benar,hasil,detik) values (id_kat,id_pel,no_soal,id_siswa,salah,benar,hasil,detik);
END$$

DELIMITER ;

/* Procedure structure for procedure `simpanJawaban` */

drop procedure if exists `simpanJawaban`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpanJawaban`(idsoal int(10), idkat int(10), nosoal int(10), idpel int(10),idsiswa int(10), kuncijwb varchar(10))
BEGIN
insert into tbl_jawab_soal (id_soal,id_kat_soal,no_soal,id_pel,id_siswa,kunci) values (idsoal,idkat,nosoal,idpel,idsiswa,kuncijwb);
END$$

DELIMITER ;

/* Procedure structure for procedure `simpanKategori` */

drop procedure if exists `simpanKategori`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpanKategori`(nama varchar(100))
BEGIN
insert into tbl_kat_soal(nama_kat) values(nama);
END$$

DELIMITER ;

/* Procedure structure for procedure `simpanMatPel` */

drop procedure if exists `simpanMatPel`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpanMatPel`(nama varchar(100), durasi int(20))
BEGIN
insert into tbl_pelajaran(nama_pel,lama_waktu) values (nama,durasi);
END$$

DELIMITER ;

/* Procedure structure for procedure `simpanSiswa` */

drop procedure if exists `simpanSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpanSiswa`(induk varchar(20), nama varchar(100), lahir varchar(100), almt varchar(200), pass varchar(30))
BEGIN
insert into tbl_siswa(no_induk,nama_siswa,kelahiran,alamat,password,foto) values (induk,nama,lahir,almt,pass,'no-photo.jpg');
END$$

DELIMITER ;

/* Procedure structure for procedure `simpanSoal` */

drop procedure if exists `simpanSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpanSoal`(nosoal int(5),idpel int(5),idkat int(5),soal varchar(800), jwba varchar(100), jwbb varchar(100), jwbc varchar(100), jwbd varchar(100), knci varchar(3))
BEGIN
insert into tbl_soal(no_soal,id_pelajaran,id_kategori,pertanyaan,jwb_a,jwb_b,jwb_c,jwb_d,kunci) values (nosoal,idpel,idkat,soal,jwba,jwbb,jwbc,jwbd,knci);
END$$

DELIMITER ;

/* Procedure structure for procedure `tampilEditSoal` */

drop procedure if exists `tampilEditSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tampilEditSoal`(id int(10))
BEGIN
select * from tbl_soal where id_soal=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `tampilHasilTesSementara` */

drop procedure if exists `tampilHasilTesSementara`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tampilHasilTesSementara`(idkat int(10),nosoal int(10),idsiswa int(10),jwb varchar(10))
BEGIN
select * from tbl_jawab_soal where id_kat_soal=idkat and no_soal=nosoal and id_siswa=idsiswa and kunci=jwb;
END$$

DELIMITER ;

/* Procedure structure for procedure `tampilKumpulanSoal` */

drop procedure if exists `tampilKumpulanSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tampilKumpulanSoal`(id int(10),nosoal int(10),idpel int(10))
BEGIN
select id_soal,pertanyaan  from tbl_soal left join (tbl_kat_soal,tbl_pelajaran) on tbl_soal.id_kategori=tbl_kat_soal.id_kat
and tbl_soal.id_pelajaran=tbl_pelajaran.id_pel where id_kategori=id and no_soal=nosoal and id_pelajaran=idpel;
END$$

DELIMITER ;

/* Procedure structure for procedure `totalSiswa` */

drop procedure if exists `totalSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `totalSiswa`()
BEGIN
select * from tbl_siswa;
END$$

DELIMITER ;

/* Procedure structure for procedure `updateDataSiswa` */

drop procedure if exists `updateDataSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateDataSiswa`(id_siswa int(10),nama varchar(100),lahir varchar(100),almt varchar(200))
BEGIN
update tbl_siswa set nama_siswa=nama, kelahiran=lahir, alamat=almt where no_induk=id_siswa;
END$$

DELIMITER ;

/* Procedure structure for procedure `updateFotoSiswa` */

drop procedure if exists `updateFotoSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateFotoSiswa`(n_induk int(10), f_baru varchar(40))
BEGIN
update tbl_siswa set foto=f_baru where no_induk=n_induk;
END$$

DELIMITER ;

/* Procedure structure for procedure `updateKat` */

drop procedure if exists `updateKat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateKat`(nama varchar(100), id int(10))
BEGIN
update tbl_kat_soal set nama_kat=nama where id_kat=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `updateMat` */

drop procedure if exists `updateMat`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateMat`(nama varchar(100),durasi int(10),id int(10))
BEGIN
update tbl_pelajaran set nama_pel=nama,lama_waktu=durasi where id_pel=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `updatePasswordSiswa` */

drop procedure if exists `updatePasswordSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePasswordSiswa`(id_siswa int(10),pwd varchar(40))
BEGIN
update tbl_siswa set password=pwd where no_induk=id_siswa;
END$$

DELIMITER ;

/* Procedure structure for procedure `updateSiswa` */

drop procedure if exists `updateSiswa`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSiswa`(id varchar(10),nama varchar(100),lahir varchar(100),almt varchar(200),pass varchar(50))
BEGIN
update tbl_siswa set nama_siswa=nama,kelahiran=lahir,alamat=almt,password=pass where no_induk=id;
END$$

DELIMITER ;

/* Procedure structure for procedure `updateSoal` */

drop procedure if exists `updateSoal`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSoal`(id int(10),soal varchar(500),jwba varchar(200),jwbb varchar(200),jwbc varchar(200),jwbd varchar(200),knci varchar(2))
BEGIN
update tbl_soal set pertanyaan=soal,jwb_a=jwba,jwb_b=jwbb,jwb_c=jwbc,jwb_d=jwbd,kunci=knci where id_soal=id;
END$$

DELIMITER ;

/* Function  structure for function  `tes` */

drop function  if exists `tes`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `tes`(id_kat int(10),no_soal int(10),id_siswa int(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN
declare hasil int;
select count(tbl_jawab_soal.kunci) as jml into hasil from tbl_jawab_soal where id_kat_soal=id_kat and no_soal=no_soal and id_siswa=id_siswa and kunci='benar';
return hasil;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
