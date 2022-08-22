-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 04:17 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add data warga', 7, 'add_datawarga'),
(26, 'Can change data warga', 7, 'change_datawarga'),
(27, 'Can delete data warga', 7, 'delete_datawarga'),
(28, 'Can view data warga', 7, 'view_datawarga'),
(29, 'Can add data kriteria', 8, 'add_datakriteria'),
(30, 'Can change data kriteria', 8, 'change_datakriteria'),
(31, 'Can delete data kriteria', 8, 'delete_datakriteria'),
(32, 'Can view data kriteria', 8, 'view_datakriteria'),
(33, 'Can add data sub kriteria', 9, 'add_datasubkriteria'),
(34, 'Can change data sub kriteria', 9, 'change_datasubkriteria'),
(35, 'Can delete data sub kriteria', 9, 'delete_datasubkriteria'),
(36, 'Can view data sub kriteria', 9, 'view_datasubkriteria'),
(37, 'Can add data penilaian', 10, 'add_datapenilaian'),
(38, 'Can change data penilaian', 10, 'change_datapenilaian'),
(39, 'Can delete data penilaian', 10, 'delete_datapenilaian'),
(40, 'Can view data penilaian', 10, 'view_datapenilaian');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$hsTYlFDK1L7pXr05nW5vjz$X/2m/RHhWaD5Stum5ZOaZXT9wUfgB3+nioxDzGtS2ZY=', '2022-08-16 10:08:56.906189', 1, 'admin', '', '', 'yuyung.yk08@gmail.com', 1, 1, '2022-08-14 13:56:22.944728');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datakriteria_datakriteria`
--

