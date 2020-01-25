

DROP TABLE IF EXISTS `cat_bisnis_new`;

CREATE TABLE `cat_bisnis_new` (
  `id_cat_bisnis` int(11) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `temuan` varchar(2000) DEFAULT NULL,
  `klasifikasi_temuan` int(11) DEFAULT NULL,
  `kriteria` varchar(200) DEFAULT NULL,
  `dampak` varchar(200) DEFAULT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activities` int(5) DEFAULT NULL,
  `control_activities_value` int(11) DEFAULT NULL,
  `id_information_comunication` int(5) DEFAULT NULL,
  `information_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT NULL,
  `id_goal_strategic` int(5) DEFAULT NULL,
  `goal_strategic_value` int(11) DEFAULT NULL,
  `total_impact` int(11) DEFAULT NULL,
  `likelihood` float DEFAULT NULL,
  `repeated` varchar(10) DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `tl` varchar(100) DEFAULT NULL,
  `member` varchar(200) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `bop` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_bisnis`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `cat_operasional_new`;

CREATE TABLE `cat_operasional_new` (
  `id_cat_operasional` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `temuan` varchar(2000) DEFAULT NULL,
  `klasifikasi_temuan` int(11) DEFAULT NULL,
  `kriteria` varchar(200) DEFAULT NULL,
  `dampak` varchar(200) DEFAULT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activities` int(5) DEFAULT NULL,
  `control_activities_value` int(11) DEFAULT NULL,
  `id_information_comunication` int(5) DEFAULT NULL,
  `information_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT 0,
  `total_impact` int(11) DEFAULT NULL,
  `likelihood` float DEFAULT NULL,
  `repeated` varchar(10) DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(2000) DEFAULT NULL,
  `tanggapan_audit` varchar(2000) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `tl` varchar(100) DEFAULT NULL,
  `member` varchar(200) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `bop` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_operasional`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