CREATE TABLE `datakriteria_datakriteria` (
  `id` bigint(20) NOT NULL,
  `idkriteria` varchar(100) NOT NULL,
  `kodekriteria` varchar(100) NOT NULL,
  `namakriteria` varchar(100) NOT NULL,
  `bobot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datakriteria_datakriteria`
--

INSERT INTO `datakriteria_datakriteria` (`id`, `idkriteria`, `kodekriteria`, `namakriteria`, `bobot`) VALUES
(1, '001', 'SR', 'Status Rumah', '3'),
(2, '002', 'FR', 'Fasilitas Rumah', '3'),
(4, '004', 'PH', 'Penghasilan', '4'),
(5, '005', 'TG', 'Tanggungan', '4'),
(8, '006', 'KD', 'Kendaraan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `datapenilaian`
--

CREATE TABLE `datapenilaian` (
  `id` bigint(20) NOT NULL,
  `idpenilaian` varchar(100) NOT NULL,
  `kodealternatif` varchar(100) NOT NULL,
  `namawarga` varchar(100) NOT NULL,
  `statusrumah` varchar(100) NOT NULL,
  `fasilitasrumah` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `tanggungan` varchar(100) NOT NULL,
  `kendaraan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datapenilaian`
--

INSERT INTO `datapenilaian` (`id`, `idpenilaian`, `kodealternatif`, `namawarga`, `statusrumah`, `fasilitasrumah`, `pekerjaan`, `penghasilan`, `tanggungan`, `kendaraan`) VALUES
(5, '001', '3503026605590001', 'Katmini', 'Milik Sendiri', 'Kurang Lengkap', 'Pensiunan/IRT', '1 jt - 1,5 jt', '3', 'Memiliki'),
(6, '001', '3503021203940003', 'Imam Sudiro', 'Sewa/Kontrak', 'Lengkap', 'Pensiunan/IRT', '2 jt - 2,5 jt', '2', 'Memiliki'),
(7, '001', '3503022807900002', 'Bintoro', 'Milik Sendiri', 'Kurang Lengkap', 'Petani/Nelayan', 'Dibawah 1 jt', '3', 'Memiliki'),
(8, '001', '3503025408730001', 'Suyatmi', 'Sewa/Kontrak', 'Kurang Lengkap', 'Wiraswasta', '2 jt - 2,5 jt', '3', 'Tidak Memiliki'),
(9, '001', '3503021704590001', 'Sugiono', 'Sewa/Kontrak', 'Kurang Lengkap', 'Tidak Bekerja/Serabutan', 'Dibawah 1 jt', '4', 'Tidak Memiliki'),
(10, '001', '3503025402030001', 'Wulan Febriani', 'Milik Sendiri', 'Lengkap', 'Wiraswasta', '2 jt - 2,5 jt', '3', 'Memiliki'),
(13, '001', '33200000000', 'Suratman', 'Milik Sendiri', 'Lengkap', 'Tidak Bekerja/Serabutan', 'Dibawah 1 jt', '4', 'Memiliki');

-- --------------------------------------------------------

--
-- Table structure for table `datasubkriteria`
--

CREATE TABLE `datasubkriteria` (
  `id` bigint(20) NOT NULL,
  `idsubkriteria` varchar(100) NOT NULL,
  `idkriteria` varchar(100) NOT NULL,
  `no` varchar(100) NOT NULL,
  `namakriteria` varchar(100) DEFAULT NULL,
  `kodekriteria` varchar(100) DEFAULT NULL,
  `namasubkriteria` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datasubkriteria`
--

INSERT INTO `datasubkriteria` (`id`, `idsubkriteria`, `idkriteria`, `no`, `namakriteria`, `kodekriteria`, `namasubkriteria`, `nilai`) VALUES
(4, '0001', '001', '1', 'Status Rumah', 'SR1', 'Sewa/Kontrak', '3'),
(5, '0002', '002', '2', 'Status Rumah', 'SR2', 'Milik Sendiri', '1'),
(6, '0003', '003', '3', 'Fasilitas Rumah', 'FR1', 'Kurang Lengkap', '3'),
(7, '0004', '004', '4', 'Fasilitas Rumah', 'FR2', 'Lengkap', '2'),
(8, '0005', '005', '5', 'Fasilitas Rumah', 'FR3', 'Sangat Lengkap', '1'),
(9, '0006', '006', '6', 'Pekerjaan', 'PK1', 'Tidak Bekerja/Serabutan', '5'),
(10, '0007', '007', '7', 'Pekerjaan', 'PK2', 'Pensiunan/IRT', '4'),
(11, '0008', '008', '8', 'Pekerjaan', 'PK3', 'Petani/Nelayan', '3'),
(12, '0009', '009', '9', 'Pekerjaan', 'PK4', 'Wiraswasta', '2'),
(13, '0010', '010', '10', 'Pekerjaan', 'PK5', 'Pegawai Swasta', '1'),
(14, '0011', '011', '11', 'Penghasilan', 'PH1', 'Dibawah 1jt', '4'),
(15, '0012', '012', '12', 'Penghasilan', 'PH2', '1 jt - 1,5 jt', '3'),
(16, '0013', '013', '13', 'Penghasilan', 'PH3', '2 jt - 2,5 jt', '2'),
(17, '0014', '014', '14', 'Penghasilan', 'PH4', 'Diatas 3 jt', '1'),
(18, '0015', '015', '15', 'Tanggungan', 'TG1', '4', '4'),
(19, '0016', '016', '16', 'Tanggungan', 'TG2', '3', '3'),
(20, '0017', '017', '17', 'Tanggungan', 'TG3', '2', '2'),
(21, '0018', '018', '18', 'Tanggungan', 'TG4', '1', '1'),
(22, '0019', '019', '19', 'Kendaraan', 'KD1', 'Memiliki', '2'),
(23, '0020', '020', '20', 'Kendaraan', 'KD2', 'Tidak Memiliki', '1');

-- --------------------------------------------------------

--
-- Table structure for table `datawarga_datawarga`
--

CREATE TABLE `datawarga_datawarga` (
  `id` bigint(20) NOT NULL,
  `idwarga` varchar(100) NOT NULL,
  `no` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `namawarga` varchar(100) NOT NULL,
  `umur` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `fasilitasrumah` varchar(100) DEFAULT NULL,
  `kendaraan` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `penghasilan` varchar(100) DEFAULT NULL,
  `statusrumah` varchar(100) DEFAULT NULL,
  `tanggungan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datawarga_datawarga`
--

INSERT INTO `datawarga_datawarga` (`id`, `idwarga`, `no`, `nik`, `namawarga`, `umur`, `telepon`, `fasilitasrumah`, `kendaraan`, `pekerjaan`, `penghasilan`, `statusrumah`, `tanggungan`) VALUES
(2, '01', '1', '3503026605590001', 'Katmini', '74', '082245458262', 'Kurang Lengkap', 'Memiliki', 'Pensiunan/IRT', '1 jt - 1,5 jt', 'Milik Sendiri', '3'),
(4, '02', '2', '3503021203940003', 'Imam Sudiro', '76', '085231970269', 'Lengkap', 'Memiliki', 'Pensiunan/IRT', '2 jt - 2,5 jt', 'Sewa/Kontrak', '2'),
(5, '03', '3', '3503022807900002', 'Bintoro', '73', '085204594311', 'Kurang Lengkap', 'Memiliki', 'Petani/Nelayan', 'Dibawah 1 jt', 'Milik Sendiri', '3'),
(6, '04', '4', '3503025408730001', 'Suyatmi', '69', '081235527605', 'Kurang Lengkap', 'Tidak Memiliki', 'Wiraswasta', '2 jt - 2,5 jt', 'Sewa/Kontrak', '3'),
(7, '05', '5', '3503021704590001', 'Sugiono', '76', '082236294131', 'Kurang Lengkap', 'Tidak Memiliki', 'Tidak Bekerja/Serabutan', 'Dibawah 1 jt', 'Sewa/Kontrak', '4'),
(8, '06', '6', '3503025402030001', 'Wulan Febriani', '65', '08223266971', 'Lengkap', 'Memiliki', 'Wiraswasta', '2 jt - 2,5 jt', 'Milik Sendiri', '3');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'datakriteria', 'datakriteria'),
(10, 'datapenilaian', 'datapenilaian'),
(9, 'datasubkriteria', 'datasubkriteria'),
(7, 'datawarga', 'datawarga'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-10 13:29:38.685939'),
(2, 'auth', '0001_initial', '2022-08-10 13:29:50.669430'),
(3, 'admin', '0001_initial', '2022-08-10 13:29:54.012944'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-10 13:29:54.106696'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-10 13:29:54.169164'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-10 13:29:55.669059'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-10 13:29:56.887722'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-10 13:29:56.997151'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-10 13:29:57.106478'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-10 13:29:57.840781'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-10 13:29:57.856464'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-10 13:29:57.918922'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-10 13:29:58.153317'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-10 13:29:58.309556'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-10 13:29:58.450171'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-10 13:29:58.512631'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-10 13:29:58.731342'),
(18, 'sessions', '0001_initial', '2022-08-10 13:29:59.496935'),
(19, 'datawarga', '0001_initial', '2022-08-10 13:48:48.145298'),
(20, 'datakriteria', '0001_initial', '2022-08-10 14:35:46.259043'),
(21, 'datasubkriteria', '0001_initial', '2022-08-10 14:35:47.587075'),
(22, 'datasubkriteria', '0002_rename_namasubkriteria_datasubkriteria_subkriteria', '2022-08-12 05:41:21.683851'),
(23, 'datasubkriteria', '0003_auto_20220812_1242', '2022-08-12 05:43:00.680971'),
(24, 'datasubkriteria', '0004_datasubkriteria_namakriteria', '2022-08-12 05:58:59.461313'),
(25, 'datasubkriteria', '0005_auto_20220812_1303', '2022-08-12 06:03:52.544193'),
(26, 'datasubkriteria', '0006_auto_20220812_1304', '2022-08-12 06:05:17.241348'),
(27, 'datapenilaian', '0001_initial', '2022-08-14 07:02:14.272456'),
(28, 'datawarga', '0002_auto_20220815_1329', '2022-08-15 06:30:21.607188');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ba1i28jdodszw8rla1szps8ig9fdrsoh', '.eJxVjEEOgjAQRe_StWlgOi3UpXvOQGY6raCmTSisjHcXEha6_e-9_1Yjbes0bjUu4yzqqlp1-d2YwjPmA8iD8r3oUPK6zKwPRZ-06qFIfN1O9-9gojrtNQAZYEYQ61pyHTrDRLYzQdhLYwUJu9S74Cww7moA7NvkDSXrG_Tq8wXXETdl:1oNtVI:W5MwZtx350K9pAcWRqlOOEWPOAC6MMHttTTNzwlqStE', '2022-08-30 10:08:56.975484'),
('tzyfc3dkbayiw712k8usubyp9rfz80tj', 'e30:1oNEtE:-N_5lIVtnjPfQnV5VVmy73-LF6oT6X_Kk8YZF6V3y-4', '2022-08-28 14:46:56.537811'),
('zde1wvkh4ri7t4dg8zm6l9xt41xu0lda', '.eJxVjMEOwiAQRP-FsyFdgS149O43kAUWqRqalPZk_Hdp0oNe5vDmzbyFp20tfmu8-CmJiwBx-mWB4pPrXqQH1fss41zXZQpyV-TRNnmbE7-uh_t3UKiVvlYKlLKAeggA2cTk8OwU9BiQtEGwDAGZLccOMiFximzGnGlULmjx-QKw9zeh:1oNSdw:QQWRZamHVTORbMxbabNPfcObxDGB-Ru1XzbFDw8Qfl0', '2022-08-29 05:28:04.523857');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `datakriteria_datakriteria`
--
ALTER TABLE `datakriteria_datakriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datapenilaian`
--
ALTER TABLE `datapenilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasubkriteria`
--
ALTER TABLE `datasubkriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datawarga_datawarga`
--
ALTER TABLE `datawarga_datawarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datakriteria_datakriteria`
--
ALTER TABLE `datakriteria_datakriteria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `datapenilaian`
--
ALTER TABLE `datapenilaian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `datasubkriteria`
--
ALTER TABLE `datasubkriteria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `datawarga_datawarga`
--
ALTER TABLE `datawarga_datawarga`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
