-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2021 pada 17.16
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gap_analysis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_goal`
--

CREATE TABLE `business_goal` (
  `ID_BUSINESS` int(11) NOT NULL,
  `ID_PERSPECTIVE` int(11) NOT NULL,
  `DESC_BUSINESS` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `business_goal`
--

INSERT INTO `business_goal` (`ID_BUSINESS`, `ID_PERSPECTIVE`, `DESC_BUSINESS`) VALUES
(1, 1, 'memberikan pengembalian investasi yang baik dari investasi bisnis yang memungkinkan Teknologi Informasi'),
(2, 1, 'mengelola risiko bisnis yang terkait dengan TI'),
(3, 1, 'meningkatkan tata kelola dan transparansi perusahaan'),
(4, 2, 'meningkatkan orientasi dan layanan pelanggan'),
(5, 2, 'menawarkan produk dan layanan yang kompetitif'),
(6, 2, 'membangun kesinambungan dan ketersediaan layanan'),
(7, 2, 'menciptakan ketangkasan dalam menanggapi perubahan kebutuhan bisnis'),
(8, 2, 'mencapai optimalisasi biaya pemberian layanan'),
(9, 2, 'memperoleh informasi yang andal dan berguna untuk pengambilan keputusan yang strategis'),
(10, 3, 'meningkatkan dan memelihara fungsionalitas proses bisnis'),
(11, 3, 'meminimalkan biaya proses'),
(12, 3, 'memberikan kepatuhan terhadap hukum, peraturan, dan kontrak eksternal'),
(13, 3, 'memberikan kepatuhan terhadap kebijakan internal'),
(14, 3, 'mengelola perubahan bisnis'),
(15, 3, 'meningkatkan dan mempertahankan produktivitas operasional dan staf'),
(16, 4, 'mengelola produk dan inovasi bisnis'),
(17, 4, 'memperoleh dan mempertahankan orang-orang yang terampil dan termotivasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_kriteria`
--

CREATE TABLE `informasi_kriteria` (
  `ID_KRITERIA` int(11) NOT NULL,
  `NAMA_KRITERIA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi_kriteria`
--

INSERT INTO `informasi_kriteria` (`ID_KRITERIA`, `NAMA_KRITERIA`) VALUES
(1, 'efektivitas'),
(2, 'efisiensi'),
(3, 'kerahasiaan'),
(4, 'integritas'),
(5, 'ketersediaan'),
(6, 'kepatuhan'),
(7, 'keandalan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_goals`
--

CREATE TABLE `it_goals` (
  `ID_IT_GOALS` int(11) NOT NULL,
  `IT_GOALS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `it_goals`
--

INSERT INTO `it_goals` (`ID_IT_GOALS`, `IT_GOALS`) VALUES
(1, 'menanggapi kebutuhan bisnis yang selaras dengan strategi bisnis'),
(2, 'menanggapi persyaratan tata kelola sesuai dengan arahan atasan'),
(3, 'memastikan kepuasan pengguna akhir dengan penawaran layanan dan tingkat layanan'),
(4, 'mengoptimalkan penggunaan informasi'),
(5, 'menciptakan ketangkasan IT'),
(6, 'menentukan bagaimana persyaratan fungsional dan kontrol bisnis diterjemahkan dalam solusi otomatis yang efektif dan efisien'),
(7, 'memperoleh dan memelihara sistem aplikasi yang terintegrasi dan terstandarisasi'),
(8, 'memperoleh dan memelihara infrastruktur yang terintegrasi dan terstandarisasi'),
(9, 'memperoleh dan memelihara keterampilan TI yang merespons strategi TI'),
(10, 'memastikan kepuasan timbal balik dari hubungan pihak ketiga'),
(11, 'memastikan integrasi aplikasi yang mulus ke dalam proses bisnis'),
(12, 'memastikan transparansi dan pemahaman tentang biaya, manfaat, strategi, kebijakan, dan tingkat layanan TI'),
(13, 'memastikan penggunaan dan kinerja aplikasi dan solusi teknologi yang tepat'),
(14, 'memperhitungkan dan melindungi semua aset TI'),
(15, 'mengoptimalkan infrastruktur, sumber daya, dan kemampuan TI'),
(16, 'mengurangi solusi dan cacat pengiriman layanan dan pengerjaan ulang'),
(17, 'melindungi pencapaian tujuan TI'),
(18, 'menetapkan kejelasan dampak bisnis dari risiko terhadap tujuan dan sumber daya TI'),
(19, 'memastikan bahwa informasi penting dan rahasia dirahasiakan dari mereka yang seharusnya tidak memiliki akses ke sana'),
(20, 'memastikan bahwa transaksi bisnis otomatis dan pertukaran informasi dapat dipercaya'),
(21, 'memastikan bahwa layanan dan infrastruktur TI dapat menahan dan memulihkan dengan baik dari kegagalan karena kesalahan, serangan yang disengaja, atau bencana'),
(22, 'memastikan dampak bisnis minimum jika terjadi gangguan atau perubahan layanan TI'),
(23, 'memastikan layanan IT tersedia sesuai kebutuhan'),
(24, 'meningkatkan efisiensi biaya TI dan kontribusinya terhadap profitabilitas bisnis'),
(25, 'memberikan proyek tepat waktu dan sesuai anggaran, serta memenuhi standar kualitas'),
(26, 'menjaga integritas informasi dan pemrosesan infrastruktur'),
(27, 'memastikan kepatuhan TI dengan undang-undang, peraturan, dan kontrak'),
(28, 'memastikan bahwa TI menunjukkan kualitas layanan yang hemat biaya, peningkatan berkelanjutan, dan kesiapan untuk perubahan di masa depan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_process`
--

CREATE TABLE `it_process` (
  `ID_IT_PROCESS` int(11) NOT NULL,
  `ID_JENIS_IT` int(11) NOT NULL,
  `KODE_IT` varchar(4) NOT NULL,
  `IT_PROCESS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `it_process`
--

INSERT INTO `it_process` (`ID_IT_PROCESS`, `ID_JENIS_IT`, `KODE_IT`, `IT_PROCESS`) VALUES
(1, 1, 'PO1', 'Menentukan rencana TI yang  strategis'),
(2, 1, 'PO2', 'Menentukan arsitektur informasi'),
(3, 1, 'PO3', 'Menentukan arah teknologi'),
(4, 1, 'PO4', 'Mendefinisikan proses TI, organisasi dan hubungan TI'),
(5, 1, 'PO5', 'Mengelola investasi TI'),
(6, 1, 'PO6', 'Mengkomunikasikan tujuan dan arah manajemen'),
(7, 1, 'PO7', 'Mengelola sumber daya manusia TI'),
(8, 1, 'PO8', 'Mengelola kualitas'),
(9, 1, 'PO9', 'Menilai dan mengelola risiko TI'),
(10, 1, 'PO10', 'Mengelola proyek'),
(11, 2, 'AI1', 'Mengidentifikasi solusi otomatis'),
(12, 2, 'AI2', 'Memperoleh dan memelihara aplikasi perangkat lunak'),
(13, 2, 'AI3', 'Memperoleh dan memelihara infrastruktur teknologi'),
(14, 2, 'AI4', 'Mengaktifkan operasi dan penggunaan'),
(15, 2, 'AI5', 'Pengadaan sumber daya TI'),
(16, 2, 'AI6', 'Mengelola perubahan'),
(17, 2, 'AI7', 'Melakukan instalasi dan akreditasi solusi dan perubahan'),
(18, 3, 'DS1', 'Menentukan dan mengelola tingkat layanan'),
(19, 3, 'DS2', 'Mengelola layanan pihak ketiga'),
(20, 3, 'DS3', 'Mengelola kinerja dan kapasitas'),
(21, 3, 'DS4', 'Memastikan layanan berkelanjutan'),
(22, 3, 'DS5', 'Memastikan keamanan sistem'),
(23, 3, 'DS6', 'Mengidentifikasi dan mengalokasikan biaya'),
(24, 3, 'DS7', 'Mengedukasi dan melatih para pengguna'),
(25, 3, 'DS8', 'Mengelola meja layanan dan insiden'),
(26, 3, 'DS9', 'Mengelola konfigurasi'),
(27, 3, 'DS10', 'Mengelola permasalahan'),
(28, 3, 'DS11', 'Mengelola data'),
(29, 3, 'DS12', 'Mengelola lingkungan fisik'),
(30, 3, 'DS13', 'Mengelola operasi'),
(31, 4, 'ME1', 'Monitor dan evaluasi kinerja TI'),
(32, 4, 'ME2', 'Monitor dan evaluasi kontrol internal'),
(33, 4, 'ME3', 'Memastikan kepatuhan terhadap persyaratan eksternal'),
(34, 4, 'ME4', 'Menyediakan tata kelola TI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_it_proses_kuesioner`
--

CREATE TABLE `jawaban_it_proses_kuesioner` (
  `ID_JAWABAN` int(11) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `ID_IT_PROCESS` int(11) NOT NULL,
  `JAWABAN` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`JAWABAN`)),
  `MATURITY_AS_IS` float DEFAULT NULL,
  `MATURITY_TARGET` float DEFAULT NULL,
  `REKOMENDASI` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban_it_proses_kuesioner`
--

INSERT INTO `jawaban_it_proses_kuesioner` (`ID_JAWABAN`, `ID_USER`, `ID_IT_PROCESS`, `JAWABAN`, `MATURITY_AS_IS`, `MATURITY_TARGET`, `REKOMENDASI`) VALUES
(26, NULL, 4, '{\"95\":{\"nilai\":0.66,\"level\":0},\"96\":{\"nilai\":1,\"level\":1},\"97\":{\"nilai\":0,\"level\":1},\"98\":{\"nilai\":1,\"level\":1},\"99\":{\"nilai\":0.33,\"level\":1},\"100\":{\"nilai\":0.66,\"level\":2},\"101\":{\"nilai\":1,\"level\":2},\"102\":{\"nilai\":0,\"level\":2},\"103\":{\"nilai\":0,\"level\":3},\"104\":{\"nilai\":0.33,\"level\":3},\"105\":{\"nilai\":0.66,\"level\":3},\"106\":{\"nilai\":1,\"level\":3},\"107\":{\"nilai\":0,\"level\":3},\"108\":{\"nilai\":0.66,\"level\":3},\"109\":{\"nilai\":1,\"level\":3},\"110\":{\"nilai\":0.33,\"level\":3},\"111\":{\"nilai\":0.66,\"level\":3},\"112\":{\"nilai\":0.66,\"level\":4},\"113\":{\"nilai\":1,\"level\":4},\"114\":{\"nilai\":0.33,\"level\":4},\"115\":{\"nilai\":1,\"level\":4},\"116\":{\"nilai\":1,\"level\":4},\"117\":{\"nilai\":0,\"level\":4},\"118\":{\"nilai\":0,\"level\":4},\"119\":{\"nilai\":0,\"level\":4},\"120\":{\"nilai\":0.33,\"level\":5},\"121\":{\"nilai\":0.66,\"level\":5},\"122\":{\"nilai\":1,\"level\":5},\"123\":{\"nilai\":0.33,\"level\":5},\"124\":{\"nilai\":1,\"level\":5}}', 2.46128, NULL, NULL),
(27, NULL, 15, '{\"885\":{\"nilai\":1,\"level\":0},\"886\":{\"nilai\":0,\"level\":0},\"887\":{\"nilai\":1,\"level\":1},\"888\":{\"nilai\":0.66,\"level\":1},\"889\":{\"nilai\":0.33,\"level\":1},\"890\":{\"nilai\":1,\"level\":1},\"891\":{\"nilai\":0,\"level\":2},\"892\":{\"nilai\":0.33,\"level\":2},\"893\":{\"nilai\":1,\"level\":2},\"894\":{\"nilai\":0.66,\"level\":2},\"895\":{\"nilai\":0.33,\"level\":2},\"896\":{\"nilai\":1,\"level\":2},\"897\":{\"nilai\":0,\"level\":3},\"898\":{\"nilai\":1,\"level\":3},\"899\":{\"nilai\":0.66,\"level\":3},\"900\":{\"nilai\":0,\"level\":3},\"901\":{\"nilai\":1,\"level\":3},\"902\":{\"nilai\":0.33,\"level\":3},\"903\":{\"nilai\":1,\"level\":4},\"904\":{\"nilai\":1,\"level\":4},\"905\":{\"nilai\":0,\"level\":4},\"906\":{\"nilai\":1,\"level\":4},\"907\":{\"nilai\":1,\"level\":4},\"908\":{\"nilai\":0.66,\"level\":4},\"909\":{\"nilai\":1,\"level\":4},\"910\":{\"nilai\":1,\"level\":5},\"911\":{\"nilai\":0.66,\"level\":5},\"912\":{\"nilai\":1,\"level\":5},\"913\":{\"nilai\":0.66,\"level\":5},\"914\":{\"nilai\":1,\"level\":5},\"915\":{\"nilai\":1,\"level\":5},\"916\":{\"nilai\":0.66,\"level\":5}}', 2.73973, 5, '{\"886\":{\"pertanyaan\":\"Apakah Perusahaan menyadari perlunya kebijakan dan prosedur pengadaan yang jelas untuk memastikan bahwa semua sumber daya IT tersedia secara tepat waktu dan hemat biaya?\",\"rekomendasi\":\"Perlu dilakukan usaha\",\"level\":0,\"nilai\":0},\"888\":{\"pertanyaan\":\"Kontrak untuk perolehan sumber daya IT dikembangkan dan dikelola oleh manajer proyek dan individu lain yang melaksanakan penilaian profesional mereka daripada sebagai hasil dari prosedur dan kebijakan formal.\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":1,\"nilai\":0.66},\"889\":{\"pertanyaan\":\"Kontrak untuk akuisisi dikelola pada akhir proyek daripada secara berkelanjutan.\",\"rekomendasi\":\"Perlu melakukan\\/menerapkan\",\"level\":1,\"nilai\":0.33},\"891\":{\"pertanyaan\":\"Ada kesadaran organisasi tentang perlunya memiliki kebijakan dan prosedur dasar untuk akuisisi IT.\",\"rekomendasi\":\"Perlu dilakukan usaha\",\"level\":2,\"nilai\":0},\"892\":{\"pertanyaan\":\"Kebijakan-kebijakan dan prosedur sudah sebagian terintegrasi dengan proses pengadaan organisasi bisnis secara keseluruhan.\",\"rekomendasi\":\"Perlu melakukan\\/menerapkan\",\"level\":2,\"nilai\":0.33},\"894\":{\"pertanyaan\":\"Apakah tanggung jawab dan akuntabilitas untuk pengadaan IT dan manajemen kontrak ditentukan oleh pengalaman masing-masing manajer kontrak?\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":2,\"nilai\":0.66},\"895\":{\"pertanyaan\":\"Pentingnya manajemen pemasok dan manajemen hubungan diakui tapi ditangani berdasarkan inisiatif individu.\",\"rekomendasi\":\"Perlu melakukan\\/menerapkan\",\"level\":2,\"nilai\":0.33},\"897\":{\"pertanyaan\":\"Apakah manajemen telah menerapkan kebijakan dan prosedur untuk akuisisi IT?\",\"rekomendasi\":\"Perlu dilakukan usaha\",\"level\":3,\"nilai\":0},\"899\":{\"pertanyaan\":\"Apakah ada standar IT untuk perolehan sumber daya IT?\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":3,\"nilai\":0.66},\"900\":{\"pertanyaan\":\"Pemasok sumber daya IT diintegrasikan ke dalam mekanisme manajemen proyek organisasi dari perspektif manajemen kontrak.\",\"rekomendasi\":\"Perlu dilakukan usaha\",\"level\":3,\"nilai\":0},\"902\":{\"pertanyaan\":\"Manajemen TI mengkomunikasikan kebutuhan akuisisi yang sesuai serta manajemen kontrak pada seluruh fungsi IT.\",\"rekomendasi\":\"Perlu melakukan\\/menerapkan\",\"level\":3,\"nilai\":0.33},\"905\":{\"pertanyaan\":\"Pengukuran pada kontrak dan manajemen pengadaan diambil secara relevan dengan kasus bisnis untuk akuisisi IT.\",\"rekomendasi\":\"Perlu dilakukan usaha\",\"level\":4,\"nilai\":0},\"908\":{\"pertanyaan\":\"Manajemen strategis hubungan sedang berkembang.\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":4,\"nilai\":0.66},\"911\":{\"pertanyaan\":\"Manajemen telah menetapkan kesesuaian terhadap kebijakan dan metode akuisisi TI yang harus dipatuhi.\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":5,\"nilai\":0.66},\"913\":{\"pertanyaan\":\"Koneksi yang sehat akan menjadikan waktu dengan kebanyakan penyalur dan mitra, dan koneksi yang baik dengan cara diukur dan dipantau\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":5,\"nilai\":0.66},\"916\":{\"pertanyaan\":\"Apakah manajemen IT menghubungkan kepentingan dengan cara strategis dari akuisisi yang sesuai dan manajemen kontrak yang ada di seluruh fungsi IT?\",\"rekomendasi\":\"Perlu ditingkatkan\",\"level\":5,\"nilai\":0.66}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_it_process`
--

CREATE TABLE `jenis_it_process` (
  `ID_JENIS_IT` int(11) NOT NULL,
  `KODE_JENIS` varchar(5) NOT NULL,
  `NAMA_JENIS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_it_process`
--

INSERT INTO `jenis_it_process` (`ID_JENIS_IT`, `KODE_JENIS`, `NAMA_JENIS`) VALUES
(1, 'PO', 'Perencanaan dan Pengaturan'),
(2, 'AI', 'Memperoleh dan Pengimplementasian'),
(3, 'DS', 'Pemberian dan Dukungan'),
(4, 'ME', 'Monitor dan Evaluasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_pertanyaan`
--

CREATE TABLE `list_pertanyaan` (
  `ID_PERTANYAAN` int(11) NOT NULL,
  `ID_IT_PROCESS` int(11) NOT NULL,
  `DESKRIP_PERTANYAAN` varchar(1000) NOT NULL,
  `LEVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_pertanyaan`
--

INSERT INTO `list_pertanyaan` (`ID_PERTANYAAN`, `ID_IT_PROCESS`, `DESKRIP_PERTANYAAN`, `LEVEL`) VALUES
(1, 1, 'Perencanaan strategis pada IT dijalankan', 0),
(2, 1, 'Manajemen di perusahaan memiliki kesadaran bahwa perencanaan strategis IT diperlukan untuk mendukung tujuan bisnis', 0),
(3, 1, 'Manajemen IT pada perusahaan mengetahui bahwa perencanaan strategis pada IT dibutuhkan di organisasi', 1),
(4, 1, 'Perencanaan IT dilakukan untuk memenuhi tujuan bisnis tertentu', 1),
(5, 1, 'Perencanaan strategis IT pada perusahaan dibahas pada pertemuan manajemen IT', 1),
(6, 1, 'Penyelarasan kebutuhan bisnis perusahaan dan teknologi merupakan reaksi dari kejadian tertentu', 1),
(7, 1, 'Resiko-resiko pada strategi diidentifikasi secara informal dari proyek ke proyek', 1),
(8, 1, 'Perencanaan strategis IT pada perusahaan selaras dengan manajemen bisnis sesuai dengan kebutuhan', 2),
(9, 1, 'perusahaan memperbarui perencanaan IT sesuai dengan permintaan Manajemen', 2),
(10, 1, 'Keputusan strategis pada perusahaan didorong atas dasar proyek-demi-proyek dengan konsistensi dan dengan strategi organisasi secara keseluruhan', 2),
(11, 1, 'Resiko dan manfaat pengguna (dalam hal ini, mahasiswa) sebagai hasil dari keputusan strategis utama dikenali dengan cara intuitif.', 2),
(12, 1, 'Kebijakan dapat menentukan kapan dan bagaimana perencanaan strategis IT dilakukan pada perusahaan', 3),
(13, 1, 'Perencanaan strategis IT terstruktur dan didokumentasikan dan diketahui oleh semua staf perusahaan', 3),
(14, 1, 'Proses perencanaan IT pada perusahaan cukup baik dan terlihat bisa direalisasikan', 3),
(15, 1, 'Stategi IT pada perusahaan mencakup definisi resiko yang akan diambil oleh organisasi', 3),
(16, 1, 'Strategi keuangan, teknis, dan sumber daya manusia IT mempengaruhi pendapatan perusahaan', 3),
(17, 1, 'Perencanaan strategis IT dibahas pada pertemuan manajemen perusahaan', 3),
(18, 1, 'Perencanaan strategis IT pada perusahaan dijalankan dan manajemen dapat mengetahui jika ada kesalahan', 4),
(19, 1, 'Perencanaan strategis IT pada perusahaan merupakan fungsi manajemen yang ditentukan dengan tanggung jawab tingkat senior (senior-level responsibilities)', 4),
(20, 1, 'Manajemen perusahaan mampu memantau proses perencanaan strategis IT, membuat keputusan berdasarkan informasi dan mengukur efektivitasnya', 4),
(21, 1, 'Perencanaan IT jangka pendek dan panjang terjadi dan diturunkan pada organisasi dengan pembaharuan sesuai dengan kebutuhan', 4),
(22, 1, 'Strategi IT terkoordinasi dengan strategi perusahaan secara umum', 4),
(23, 1, 'Ada proses yang didefinisikan dengan baik untuk menentukan penggunaan sumber daya internal dan eksternal pada perusahaan', 4),
(24, 1, 'Perencanan strategis IT pada perusahaan menjadi sebuah proses hidup yang terdokumentasi, dipertimbangkan dalam penetapan tujuan bisnis secara terus-menerus, dan menghasilkan nilai bisnis', 5),
(25, 1, 'Pertimbangan resiko dan nilai tambah terus diperbarui dalam proses perencanaan strategis IT', 5),
(26, 1, 'Rencana IT jangka panjang di perusahaan dikembangan secara terus menerus dan terus diperbarui', 5),
(27, 1, 'Rencana strategis perusahaan mencakup bagaimana perkembangan teknologi baru dapat mendukung terciptanya kapabilitas bisnis baru dan meningkatkan keunggulan kompetitif organisasi', 5),
(28, 2, 'Ada kesadaran akan pentingnya arsitektur informasi bagi organisasi perusahaan', 0),
(29, 2, 'Pengetahuan, keahlian dan tanggung jawab yang diperlukan untuk mengembangkan arsitektur ini ada dalam organisasi perusahaan', 0),
(30, 2, 'Manajemen perusahaan menyadari kebutuhan akan arsitektur informasi', 1),
(31, 2, 'Pengembangan beberapa komponen arsitektur informasi pada perusahaan tidak terjadi secara ad hoc (permanen dan pembentukannya sejak semula tidak dimaksudkan hanya untuk sementara waktu dan untuk menangani peristiwa tertentu)', 1),
(32, 2, 'Alamat data arsitektur informasi pada perusahaan didorong oleh penawaran vendor perangkat lunak aplikasi', 1),
(33, 2, 'Adanya komunikasi yang konsisten tentang kebutuhan arsitektur informasi pada perusahaan', 1),
(34, 2, 'Proses pembangunan arsitektur informasi yang sama muncul dan diikuti oleh individu yang berbeda dalam organisasi perusahaan', 2),
(35, 2, 'Staf perusahaan memperoleh keterampilan mereka dalam membangun arsitektur informasi melalui pengalaman langsung dan pengaplikasian teknik berulang kali', 2),
(36, 2, 'Anggota staf perusahaan yang mengembangkan komponen arsitektur informasi memerlukan rencana taktis', 2),
(37, 2, 'Arsitektur informasi penting untuk dapat dipahami dan diterima, karena itu tanggung jawab penyampaiannya ditetapkan dan dikomunikasikan dengan jelas oleh perusahaan', 3),
(38, 2, 'Prosedur, alat, dan teknik pada perusahaan (meskipun tidak canggih) telah distandarisasi dan didokumentasikan, serta merupakan bagian dari kegiatan pelatihan informal pada perusahaan', 3),
(39, 2, 'Kebijakan arsitektur informasi dasar perusahaan telah dikembangkan (termasuk beberapa persyaratan strategis), serta kepatuhan terhadap kebijakan, standar, dan alat ditegakkan secara konsisten pada perusahaan', 3),
(40, 2, 'Tersedianya fungsi administrasi data yang ditetapkan secara formal pada perusahaan. perusahaan juga menetapkan standar seluruh organisasi dan mulai melaporkan pengiriman dan penggunaan arsitektur informasi', 3),
(41, 2, 'Peralatan otomatis mulai digunakan, proses dan aturan yang digunakan tidak ditentukan oleh penawaran vendor', 3),
(42, 2, 'Adanya rencana pengembangan pelatihan formal, namun pelatihan formal masih didasarkan pada inisiatif staf individu perusahaan', 3),
(43, 2, 'Pengembangan dan penegakan arsitektur informasi didukung penuh oleh metode dan teknik formal yang ada pada perusahaan', 4),
(44, 2, 'Akuntabilitas untuk kinerja proses pengembangan arsitektur ditegakkan dan keberhasilan arsitektur informasi sedang diukur oleh perusahaan', 4),
(45, 2, 'Alat pendukung otomatis yang ada pada perusahaan telah disebarkan namun belum terintegrasi. Metrik dasar telah diidentifikasi dan sistem pengukuran sudah siap', 4),
(46, 2, 'Proses definisi arsitektur informasi bersifat proaktif dan berfokus pada pemenuhan kebutuhan bisnis perusahaan di masa depan', 4),
(47, 2, 'Administrasi data perusahaan secara aktif terlibat dalam semua upaya pengembangan aplikasi untuk memastikan konsistensi', 4),
(48, 2, 'Model data yang lebih kompleks sedang diimplementasikan untuk memanfaatkan konten informasi dari database dan repositori otomatis telah diterapkan sepenuhnya pada organisasi perusahaan', 4),
(49, 2, 'Sistem informasi eksekutif dan sistem pendukung keputusan pada perusahaan memanfaatkan informasi yang tersedia', 4),
(50, 2, 'Arsitektur informasi diterapkan secara konsisten di semua tingkatan organisasi perusahaan', 5),
(51, 2, 'Nilai arsitektur informasi bisnis perusahaan terus ditekankan', 5),
(52, 2, 'Personel TI pada perusahaan memiliki keahlian dan keterampilan yang diperlukan untuk mengembangkan dan memelihara arsitektur informasi yang kuat dan responsif yang mencerminkan semua persyaratan bisnis', 5),
(53, 2, 'Informasi yang disediakan oleh arsitektur informasi diterapkan secara konsisten dan ekstensif pada perusahaan', 5),
(54, 2, 'Penggunaan ekstensif pada perusahaan dibuat dari praktik industri yang baik dalam pengembangan dan pemeliharaan arsitektur informasi, termasuk proses peningkatan berkelanjutan', 5),
(55, 2, 'Adanya pendefinisian strategi untuk memanfaatkan informasi melalui data warehousing dan teknologi data mining pada perusahaan', 5),
(56, 2, 'Arsitektur informasi pada perusahaan terus meningkat dan mempertimbangkan informasi non-tradisional', 5),
(57, 3, 'perusahaan memerlukan perencanaan infrastruktur teknologi', 0),
(58, 3, 'perusahaan mengetahui dan dapat mengembangkan infrastruktur teknologi yang direncanakan', 0),
(59, 3, 'Penting adanya perencanaan untuk perubahan teknologi', 0),
(60, 3, 'Agar dapat mengalokasikan sumber daya, diperlukan perencanaan dalam perubahan teknologi', 0),
(61, 3, 'Penting adanya perencanaan infrastruktur teknologi', 1),
(62, 3, 'Perkembangan teknologi dan implementasinya pada perusahaan dilakukan saat diperlukan dan bersifat terisolasi', 1),
(63, 3, 'Dalam perencanaan infrastruktur, dilakukan menggunakan pendekatan reaktif dan fokus operasional', 1),
(64, 3, 'Arah pengembangan teknologi perusahaan tidak disebabkan adanya kontra antara rencana pengembangan perangkat keras, perangkat lunak sistem dan vendor dari perangkat lunak', 1),
(65, 3, 'Dampak dari perubahan teknologi dikomunikasikan secara konsisten', 1),
(66, 3, 'Adanya penyuluhan akan kebutuhan dari perencanaan teknologi', 2),
(67, 3, 'Perencanaan teknologi tidak lebih berfokus untuk menyelesaikan masalah teknis daripada memenuhi kebutuhan bisnis', 2),
(68, 3, 'Evaluasi dari perubahan teknologi diserahkan kepada orang yang berbeda yang mengikuti proses intuitif', 2),
(69, 3, 'Keterampilan dalam perencanaan teknologi didapat dari pembelajaran langsung dan penerapan teknik yang sudah dilakukan berkali-kali', 2),
(70, 3, 'Adanya standar dan teknik umum untuk pengembangan komponen infrastruktur', 2),
(71, 3, 'Manajemen perusahaan mengetahui pentingnya perencanaan infrastruktur teknologi', 3),
(72, 3, 'Rencana infrastruktur berjalan dengan cukup baik dan sesuai dengan rencana strategis IT', 3),
(73, 3, 'Perencanaan infrastruktur teknologi didokumentasikan, dikomunikasikan, serta didefinisikan dengan baik. dan implementasinya dilakukan secara konsisten', 3),
(74, 3, 'Arah dari infrastruktur teknologi mencakup pemahaman tentang ke mana perusahaan ingin memimpin atau tertinggal dalam penggunaan teknologi, berdasarkan risiko dan keselarasan dengan strategi perusahaan', 3),
(75, 3, 'Vendor utama dipilih berdasarkan pemahaman teknologi untuk jangka panjang dan rencana pengembangan produk yang mereka miliki sesuai dengan tujuan perusahaan', 3),
(76, 3, 'Adanya pelatihan dan komunikasi mengenai peran dan tanggung jawab yang dilakukan secara formal', 3),
(77, 3, 'Manajemen memastikan pengembangan dan perawatan dari rencana infrastruktur teknologi', 4),
(78, 3, 'Staff IT memiliki keahlian yang dibutuhkan untuk mengembangkan infrastruktur teknologi yang telah direncanakan', 4),
(79, 3, 'Memperhitungkan dampak akibat perubahan dan teknologi yang muncul', 4),
(80, 3, 'Manajemen dapat mengidentifikasi apabila terdapat penyimpangan dari rencana dan dapat mengantisipasi masalah', 4),
(81, 3, 'Adanya pemberian tanggung jawab untuk pengembangan dan pemeliharaan infrastruktur teknologi', 4),
(82, 3, 'Proses pengembangan rencana infrastruktur teknologi canggih dan responsif terhadap perubahan', 4),
(83, 3, 'Praktikal baik sudah diperkenalkan ke dalam proses pengembangan', 4),
(84, 3, 'Strategi SDM sesuai dengan arah teknologi, sehingga staff IT dapat mengelola perubahan teknologi', 4),
(85, 3, 'Rencana migrasi untuk memperkenalkan teknologi baru sudah ditentukan', 4),
(86, 3, 'Outsourcing dan kemitraan digunakan untuk mendapatkan keahlian dalam pengembangan teknologi', 4),
(87, 3, 'Manajemen telah menganalisa penerimaan risiko terkait lead atau lag penggunaan teknologi dalam mengefisiensikan operasional', 4),
(88, 3, 'perusahaan melakukan penelitian untuk meninjau teknologi yang muncul dan berkembang', 5),
(89, 3, 'Arah perencanaan infrastruktur teknologi dipandu oleh industri, standar, dan perkembangan internasional, bukan mengikuti vendor teknologi', 5),
(90, 3, 'Manajemen senior meninjau dampak dari bisnis potensial dan dampak dari perubahan teknologi', 5),
(91, 3, 'Arah pembaruan dan perubahan teknologi disetujuo oleh eksekutif secara formal', 5),
(92, 3, 'perusahaan memiliki rencana infrastruktur yang kuat yang mencerminkan kebutuhan bisnis, responsif, dan dapat diubah sesuai dengan perubahan lingkungan', 5),
(93, 3, 'Adanya proses peningkatan rencana infrastruktur teknologi yang diakukan secara berkelanjutan', 5),
(94, 3, 'Praktik baik industri digunakan sebagai acuan untuk arah teknologi', 5),
(95, 4, 'Departemen TI pada perusahaan mempunyai fokus pada pencapaian tujuan bisnis', 0),
(96, 4, 'Aktivitas dan fungsi TI pada perusahaan bersifat reaktif dan diimplementasikan dengan konsisten', 1),
(97, 4, 'TI terlibat secara langsung dalam suatu proyek pada perusahaan, serta tidak hanya dilibatkan pada tahap-tahap akhir pada proses bisnisnya', 1),
(98, 4, 'perusahaan tidak hanya mengganggap TI sebagai fungsi pendukung, tanpa adanya pandangan dari departemen secara keseluruhan', 1),
(99, 4, 'perusahaan memiliki departemen TI dengan pemahaman kebutuhan yang implisit, peran dan tanggung jawab secara formal sudah ada', 1),
(100, 4, 'perusahaan memiliki TI dengan kemampuan untuk memenuhi kebutuhan pelanggan dan hubungan dengan vendor berupa kemampuan berpikir dengan cepat dan dapat beradaptasi dengan perubahan, serta dilakukan secara konsisten', 2),
(101, 4, 'perusahaan telah memiliki departemen TI yang dibuat secara terstruktur, serta keputusan yang diambil tidak tergantung pada pengetahuan dan keterampilan individu', 2),
(102, 4, 'perusahaan memiliki kebijakan umum yang mengatur hubungan antara departemen TI dan vendor', 2),
(103, 4, 'perusahaan memiliki peran dan tanggung jawab yang jelas antara departemen TI dan pihak ketiga', 3),
(104, 4, 'Departemen TI pada perusahaan telah dikembangkan, didokumentasikan, dikomunikasikan, dan selaras dengan strategi TI yang telah ditentukan', 3),
(105, 4, 'Lingkungan untuk pengendalian internal pada perusahaan telah didefinisikan', 3),
(106, 4, 'perusahaan memiliki pemeliharaan hubungan yang baik dengan pihak lain (seperti komite penasihat, audit internal, dan manajemen vendor)', 3),
(107, 4, 'perusahaan memiliki departemen TI yang berfungsi secara keseluruhan', 3),
(108, 4, 'Pada perusahaan, tidak terdapat perbedaan fungsi yang harus dilakukan oleh staf TI dan apa yang harus dilakukan oleh pengguna', 3),
(109, 4, 'Kriteria persyaratan untuk perekrutan menjadi staff TI di perusahaan telah sesuai dengan standar yang telah ditentukan', 3),
(110, 4, 'perusahaan memiliki aturan resmi yang mengatur tentang hubungan dengan pengguna dan pihak ketiga', 3),
(111, 4, 'Pembagian tugas/peran serta tanggung jawab setiap stakeholder di perusahaan terdefinisi dengan baik serta terealisasi sesuai dengan yang telah ditentukan', 3),
(112, 4, 'Departemen TI pada perusahaan secara proaktif menanggapi perubahan dan mencakup semua peran yang diperlukan untuk memenuhi kebutuhan bisnis', 4),
(113, 4, 'perusahaan memiliki keseimbangan definisi antara manajemen TI, kepemilikan proses, akuntabilitas, dan tanggung jawab', 4),
(114, 4, 'perusahaan menerapkan praktek-praktek internal yang baik ke dalam departemen TI', 4),
(115, 4, 'Manajemen TI yang dimiliki oleh perusahaan mempunyai keahlian dan keterampilan yang sesuai untuk mendefinisikan, menerapkan dan memantau hubungan dalam departemen', 4),
(116, 4, 'perusahaan menjadikan metrik yang terukur untuk mendukung tujuan bisnis dan faktor-faktor keberhasilan yang diterapkan menjadi standar penilaian', 4),
(117, 4, 'perusahaan menyediakan individu yang memiliki skill unttuk mendukung jalannya proyek dan pengembangan profesional', 4),
(118, 4, 'perusahaan memiliki keseimbangan antara skill dan sumber daya internal yang dibutuhkan oleh organisasi luar untuk ditetapkan dan diterapkan', 4),
(119, 4, 'Struktur departemen TI pada perusahaan secara tepat mencerminkan kebutuhan bisnis dengan memberikan layanan yang sesuai dengan proses bisnis strategis, bukan karena keterbatasan teknologi', 4),
(120, 4, 'Struktur departemen TI pada perusahaan telah dibuat secara fleksibel dan adaptif', 5),
(121, 4, 'perusahaan telah menerapkan praktik yang dilakukan pada organisasi/industri sejenis', 5),
(122, 4, 'perusahaan telah menggunakan teknologi untuk membantu pemantauan kinerja dan proses departemen TI', 5),
(123, 4, 'perusahaan telah menggunakan teknologi secara optimal untuk proses komunikasi dan monitoring', 5),
(124, 4, 'perusahaan telah melakukan proses perbaikan secara berkelanjutan dalam departemen', 5),
(125, 5, 'perusahaan memiliki kesadaran akan pentingnya pemilihan investasi TI dan perencanaan penganggaran pada TI', 0),
(126, 5, 'perusahaan melakukan pengawasan atau pemantauan pada investasi dan pengeluaran TI', 0),
(127, 5, 'perusahaan menyadari akan perlunya pengelolaan pada investasi TI, namun kebutuhan tersebut tidak dikomunikasikan secara konsisten', 1),
(128, 5, 'Tanggung jawab untuk pemilihan investasi TI dan penganggaran TI pada perusahaan dilakukan secara ad hoc (tidak terorganisir/tanpa perencanaan)', 1),
(129, 5, 'perusahaan memiliki implementasi pemilihan investasi TI dan penganggaran TI yang terisolasi dengan dokumen yang informal', 1),
(130, 5, 'Investasi TI pada perusahaan dilakukan secara tidak ad hoc (terorganisir/dengan perencanaan)', 1),
(131, 5, 'perusahaan bertindak reaktif dalam investasi TI atau bersifat operasional yang berfokus pada keputusan penganggaran', 1),
(132, 5, 'perusahaan memiliki koordinasi pengertian secara implisit akan kebutuhan pemilihan investasi TI dan penganggaran TI', 2),
(133, 5, 'perusahaan melakukan komunikasi yang baik terkait kebutuhan akan proses pemilihan dan penganggaran investasi TI', 2),
(134, 5, 'Pemenuhan kebutuhan pemilihan investasi TI dan penganggaran TI pada perusahaan masih tergantung pada inisiatif individu', 2),
(135, 5, 'perusahaan memiliki teknik umum dan standar untuk pengembangan komponen penganggaran TI (infrastruktur, aplikasi dan layanan, sumber daya manusia, dll)', 2),
(136, 5, 'perusahaan bertindak reaktif dan taktis dalam penyetujuan anggaran TI', 2),
(137, 5, 'perusahaan memiliki kebijakan dan proses investasi serta penganggaran investasi TI yang terdefinisi, terdokumentasi, dikomunikasikan dengan baik, dan mencakup isu utama bisnis dan teknologi', 3),
(138, 5, 'Anggaran TI yang dimiliki oleh perusahaan telah selaras dengan rencana strategis TI dan rencana bisnis yang dimiliki', 3),
(139, 5, 'Proses pemilihan dan penganggaran investasi TI pada perusahaan telah diatur secara formal, terdokumentasi, dan dikomunikasikan dengan baik', 3),
(140, 5, 'Pelatihan formal telah diadakan di perusahaan namun masih berdasarkan pada inisiatif individu', 3),
(141, 5, 'perusahaan telah memiliki persetujuan formal dari pemilihan investasi TI dan penganggaran TI', 3),
(142, 5, 'Anggota staf TI pada perusahaan memiliki pengalaman dan keterampilan yang dibutuhkan untuk mengembangkan proses penganggaran TI dan merekomendasikan investasi TI yang tepat', 3),
(143, 5, 'Tanggung jawab dan akuntabilitas terhadap pemilihan dan penganggaran investasi TI pada perusahaan ditugaskan kepada individu tertentu secara khusus', 4),
(144, 5, 'Adanya duplikasi anggaran TI pada perusahaan telah diidentifikasi dan diselesaikan', 4),
(145, 5, 'perusahaan memiliki analisa biaya TI secara formal, meliputi biaya langsung maupun tidak langsung serta investasi yang diusulkan, dengan adanya pertimbangan dari semua total biaya selama ini yang sudah dikeluarkan', 4),
(146, 5, 'perusahaan memiliki proses penganggaran TI yang proaktif dan terstandarisasi', 4),
(147, 5, 'Dampak dari pergeseran biaya dalam pengembangan dan operasional dari hardware dan software untuk proses integrasi sistem dan SDM TI telah ditetapkan dalam perencanaan investasi TI', 4),
(148, 5, 'perusahaan telah melakukan perhitungan investasi TI berupa manfaat dan keuntungan secara finansial dan non finansial', 4),
(149, 5, 'Praktek pelayanan perusahaan yang baik telah digunakan untuk menghitung biaya dan mengidentifikasi pendekatan untuk meningkatkan efektifitas investasi TI', 5),
(150, 5, 'Analisa pengembangan teknologi telah dilakukan oleh perusahaan guna pemilihan investasi TI dan proses penganggaran TI', 5),
(151, 5, 'perusahaan secara terus-menerus meningkatkan proses manajemen investasi TI berdasarkan pengalaman dan analisa kinerja investasi TI', 5),
(152, 5, 'Keputusan investasi TI pada perusahaan memasukkan harga/sesuai dengan tren peningkatan kinerja', 5),
(153, 5, 'Pendanaan alternatif pada investasi TI dinilai dan dievaluasi secara formal dalam konteks struktur modal yang ada pada perusahaan dengan menggunakan metode evaluasi formal', 5),
(154, 5, 'perusahaan bertindak proaktif dalam hal identifikasi perbedaan dan variasi', 5),
(155, 5, 'Analisa biaya dan manfaat yang selama ini telah dikeluarkan oleh perusahaan masuk ke dalam keputusan investasi', 5),
(156, 6, 'perusahaan telah membentuk lingkungan kontrol TI yang positif', 0),
(157, 6, 'perusahaan telah menyadari perlunya penyediaan informasi yang akurat dan tepat waktu tentang layanan TI saat ini dan di masa depan serta resiko dan tanggung jawab terkait', 0),
(158, 6, 'perusahaan telah menyadari pentingnya kebijakan, prosedur, pedoman, dan dokumentasi IT yang akurat, dapat dipahami dan disetujui kepada pemangku kepentingan, yang tertanam dalam kerangka kerja pengendalian TI', 0),
(159, 6, 'Manajemen bertindak secara reaktif dalam menangani persyaratan lingkungan pengendalian informasi perusahaan', 1),
(160, 6, 'perusahaan mengembangkan dan mengkomunikasikan kebijakan, prosedur, dan standar secara ad hoc sebagaimana didorong oleh isu-isu dalam institusi', 1),
(161, 6, 'Proses pengembangan, komunikasi, dan kepatuhan penggunaan TI pada perusahaan bersifat informal dan tidak konsisten', 1),
(162, 6, 'Telah ditentukannya elemen lingkungan kontrol untuk TI, selaras dengan filosofi manajemen dan operasi perusahaan. Catatan: Elemen tersebut mencakup persyaratan mengenai penyampaian nilai dari investasi TI, risiko, integritas, etika, kompetensi staf, akuntabilitas dan tanggung jawab', 1),
(163, 6, 'Lingkungan pengendalian TI perusahaan didasarkan dengan mengelola risiko yang signifikan, mendorong kerja sama lintas divisi dan kerja tim, mendorong kepatuhan dan perbaikan proses berkelanjutan, dan menangani penyimpangan proses (termasuk kegagalan) dengan baik', 1),
(164, 6, 'Kebutuhan dan persyaratan lingkungan pengendalian informasi yang efektif secara implisit dipahami oleh manajemen perusahaan, tetapi dalam praktiknya sebagian besar bersifat informal', 2),
(165, 6, 'Kebutuhan akan kebijakan pengendalian, rencana dan prosedur dikomunikasikan oleh manajemen perusahaan, tetapi pengembangan diserahkan kepada kebijaksanaan manajer individu dan area bisnis perusahaan', 2),
(166, 6, 'Kualitas TI diakui sebagai filosofi yang diinginkan untuk diikuti perusahaan, tetapi praktik diserahkan kepada kebijaksanaan manajer individu', 2),
(167, 6, 'Pelatihan TI dilakukan secara individu, sesuai kebutuhan masing-masing individual', 2),
(168, 6, 'Mengembangkan dan memelihara kerangka kerja yang mendefinisikan pendekatan keseluruhan perusahaan terhadap risiko dan kendali TI dan yang selaras dengan kebijakan TI dan lingkungan kendali serta kerangka kerja risiko dan kendali perusahaan', 2),
(169, 6, 'Kontrol informasi lengkap dan lingkungan manajemen kualitas dikembangkan, didokumentasikan dan dikomunikasikan oleh manajemen perusahaan dan mencakup kerangka kerja untuk kebijakan, rencana dan prosedur', 3),
(170, 6, 'Proses pengembangan kebijakan terstruktur, dipelihara dan diketahui oleh staf, dan kebijakan, rencana, dan prosedur yang ada cukup baik dan mencakup masalah-masalah utama dalam perusahaan', 3),
(171, 6, 'Manajemen perusahaan membahas pentingnya kesadaran keamanan TI dan memulai program kesadaran', 3),
(172, 6, 'perusahaan menyediakan pelatihan formal untuk mendukung lingkungan pengendalian informasi tetapi tidak diterapkan secara ketat', 3),
(173, 6, 'perusahaan memiliki kerangka pengembangan keseluruhan untuk kebijakan dan prosedur pengendalian, pemantauan tetap dilakukan secara konsisten atas kepatuhan terhadap kebijakan dan prosedur TI', 3),
(174, 6, 'Teknik untuk mempromosikan kesadaran keamanan telah distandarisasi dan diformalkan secara merata di perusahaan', 3),
(175, 6, 'perusahaan telah mengembangkan dan memelihara seperangkat kebijakan untuk mendukung strategi TI. Catatan: Kebijakan ini mencakup maksud kebijakan; peran dan tanggung jawab; proses pengecualian; pendekatan kepatuhan; dan referensi untuk prosedur, standar dan pedoman', 3),
(176, 6, 'Manajemen perusahaan menerima tanggung jawab untuk mengkomunikasikan kebijakan pengendalian internal dan mendelegasikan tanggung jawab dan mengalokasikan sumber daya yang cukup untuk memelihara lingkungan sejalan dengan perubahan signifikan', 4),
(177, 6, 'perusahaan memiliki lingkungan pengendalian informasi yang positif dan proaktif, termasuk komitmen terhadap kualitas dan kesadaran keamanan TI, dibangun', 4),
(178, 6, 'perusahaan telah mengembangkan, memelihara, dan mengkomunikasikan kebijakan, rencana dan prosedur yang lengkap dan merupakan gabungan dari praktik internal yang baik', 4),
(179, 6, 'Kerangka kerja untuk peluncuran dan pemeriksaan kepatuhan TI selanjutnya ditetapkan dalam perusahaan', 4),
(180, 6, 'perusahaan telah meluncurkan dan menegakkan kebijakan TI untuk semua staf yang relevan, sehingga mereka terintegrasi dan menjadi bagian integral dari operasi perusahaan', 4),
(181, 6, 'Lingkungan pengendalian informasi perusahaan selaras dengan kerangka kerja dan visi manajemen strategis dan sering ditinjau, diperbarui dan terus ditingkatkan', 5),
(182, 6, 'Tenaga ahli internal dan eksternal perusahaan ditugaskan untuk memastikan bahwa praktik industri yang baik diadopsi sehubungan dengan panduan pengendalian dan teknik komunikasi', 5),
(183, 6, 'Pemantauan, penilaian mandiri, dan pemeriksaan kepatuhan tersebar luas di dalam organisasi perusahaan', 5),
(184, 6, 'Teknologi digunakan dalam perusahaan untuk memelihara kebijakan dan basis pengetahuan kesadaran dan untuk mengoptimalkan komunikasi, menggunakan otomatisasi kantor dan alat pelatihan berbasis komputer', 5),
(185, 6, 'perusahaan mengkomunikasikan kesadaran dan pemahaman tentang tujuan dan arahan bisnis dan TI kepada pemangku kepentingan dan pengguna yang sesuai di seluruh perusahaan', 5),
(186, 7, 'Ada kesadaran tentang pentingnya menyelaraskan manajemen SDM TI dengan proses perencanaan teknologi untuk organisasi', 0),
(187, 7, 'Ada bagian yang bertanggung jawab mengenai TI pada bagian human resource', 0),
(188, 7, 'TI dibutuhkan pada bagian human resource', 1),
(189, 7, 'Manajemen SDM dilakukan secara informal dan reaktif', 1),
(190, 7, 'Proses manjemen SDM TI difokuskan pada perekrutan dan pengelolaan personel', 1),
(191, 7, 'Dengan perkembangan teknologi sekarang ini dibutuhkan kemampuan dan kompetensi baru', 1),
(192, 7, 'Ada niatan dalam mempekerjakan dan mengelola personel TI karena kebutuhan proyek, dibanding oleh karena keseimbangan antara ketersediaan staf internal dan eksternal', 2),
(193, 7, 'Perusahaan mengadakan pelatihan untuk staf baru', 2),
(194, 7, 'Manajemen menyadari kebutuhan akan manajemen SDM TI', 3),
(195, 7, 'Ada rencana dalam melakukan manajemen SDM TI', 3),
(196, 7, 'Ada pendekatan strategis untuk mempekerjakan dan mengelola personel TI', 3),
(197, 7, 'Ada rencana pelatihan formal untuk memenuhi kebutuhan SDM TI', 3),
(198, 7, 'Ada program rotasi yang dirancang untuk memperluas keterampilan manajemen teknis dan bisnis yang ditetapkan', 3),
(199, 7, 'Tanggung jawab untuk pengembangan dan pemeliharaan rencana manajemen SDM TI diberikan kepada individu/kelompok tertentu dengan keahlian dan keterampilan yang diperlukan untuk mengembangkan rencana', 4),
(200, 7, 'Proses pengembangan dan pengelolaan rencana manajemen SDM TI responsif terhadap perubahan', 4),
(201, 7, 'Ada standarisasi dalam organisasi untuk memungkinkannya mengidentifikasi penyimpangan dari rencana manajemen SDM TI, khususnya pada pengelolaan pertumbuhan dan pergantian personel TI', 4),
(202, 7, 'Kompensasi dan tinjauan kinerja dibuat dan dibandingkan dengan organisasi TI lainnya', 4),
(203, 7, 'Manajemen SDM TI bersifat proaktif dengan mempertimbangkan pengembangan jalur karier', 4),
(204, 7, 'Rencana Manajemen SDM selalu diperbaharui sesuai dengan kebutuhan', 5),
(205, 7, 'Perencanaan manajemen SDM terintegrasi dengan teknologi IT', 5),
(206, 7, 'Manajemen SDM sejalan dengan arah strategis organisasi', 5),
(207, 7, 'Komponen manajemen SDM TI konsisten dengan praktik industri yang baik, seperti kompensasi, tinjauan kinerja, transfer pengetahuan, pelatihan dan pendampingan', 5),
(208, 7, 'Program pelatihan dikembangkan berdasarkan semua standar dan produk teknologi baru sebelum diterapkan di organisasi', 5),
(209, 8, 'perusahaan memiliki perencanaan Quality Management System (QMS) dan metodologi System Development Life Cycle (SDLC)', 0),
(210, 8, 'Manajemen perusahaan menyadari bahwa kualitas dari layanan perusahaan sangat penting', 0),
(211, 8, 'Dilakukan peninjauan terkait kualitas operasi dan layanan di perusahaan', 0),
(212, 8, 'Manajemen membuat penilaian terkait layanan di perusahaan secara informal untuk mengukur kualitas', 1),
(213, 8, 'Aktivitas Quality Management System (QMS) pada perusahaan berfokus pada IT-project dan process oriented', 2),
(214, 8, 'Adanya program atau aplikasi yang digunakan untuk memonitor aktivitas Quality Management System (QMS) pada manajemen perusahaan', 2),
(215, 8, 'Proses Quality Management System (QMS) dikomunikasikan kepada perusahaan oleh manajemen dengan mengikutsertakan manajemen IT dan manajemen end-user', 3),
(216, 8, 'Adanya kegiatan edukasi dan pelatihan untuk staff dan karyawan perusahaan terkait kualitas layanan yang diberikan', 3),
(217, 8, 'Ada ekspetasi kualitas dasar yang didefinisikan dan digunakan di berbagai proyek pada organisasi IT', 3),
(218, 8, 'Ada perencanaan dan pelaksanaan survey terkait kepuasan kualitas layanan di perusahaan', 3),
(219, 8, 'Alat maupun pelatihan yang menunjang sistem manajemen kualitas sudah dimunculkan (diputuskan)', 3),
(220, 8, 'Suvery mengenai kepuasan terhadap kualitas layanan perusahaan sudah direncanakan', 3),
(221, 8, 'perusahaan memiliki standar mengenai kualitas layanan', 4),
(222, 8, 'Survey kualitas kepuasan dijalankan secara konsisten', 4),
(223, 8, 'Proses benchmarking dengan kompetitor sudah mulai dilakukan', 4),
(224, 8, 'IT management menjadi dasar pengetahuan dari metriks kualitas', 4),
(225, 8, 'Proses analisis akar permasalahan (root cause analysis) diaplikasikan secara berkala', 4),
(226, 8, 'Sistem manajemen kualitas (QMS) sudah diterapkan pada setiap aktivitas maupun proses bisnis di perusahaan', 5),
(227, 8, 'Sistem manajemen kualitas (QMS) yang diterapkan sudah fleksibel dan mudah beradaptasi dengan perubahan lingkungan di perusahaan', 5),
(228, 8, 'perusahaan telah rutin mengadakan proses brenchmarking dengan program pendidikan diluar (kompetitor perusahaan)', 5),
(229, 8, 'Proses manajemen mutu perusahaan sudah sesuai standar dan spesifikasi', 5),
(230, 9, 'Ada proses pengadaan sumber daya TI yang ditetapkan oleh perusahaan', 0),
(231, 9, 'perusahaan menyadari perlunya kebijakan dan prosedur pengadaan yang jelas untuk memastikan bahwa semua sumber daya TI tersedia secara tepat waktu dan hemat biaya', 0),
(232, 9, 'Manajemen risiko diidentifikasi dengan relevan untuk memperoleh Solusi TI dan memberikan layanan TI pada perusahaan', 0),
(233, 9, 'Risiko TI perusahaan sudah dipertimbangkan secara ad hoc', 1),
(234, 9, 'Penilaian informal dari risiko proyek dilakukan sebagaimana ditentukan oleh masing-masing proyek', 1),
(235, 9, 'Penilaian risiko terkadang diidentifikasi dalam rencana proyek tetapi jarang ditugaskan kepada manajer perusahaan tertentu', 1),
(236, 9, 'Risiko spesifik terkait TI, seperti keamanan, ketersediaan, dan integritas telah dipertimbangkan berdasarkan proyek per proyek', 1),
(237, 9, 'Risiko terkait TI yang memengaruhi operasi setiap harinya dibahas dalam rapat manajemen perusahaan', 1),
(238, 9, 'Terdapat kasus dimana mitigasi menjadi tidak konsisten ketika risiko telah dipertimbangkan', 1),
(239, 9, 'Ada pemahaman yang muncul bahwa risiko TI itu penting dan perlu dipertimbangkan', 1),
(240, 9, 'Terdapat pendekatan penilaian risiko yang berkembang dan diterapkan atas arahan manajer perusahaan', 2),
(241, 9, 'Manajemen risiko pada perusahaan biasanya terletak pada level tinggi dan diterapkan hanya untuk proyek besar atau sebagai respons terhadap masalah', 2),
(242, 9, 'Proses mitigasi risiko mulai diterapkan di mana risiko telah teridentifikasi sebelumnya', 2),
(243, 9, 'Kebijakan manajemen risiko di seluruh organisasi perusahaan telah menentukan kapan dan bagaimana dalam melakukan penilaian risiko', 3),
(244, 9, 'Manajemen risiko mengikuti proses yang telah ditentukan dan didokumentasikan', 3),
(245, 9, 'Pelatihan manajemen risiko tersedia untuk semua anggota staf perusahaan', 3),
(246, 9, 'Keputusan untuk mengikuti proses manajemen risiko dan menerima pelatihan telah diserahkan kepada kebijaksanaan individu staf perusahaan', 3),
(247, 9, 'Metodologi untuk penilaian risiko meyakinkan dan memastikan bahwa risiko utama bisnis pada perusahaan teridentifikasi', 3),
(248, 9, 'Sebuah proses untuk memitigasi risiko / membuat langkah-langkah menghindari adanya risiko utama biasanya dilakukan setelah risiko diidentifikasi', 3),
(249, 9, 'perusahaan memiliki uraian tugas untuk mempertimbangkan tanggung jawab manajemen risiko', 3),
(250, 9, 'perusahaan telah menerapkan prosedur standar yang mana merupakan penilaian dan pengelolaan dari sebuah risiko', 4),
(251, 9, 'Pengecualian untuk proses manajemen risiko dilaporkan ke manajemen TI perusahaan', 4),
(252, 9, 'Manajemen risiko TI adalah tanggung jawab dari manajemen senior perusahaan', 4),
(253, 9, 'Risiko dinilai dan dimitigasi pada tingkat proyek individu dan juga secara teratur berkaitan dengan operasi TI secara keseluruhan', 4),
(254, 9, 'Manajemen perusahaan diberi tahu tentang perubahan dalam bisnis dan lingkungan TI yang dapat secara signifikan memengaruhi skenario risiko terkait TI perusahaan', 4),
(255, 9, 'Manajemen perusahaan mampu memantau posisi risiko dan membuat keputusan yang terinformasi mengenai eksposur yang bersedia diterimanya', 4),
(256, 9, 'Semua risiko yang teridentifikasi memiliki pemilik yang ditunjuk, manajemen senior, dan manajemen TI yang mana menentukan tingkat risiko yang akan ditoleransi oleh organisasi perusahaan', 4),
(257, 9, 'Manajemen TI perusahaan telah mengembangkan ukuran standar untuk menilai risiko dan menentukan rasio risiko / pengembalian', 4),
(258, 9, 'perusahaan memiliki anggaran manajemen untuk proyek manajemen risiko operasional yang mana bertujuan untuk menilai kembali risiko secara teratur', 4),
(259, 9, 'perusahaan sudah melakukan pembuatan database manajemen risiko, dan mulai mengotomatiskan bagian dari proses manajemen risiko', 4),
(260, 9, 'Manajemen TI perusahaan telah mempertimbangkan strategi mitigasi risiko (langkah-langkah menghindari adanya risiko)', 4),
(261, 9, 'Manajemen risiko berkembang ke tahap di mana proses organisasi yang terstruktur ditegakkan dan dikelola dengan baik', 5),
(262, 9, 'Telah menerapkan praktik yang baik di seluruh operasi perusahaan', 5),
(263, 9, 'Telah melakukan penangkapan, analisis, dan pelaporan data manajemen risiko dengan sangat otomatis', 5),
(264, 9, 'Bimbingan diambil dari para pemimpin perusahaan di lapangan, dan organisasi TI perusahaan mengambil bagian dalam kelompok sebaya untuk bertukar pengalaman', 5),
(265, 9, 'Manajemen risiko benar-benar terintegrasi ke dalam semua bisnis dan operasi TI perusahaan yang mana diterima dengan baik dan melibatkan pengguna layanan TI perusahaan secara luas', 5),
(266, 9, 'Manajemen perusahaan mendeteksi dan bertindak ketika keputusan operasional dan investasi TI utama dibuat tanpa mempertimbangkan rencana manajemen risiko', 5),
(267, 9, 'Manajemen perusahaan terus menilai strategi mitigasi risiko (langkah-langkah menghindari adanya risiko)', 5),
(268, 10, 'Menggunakan teknik manajemen proyek dan perusahaan mempertimbangkan dampak bisnis yang terkait dengan kesalahan manajemen proyek dan kegagalan proyek pengembangan', 0),
(269, 10, 'Penggunaan teknik dan pendekatan manajemen proyek dalam perusahaan adalah keputusan yang tidak diserahkan kepada manajer perusahaan secara individu', 1),
(270, 10, 'Terdapat komitmen manajemen dalam kepemilikan dan manajemen proyek', 1),
(271, 10, 'Keputusan penting dalam manajemen proyek perusahaan dibuat dengan mempertimbangkan manajemen pengguna atau masukan dari pelanggan', 1),
(272, 10, 'Terdapat keterlibatan pengguna dalam mendefinisikan proyek perusahaan', 1),
(273, 10, 'Terdapat organisasi/bagian yang jelas dalam perusahaan untuk pengelolaan proyek', 1),
(274, 10, 'Peran dan tanggung jawab untuk pengelolaan proyek perusahaan telah ditentukan', 1),
(275, 10, 'Proyek, jadwal, dan pencapaian perusahaan telah didefinisikan dengan baik (jika ada)', 1),
(276, 10, 'Waktu dan pengeluaran dari staf yang mengerjakan proyek pada perusahaan dilacak dan dibandingkan dengan anggaran', 1),
(277, 10, 'Manajemen senior mendapatkan dan menyampaikan awareness akan kebutuhan dan pentingnya manajemen proyek TI pada perusahaan', 2),
(278, 10, 'perusahaan sedang dalam proses mengembangkan dan menggunakan beberapa teknik dan metode dari proyek ke proyek', 2),
(279, 10, 'Proyek-proyek pada perusahaan memiliki tujuan bisnis dan teknis yang didefinisikan secara informal', 2),
(280, 10, 'Terdapat keterlibatan pemangku kepentingan (stakeholder) yang terbatas dalam manajemen proyek pada perusahaan', 2),
(281, 10, 'Terdapat pedoman awal yang dikembangkan untuk aspek-aspek dalam manajemen proyek perusahaan', 2),
(282, 10, 'Penerapan pedoman manajemen proyek perusahaan diserahkan kepada masing-masing manajer dari suatu proyek', 2),
(283, 10, 'Proses dan metodologi manajemen proyek TI pada perusahaan telah ditetapkan dan disampaikan', 3),
(284, 10, 'Proyek TI pada perusahaan ditentukan dengan tujuan bisnis dan teknis yang sesuai', 3),
(285, 10, 'Senior dan manajemen bisnis perusahaan mulai berkomitmen dan terlibat dalam manajemen proyek perusahaan', 3),
(286, 10, 'Terdapat bagian manajemen proyek yang didirikan dalam perusahaan, dengan peran dan tanggung jawab awal yang telah ditentukan', 3),
(287, 10, 'Proyek-proyek perusahaan dipantau dengan pencapaian, jadwal, anggaran, dan pengukuran kinerja yang telah ditetukan dan diperbarui', 3),
(288, 10, 'Tersedia pelatihan manajemen proyek dan terutama merupakan hasil inisiatif dari staf individu', 3),
(289, 10, 'Prosedur QA (Quality Assurance) dan aktivitas implementasi pasca-sistem ditentukan, dan diterapkan secara luas oleh manajemen perusahaan', 3),
(290, 10, 'Proyek perusahaan mulai dikelola sebagai portofolio', 3),
(291, 10, 'Manajemen membutuhkan metrik/pengukuran proyek formal dan terstandarisasi serta hasil evaluasi ditinjau setelah penyelesaian proyek', 4),
(292, 10, 'Manajemen proyek diukur dan dievaluasi di keseluruhan perusahaan dan tidak hanya dalam TI', 4),
(293, 10, 'Peningkatan pada proses manajemen proyek diformalkan dan disampaikan kepada anggota tim proyek perusahaan untuk melatih peningkatan', 4),
(294, 10, 'Manajemen perusahaan menerapkan struktur organisasi proyek dengan peran, tanggung jawab, dan kinerja staf yang terdokumentasi', 4),
(295, 10, 'Kriteria untuk mengevaluasi kesuksesan pada setiap pencapaian ditetapkan', 4),
(296, 10, 'Dalam perusahaan, nilai dan risiko diukur dan dikelola sebelum, selama dan setelah penyelesaian proyek', 4),
(297, 10, 'Proyek pada perusahaan dengan meningkat membahas tujuannya, bukan hanya yang spesifik dalam TI', 4),
(298, 10, 'Terdapat dukungan proyek yang kuat dan aktif dari manajemen senior serta pemangku kepentingan (stakeholder) pada perusahaan', 4),
(299, 10, 'Pelatihan manajemen proyek yang relevan direncanakan untuk staf bagian manajemen proyek dan di seluruh fungsi TI pada perusahaan', 4),
(300, 10, 'Metodologi proyek yang terbukti diterapkan, ditegakkan dan diintegrasikan ke dalam budaya seluruh bagian dalam perusahaan', 5),
(301, 10, 'Terdapat inisiatif berkelanjutan untuk mengidentifikasi dan melembagakan praktik manajemen proyek terbaik yang diterapkan', 5),
(302, 10, 'Strategi TI untuk pengembangan resources dan proyek operasional didefinisikan dan diimplementasikan dalam perusahaan', 5),
(303, 10, 'Bagian manajemen proyek terintegrasi bertanggung jawab atas proyek dan program dari awal hingga pasca-implementasi', 5),
(304, 10, 'Perencanaan program dan proyek di keseluruhan perusahaan memastikan bahwa pengguna dan sumber daya TI dimanfaatkan sebaik-baiknya untuk mendukung inisiatif strategis', 5),
(305, 19, 'Apakah perusahaan memiliki peraturan/ketetapan/SOP yang mendefinisikan tanggung jawab dan akuntabilitas dalam menjalankan proses IT', 0),
(306, 19, 'Apakah perusahaan memiliki kebijakan dan prosedur dalam melakukan kontrak dengan pihak ketiga', 0),
(307, 19, 'Apakah ada proses review dan persetujuan dari manajemen terkait layanan dari pihak ketiga', 0),
(308, 19, 'Apakah ada aktivitas pengukuran dari perusahaan atau laporan yang diberikan oleh pihak ketiga untuk memantau kinerja pihak ketiga', 0),
(309, 19, 'Apakah manajemen senior perusahaan peduli terhadap kualitas dari layanan yang diberikan oleh pihak ketiga', 0),
(310, 19, 'Apakah manajemen perusahaan sadar dan peduli tentang perlunya kebijakan dan prosedur tertulis untuk memanajemen pihak ketiga, termasuk kontrak bertanda tangan', 1),
(311, 19, 'Apakah perusahaan memiliki istilah standar dalam perjanjian dengan penyedia layanan?', 1),
(312, 19, 'Apakah perusahaan memiliki metode pengukuran yang formal terhadap layanan yang diberikan', 1),
(313, 19, 'Apakah perusahaan memiliki guideline terhadap pelaksanaan layanan yang dilakukan oleh pihak ketiga', 1),
(314, 19, 'Apakah ada proses pengawasan formal dari perusahaan terhadap penyedia layanan pihak ketiga, risiko terkait, dan pelaksanaan layanan', 2),
(315, 19, 'Apakah perusahaan menggunakan dokumen formal yang ditandatangai dengan menggunakan istilah – istilah standar dalam menjalin Kerjasama dengan pihak ketiga', 2),
(316, 19, 'Apakah laporan terkait layanan yang diberikan mendukung objektif bisnis', 2),
(317, 19, 'Apakah perusahaan memiliki prosedur yang terdokumentasi dengan baik untuk mengatur layanan pihak ketiga, dengan proses yang jelas untuk pemeriksaan dan negosiasi dengan penyedia layanan', 3),
(318, 19, 'Apakah ketika kesepakatan untuk penyediaan layanan dibuat, hubungan dengan pihak ketiga adalah murni kontrak', 3),
(319, 19, 'Apakah sifat layanan yang akan diberikan dirinci dalam kontrak dan mencakup, hukum, operasional, dan kontrol', 3),
(320, 19, 'Apakah di perusahaan ada bagian yang diberi tanggungjawab untuk mengawasi layanan dari pihak ketiga', 3),
(321, 19, 'Apakah perusahaan memiliki susunan standar untuk menyusun persyaratan kontrak', 3),
(322, 19, 'Apakah risiko bisnis yang terkait dengan layanan pihak ketiga dinilai dan dilaporkan', 3),
(323, 19, 'Apakah perusahaan menetapkan kriteria formal dan standar untuk mendefinisikan ketentuan perjanjian, termasuk ruang lingkup pekerjaan, layanan yang akan disediakan, asumsi, jadwal, biaya, pengaturan penagihan dan tanggung jawab', 4),
(324, 19, 'Apakah perusahaan menetapkan tanggung jawab untuk kontrak dan manajemen pihak ketiga', 4),
(325, 19, 'Apakah Kualifikasi, risiko, dan kemampuan pihak ketiga diverifikasi secara berkelanjutan', 4),
(326, 19, 'Apakah persyaratan layanan ditentukan dan dikaitkan dengan tujuan bisnis', 4),
(327, 19, 'Apakah perusahaan memiliki proses untuk meninjau kinerja layanan terhadap persyaratan kontrak, memberikan masukan untuk menilai layanan pihak ketiga saat ini dan di masa mendatang', 4),
(328, 19, 'Apakah perusahaan menggunakan model harga transfer dalam proses pengadaan', 4),
(329, 19, 'Apakah semua pihak yang terlibat sadar akan layanan, biaya, dan ekspektasi pencapaian', 4),
(330, 19, 'Apakah ada tujuan dan metrik yang disepakati untuk pengawasan penyedia layanan', 4),
(331, 19, 'Apakah kontrak yang ditandatangani dengan pihak ketiga ditinjau secara berkala pada interval yang telah ditentukan sebelumnya', 5),
(332, 19, 'Apakah bukti kepatuhan kontrak terhadap ketentuan operasional, hukum dan control dipantau, dan tindakan korektif diberlakukan', 5),
(333, 19, 'Apakah pihak ketiga tunduk pada tinjauan berkala independent oleh perusahaan, dan umpan balik atas kinerja disediakan dan digunakan untuk meningkatkan pemberian layanan', 5),
(334, 19, 'Apakah pengukuran kinerja dapat bervariasi dalam menanggapi kondisi bisnis yang berubah', 5),
(335, 19, 'Apakah perusahaan memiliki tindakan yang mendukung deteksi dini masalah potensial dengan layanan pihak ketiga', 5),
(336, 19, 'Apakah ada pelaporan pencapaian tingkat layanan yang komprehensif dan terdefinisi terkait dengan kepuasan terhadap pihak ketiga', 5),
(337, 19, 'Apakah manajemen perusahaan dapat menyesuaikan proses akuisisi dan pemantauan layanan pihak ketiga berdasarkan pengukur kinerja', 5),
(338, 20, 'Manajemen menyadari bahwa proses bisnis utama mungkin memerlukan kinerja tingkat tinggi dari TI atau bahwa kebutuhan bisnis secara keseluruhan untuk layanan TI dapat melebihi kapasitas', 0),
(339, 20, 'Ada proses perencanaan kapasitas', 0),
(340, 20, 'Pengguna mencari solusi untuk kendala kinerja', 1),
(341, 20, 'Ada apresiasi atas kebutuhan akan kapasitas dan perencanaan kinerja oleh para pemilik proses bisnis', 1),
(342, 20, 'Tindakan yang diambil untuk mengelola kinerja dan kapasitas biasanya bersifat reaktif', 1),
(343, 20, 'Proses perencanaan kapasitas dan kinerja bersifat informal', 1),
(344, 20, 'Pemahaman tentang kapasitas dan kinerja sumber daya TI terbatas', 1),
(345, 20, 'Manajemen bisnis dan TI menyadari dampak dari tidak terkelolanya kinerja dan kapasitas', 2),
(346, 20, 'Kebutuhan kinerja umumnya dipenuhi berdasarkan penilaian sistem individu dan pengetahuan dukungan dan tim proyek', 2),
(347, 20, 'Alat individu dapat digunakan untuk mendiagnosis masalah kinerja dan kapasitas, tetapi konsistensi hasil tetap bergantung pada keahlian individu', 2),
(348, 20, 'Ada penilaian keseluruhan dari kemampuan kinerja TI atau pertimbangan berdasarkan situasi peak dan worst-case', 2),
(349, 20, 'Masalah ketersediaan kemungkinan besar terjadi dengan cara tidak terduga dan random, serta membutuhkan waktu yang cukup lama untuk didiagnosis dan dikoreksi', 2),
(350, 20, 'Setiap pengukuran kinerja didasarkan terutama pada kebutuhan TI dan bukan pada kebutuhan pelanggan', 2),
(351, 20, 'Persyaratan kinerja dan kapasitas ditentukan di sepanjang siklus hidup sistem', 3),
(352, 20, 'Ada persyaratan dan metrik tingkat layanan yang dapat digunakan untuk mengukur kinerja operasional', 3),
(353, 20, 'Persyaratan kinerja dan kapasitas di masa mendatang dimodelkan mengikuti proses yang ditentukan', 3),
(354, 20, 'Laporan dibuat dengan memberikan statistik kinerja', 3),
(355, 20, 'Akuisisi TI sebagian besar terintegrasi dengan sistem pengadaan bisnis secara keseluruhan', 3),
(356, 20, 'Masalah terkait kinerja dan kapasitas masih mungkin terjadi dan memakan waktu untuk memperbaikinya', 3),
(357, 20, 'Meskipun tingkat layanan dipublikasikan, pengguna dan pelanggan mungkin masih merasa skeptis tentang kemampuan layanan', 3),
(358, 20, 'Ada proses dan alat yang tersedia untuk mengukur penggunaan sistem, kinerja dan kapasitas, dan hasil dibandingkan dengan tujuan yang ditentukan', 4),
(359, 20, 'Tersedia informasi terkini yang memberikan statistik kinerja standar dan memperingatkan insiden yang disebabkan oleh kinerja dan kapasitas yang tidak memadai', 4),
(360, 20, 'Masalah kinerja dan kapasitas yang tidak memadai ditangani sesuai dengan prosedur yang ditetapkan dan sesuai standar', 4),
(361, 20, 'Alat otomatis digunakan untuk memantau sumber daya tertentu, seperti ruang disk, jaringan, server, dan gateway jaringan', 4),
(362, 20, 'Statistik kinerja dan kapasitas dilaporkan dalam istilah proses bisnis, sehingga pengguna dan pelanggan memahami tingkat layanan TI', 4),
(363, 20, 'Pengguna secara umum merasa puas dengan kemampuan layanan saat ini dan mungkin menuntut tingkat ketersediaan yang baru dan lebih baik', 4),
(364, 20, 'Metrik untuk mengukur kinerja dan kapasitas TI yang telah disepakati mungkin diterapkan secara tidak konsisten', 4),
(365, 20, 'Rencana kinerja dan kapasitas sepenuhnya disinkronkan dengan perkiraan permintaan bisnis', 5),
(366, 20, 'Infrastruktur TI dan permintaan bisnis didasarkan pada tinjauan rutin untuk memastikan bahwa kapasitas optimal dicapai dengan biaya serendah mungkin', 5),
(367, 20, 'Alat untuk memantau sumber daya TI penting distandarisasi dan digunakan di seluruh platform dan dihubungkan ke sistem manajemen insiden di seluruh organisasi', 5),
(368, 20, 'Alat pemantauan mendeteksi dan secara otomatis dapat memperbaiki masalah terkait kinerja dan kapasitas', 5),
(369, 20, 'Analisis tren dilakukan untuk menunjukkan masalah kinerja apa yang akan segera terjadi yang disebabkan oleh peningkatan volume bisnis, sehingga memungkinkan perencanaan dan penghindaran masalah yang tidak terduga', 5),
(370, 20, 'Metrik untuk mengukur kinerja dan kapasitas TI telah disesuaikan dengan hasil dan indikator kinerja untuk semua proses bisnis yang penting dan diukur secara konsisten', 5),
(371, 20, 'Manajemen menyesuaikan perencanaan kinerja dan kapasitas setelah melakukan analisis atas tindakan-tindakan yang dilakukan', 5),
(372, 22, 'Organisasi perusahaan menyadari pentingnya keamanan dari sistemnya', 0),
(373, 22, 'Ada pengaturan tanggung jawab dan akuntabilitas dalam pengamanan sistem', 0),
(374, 22, 'perusahaan memberikan support yang mendukung pengelolaan keamanan TI ', 0),
(375, 22, 'perusahaan memiliki pelaporan keamanan TI dan tidak ada proses tanggapan untuk pelanggaran keamanan TI', 0),
(376, 22, 'Tidak ada kekurangan pada sistem administrasi keamaan pada perusahaan', 0),
(377, 22, 'Organisasi perusahaan sadar akan pentingnya keamanan sistem', 1),
(378, 22, 'Tanggapan terhadap pelanggaran keamanan TI mudah untuk diprediksi', 1),
(379, 22, 'Kesadaran akan pentingnya keamanan sistem pada perusahaan berlaku ke semua pihak dalam perusahaan', 1),
(380, 22, 'Sistem keamanan pada perusahaan ditangani secara reaktif ', 1),
(381, 22, 'perusahaan memiliki sistem khusus untuk mengukur tingkat keamanan sistem', 1),
(382, 22, 'Adanya tanggung jawab yang jelas terhadap sistem keamanan perusahaan', 1),
(383, 22, 'Tanggung jawab dan akuntabilitas untuk keamanan sistem pada perusahaan diberikan kepada seorang koordinator keamanan TI, meskipun otoritas manajemen dari koordinator tersebut terbatas', 2),
(384, 22, 'Kesadaran akan kebutuhan keamanan di perusahaan luas dan tidak terpisah-pisah', 2),
(385, 22, 'Adakah sebuah analisa terhadap informasi yang relevan terhadap keamanan sistem pada perusahaan?', 2),
(386, 22, 'Layanan dari pihak ketiga memenuhi kebutuhan keamanan khusus organisasi perusahaan', 2),
(387, 22, 'Adanya pengembangan kebijakan keamanan yang dibantu dengan keterampilan dan alat yang memadai', 2),
(388, 22, 'Pelaporan keamanan perusahaan lengkap, tidak menyesatkan, dan relevan', 2),
(389, 22, 'Pelatihan keamanan sistem tersedia serta dilakukan secara wajib', 2);
INSERT INTO `list_pertanyaan` (`ID_PERTANYAAN`, `ID_IT_PROCESS`, `DESKRIP_PERTANYAAN`, `LEVEL`) VALUES
(390, 22, 'Keamanan TI menjadi tanggung jawab tidak hanya pihak IT , tetapi juga pihak bisnis', 2),
(391, 22, 'Kesadaran keamanan ada pada perusahaan dan dipromosikan oleh manajemen', 3),
(392, 22, 'Prosedur keamanan TI ditentukan dan diselaraskan dengan kebijakan keamanan TI', 3),
(393, 22, 'Tanggung jawab untuk keamanan TI ditetapkan dan dipahami, serta ditegakkan secara konsisten', 3),
(394, 22, 'Adanya pengujian keamanan sistem pada perusahaan', 3),
(395, 22, 'Pelatihan keamanan tersedia untuk TI dan bisnis, dijadwalkan dan dikelola secara formal', 3),
(396, 22, 'Ada rencana keamanan TI yang dipadukan dengan solusi keamanan yang didorong oleh analisis risiko', 3),
(397, 22, 'Pelaporan tentang keamanan memuat fokus bisnis yang jelas', 3),
(398, 22, 'Tanggung jawab untuk keamanan TI ditetapkan, dikelola, dan ditegakkan dengan jelas', 4),
(399, 22, 'Risiko keamanan TI dan analisis dampak dilakukan secara konsisten', 4),
(400, 22, 'Adanya kewajiban untuk mempromosikan kesadaran pentingnya keamanan sistem TI ', 4),
(401, 22, 'Pengujian keamanan diselesaikan menggunakan proses standar dan formal, yang mengarah ke peningkatan tingkat keamanan', 4),
(402, 22, 'Proses keamanan TI dikoordinasikan dengan fungsi keamanan organisasi perusahaan secara keseluruhan', 4),
(403, 22, 'Pelaporan keamanan TI dihubungkan dengan tujuan bisnis', 4),
(404, 22, 'Pelatihan keamanan TI dilakukan baik dalam domain bisnis maupun domain TI', 4),
(405, 22, 'Pelatihan keamanan TI direncanakan dan dikelola dengan tujuan untuk menanggapi kebutuhan bisnis dan risiko keamanan yang ditetapkan', 4),
(406, 22, 'Sasaran dan metrik untuk manajemen keamanan telah ditentukan dan sudah diukur', 4),
(407, 22, 'Adanya standarisasi tersendiri terhadap Identifikasi pengguna, otentikasi dan otorisasi sistem perusahaan', 4),
(408, 22, 'Sertifikasi keamanan pada perusahaan diterapkan untuk anggota staf yang bertanggung jawab atas audit dan manajemen keamanan', 4),
(409, 22, 'Keamanan TI adalah tanggung jawab bersama antara bisnis dan manajemen TI dan terintegrasi dengan tujuan bisnis keamanan perusahaan', 5),
(410, 22, 'Persyaratan keamanan TI perusahaan didefinisikan dengan jelas, dioptimalkan, dan termasuk dalam rencana keamanan yang disetujui', 5),
(411, 22, 'Pengguna TI perusahaan semakin bertanggung jawab untuk menentukan persyaratan keamanan, dan fungsi keamanan perusahaan sudah  terintegrasi dengan aplikasi pada tahap desain', 5),
(412, 22, 'Insiden keamanan segera ditangani dengan prosedur respons insiden formal yang didukung oleh alat otomatis', 5),
(413, 22, 'Adanya penilaian keamanan secara berkala untuk mengevaluasi efektivitas implementasi rencana keamanan', 5),
(414, 22, 'Informasi tentang ancaman dan kerentanan pada sistem perusahaan dikumpulkan dan dianalisis secara sistematis', 5),
(415, 22, 'Kontrol yang memadai untuk memitigasi risiko segera dikomunikasikan dan diimplementasikan', 5),
(416, 22, 'Adanya pengujian keamanan, untuk menganalisa akar penyebab insiden keamanan, dan mengidentifikasi risiko proaktif yang selanjutnya digunakan untuk proses perbaikan sistem secara berkelanjutan', 5),
(417, 22, 'Proses dan teknologi keamanan terintegrasi di seluruh organisasi perusahaan', 5),
(418, 22, 'Metrik untuk manajemen keamanan diukur, dikumpulkan dan dikomunikasikan', 5),
(419, 22, 'Manajemen memiliki langkah-langkah tersendiri untuk mengukur dan mengatur rencana kemanan sistem perusahaan dalam proses peningkatan keamanan secara berkelanjutan', 5),
(420, 23, 'perusahaan memiliki kelebihan dalam mengidentifikasi dan mengalokasikan biaya sehubungan dengan layanan informasi disediakan', 0),
(421, 23, 'perusahaan menyadari bahwa ada masalah yang harus ditangani sehubungan dengan akuntansi biaya, dan memang tidak ada komunikasi tentang masalah tersebut', 0),
(422, 23, 'Ada pemahaman umum tentang keseluruhan biaya untuk layanan informasi seperti adanya perincian biaya per pengguna, pelanggan, departemen , kelompok pengguna, fungsi layanan, proyek atau kiriman', 1),
(423, 23, 'perusahaan selalu melakukan pemantauan biaya , tidak hanya ada  agregat pelaporan biaya kepada management  ', 1),
(424, 23, 'Apakah biaya TI dialokasikan sebagai pengeluaran operasional ?', 1),
(425, 23, 'Apakah bisnis ada memberikan informasi tentang biaya atau manfaat dari penyediaan layanan ?', 1),
(426, 23, 'Apakah perusahaan memiliki kesadaran keseluruhan akan kebutuhan untuk mengidentifikasi dan mengalokasikan biaya ?', 2),
(427, 23, 'Apakah alokasi biaya didasarkan pada biaya informal atau dasar asumsi, misalnya, biaya perangkat keras, dan selalu ada tautan ke driver nilai ?', 2),
(428, 23, 'Apakah perusahaan melakukan proses alokasi biaya yang berulang  ?', 2),
(429, 23, 'Apakah ada pelatihan atau komunikasi formal yang dilakukan oleh perusahaan tentang identifikasi biaya standar dan prosedur alokasi ?', 2),
(430, 23, 'Apakah perusahaan memberikan tanggung jawab untuk pengumpulan biaya dan alokasi biaya ?', 2),
(431, 23, 'Apakah perusahaan menggunakan model biaya layanan informasi yang terdefinisi dan terdokumentasi ?', 3),
(432, 23, 'Apakah proses untuk menghubungkan biaya TI dengan layanan yang diberikan kepada pengguna didefinisikan oleh manajemen perusahaan ?', 3),
(433, 23, 'Apakah perusahaan memiliki tingkat kesadaran yang tepat mengenai biaya yang dapat distribusikan ke layanan informasi ?', 3),
(434, 23, 'Apakah perusahaan memberikan informasi dasar mengenai biaya terkait bisnis ?', 3),
(435, 23, 'Apakah di perusahaan , tanggung jawab dan akuntabilitas biaya layanan informasi didefinisikan dan dipahami sepenuhnya di semua tingkatan dan sedang didukung dengan pelatihan formal ?', 4),
(436, 23, 'Apakah di perusahaan , biaya langsung dan tidak langsung diidentifikasi dan dilaporkan secara tepat waktu dan otomatis ke pemilik proses bisnis dan pengguna ?', 4),
(437, 23, 'Jika biaya penyimpangan terdeteksi , apakah perusahaan melakukan pemantauan dan evaluasi biaya ?', 4),
(438, 23, 'Apakah pelaporan biaya layanan informasi terkait dengan tujuan bisnis dan SLA dipantau oleh pemilik proses bisnis ?', 4),
(439, 23, 'Apakah perusahaan menerapkan fungsi keuangan untuk meninjau kewajaran proses alokasi biaya ?', 4),
(440, 23, 'perusahaan menerapkan Sistem akuntansi biaya otomatis , tetapi difokuskan pada fungsi layanan informasi daripada pada proses bisnis ?', 4),
(441, 23, 'Apakah tujuan dan metrik disepakati untuk pengukuran biaya tetapi diukur secara tidak konsisten ?', 4),
(442, 23, 'Apakah biaya layanan yang diberikan oleh perusahaan diidentifikasi, ditangkap, diringkas, dan dilaporkan kepada pemilik proses bisnis  dan pengguna ?', 5),
(443, 23, 'Apakah biaya yang diidentifikasi sebagai item dikenakan biaya dan dapat mendukung sistem tagihan secara tepat untuk menagih pengguna pada layanan yang diberikan berdasarkan pemanfaatan ?', 5),
(444, 23, 'Apakah detail biaya sudah mendukung SLA ?', 5),
(445, 23, 'Apakah pemantauan dan evaluasi biaya layanan digunakan untuk mengoptimalkan biaya sumber daya TI ?', 5),
(446, 23, 'Apakah angka biaya yang diperoleh digunakan untuk memverifikasi realisasi manfaat dalam proses penganggaran organisasi ?', 5),
(447, 23, 'Apakah di perusahaan , pelaporan biaya layanan informasi memberikan peringatan dini tentang perubahan persyaratan bisnis melalui sistem pelaporan cerdas ?', 5),
(448, 23, 'Apakah variabel model biaya yang digunakan oleh perusahaan berasal dari volume yang diproses untuk setiap layanan yang disediakan ?', 5),
(449, 23, 'Apakah manajemen biaya disempurnakan ke tingkat praktik industri, berdasarkan hasil perbaikan berkelanjutan dan pembandingan dengan organisasi lain ?', 5),
(450, 23, 'Apakah manajemen meninjau tujuan dan metrik sebagai bagian dari proses perbaikan berkelanjutan dalam mendesain ulang sistem pengukuran biaya ?', 5),
(451, 24, 'Terdapat pelatihan atau program edukasi', 0),
(452, 24, 'Ada pembahasan internal tentang pentingnya pelatihan dan program edukasi staff', 0),
(453, 24, 'memiliki jadwal pelatihan dan program edukasi yang terlaksana dengan baik', 1),
(454, 24, 'terdapat absensi terkait dengan pelatihan dan program edukasi yang dilaksanakan', 1),
(455, 24, 'apakah pelatihan yang dilaksanakan mengandung aspek etika, kesiagaan sistem keamanan dan keamanan pelatihan', 1),
(456, 24, 'apakah pelatihan yang dilaksanakan mengandung aspek etika, kesiagaan sistem keamaan dan keaman pelatihan', 1),
(457, 24, 'manajemen menyadari akan pentingnya pelatihan dan program edukasi yang terasosiasi dengan baik', 2),
(458, 24, 'apakah performa tiap individu dipengaruhi oleh adanya pelatihan?', 2),
(459, 24, 'dalam pelatihan terdapat instruktur berbeda ataupun instruktur yang sama akan tetapi memiliki pendekatan berbeda tiap subjek', 2),
(460, 24, 'masing-masing staff memiliki kepercayaan terhadap pengetahuannya. Serta dapat menyelesaikan masalah yang ada', 2),
(461, 24, 'pelatihan dan program edukasi memiliki dasar hukum pada lembaga terkait', 3),
(462, 24, 'budget, sumber daya, fasilitas sudah ditetapkan untuk mendukung keperluan pelatihan', 3),
(463, 24, 'karyawan dan manajer mengidentifikasi dokumen untuk perluan pelatihan', 3),
(464, 24, 'adanya kelas formal terkait kesadaran pentingnya keaamanan sistem', 3),
(465, 24, 'manajemen memantau proses pelatihan dan program edukasi', 3),
(466, 24, 'apakah analisis masalah dalam pelatihan dan pendidikan sudah diterapkan', 3),
(467, 24, 'pelatihan dan program edukasi memiliki hasil yang dapat di ukur', 4),
(468, 24, 'memiliki tanggung jawab yang jelas', 4),
(469, 24, 'pelatihan dan pendidikan merupakan jalur kerja karyawan', 4),
(470, 24, 'semua karyawan menjalankan kode etik tentang pentingnya keamanan sistem', 4),
(471, 24, 'karyawan mendapatakan pelatihan tentang keamanan sistem yang sesuai untuk mengihindari adanya kegagalan yang berpengaruh terhadap integritas', 4),
(472, 24, 'management memantau kebutuhan peserta dengan mereview dan mengupgrade proses pelatihan', 4),
(473, 24, 'apakah program pelatihan saat ini sedang  diperbaiki dan menerapkan program internal?', 4),
(474, 24, 'hasil pelatihan dapat meningkatkan kemampuan tiap individu ', 5),
(475, 24, 'pelatihan dan program edukasi adalah komponen penting dalam karir karyawan', 5),
(476, 24, 'apakah budget, resource, fasilitas dan instruktur dapat dipenuhi dengan baik?', 5),
(477, 24, 'apakah proses pelatihan selalu mengalami pengembangan?', 5),
(478, 24, 'setiap masalah selalu diselesaikan sampai ke akarnya dan menggunakan langkah yang efisien untuk menganggulanginya', 5),
(479, 24, 'mengedepankan attitude yang postif', 5),
(480, 24, 'penggunanaan pelatihan eksternal sebagai panduan', 5),
(481, 24, 'pelatihan dan program pendidikan menggunakan IT yang terintegrasi', 5),
(482, 25, 'perusahaan belum memiliki pelayanan yang berguna untuk mengatasi masalah dan keluhan dari pelanggan maupun staff', 0),
(483, 25, 'Terdapat kekurangan yang fatal terkait manajemen resiko pada perusahaan', 0),
(484, 25, 'Terdapat kekurangan yang fatal terkait manajemen resiko pada perusahaan', 0),
(485, 25, 'Pihak manajemen perusahaan mengetahui bahwa proses yang didukung oleh alat dan personel diperlukan untuk menanggapi permintaan pengguna dan untuk pengelolaan masalah', 1),
(486, 25, 'Tidak adanya proses standar untuk mengatasi permasalahan, hanya disediakan dukungan reaktif', 1),
(487, 25, 'Tidak adanya peninjauan queri, insiden, atau tren pengguna', 1),
(488, 25, 'Tidak ada proses eskalasi untuk memastikan bahwa masalah teratasi', 1),
(489, 25, 'Ada kesadaran dari pihak manajemen perusahaan akan kebutuhan dari meja layanan (service desk) dan proses manajemen insiden', 2),
(490, 25, 'Bantuan hanya tersedia secara informal melalui staff manajemen yang memiliki pengetahuan terkait insiden yang terjadi.', 2),
(491, 25, 'Tidak adanya pelatihan dan komunikasi terkait prosedur standar, tanggung jawab diserahkan kepada individu.', 2),
(492, 25, 'Kebutuhan kan fungsi meja layanan dan proses manajemen resiko diakui dan diterima.', 3),
(493, 25, 'Adanya kegiatan edukasi dan pelatihan untuk staff dan karyawan perusahaan terkait kualitas layanan yang diberikan', 3),
(494, 25, 'Adanya pengembangan terkait pedoman dan FAQ (pertanyaan yang sering diajukan oleh staff/mahasiswa perusahaan)', 3),
(495, 25, 'Waktu tanggapan terkait masalah yang muncul tidak terukur dan mungkin belum terselesaikan', 3),
(496, 25, 'Pengguna/staff perusahaan telah menerima komunikasi yang jelas tentang di mana dan bagaimana melaporkan masalah dan insiden.', 3),
(497, 25, 'Ada pemahaman penuh terkait manfaat dari proses manajemen insiden di semua tingkat organisasi manajemen perusahaan, dan fungsi meja layanan ditetapkan di setiap level organisasi.', 4),
(498, 25, 'Terdapat alat atau sistem terpusat untuk menangani masalah yang terjadi.', 4),
(499, 25, 'Staff manajemen dan staff meja layanan saling terhubung dan berinteraksi. Tanggung jawab keduanya juga jelas dan terpantau.', 4),
(500, 25, 'Staff meja layanan dilatih, dan proses ditingkatkan melalui penggunaan software atau sistem.', 4),
(501, 25, 'Terdapat pengembangan metrik untuk kinerja meja layanan.', 4),
(502, 25, 'Proses manajemen insiden dan fungsi meja layanan telah didirikan dan diatur dengan baik dan berorientasi pada layanan pelanggan dengan menjadi berpengatuhan luas, berfokus pada pelanggan, dan berguna.', 5),
(503, 25, 'Metrik diukur dan dilaporkan secara sistematis', 5),
(504, 25, 'Terdapat alat atau sistem yang memungkinkan staff maupun pengguna perusahaan mendiagnosis dan menyelesaikan insiden dengan sendirinya.', 5),
(505, 25, 'manajemen menggunakan sistem terintegrasi untuk melihat statistik kinerja dari proses manajemen insdiden dan fungsi meja layanan.', 5),
(506, 25, 'Proses telah disempurnakan ke tingkat praktik industri terbaik, berdasarkan hasil analisis indikator kinerja, peningkatan berkelanjutan, dan pembandingan dengan organisasi lain (dilakukan benchmark dengan kompetitor perusahaan)', 5),
(507, 26, 'Terdapat penghargaan terhadap benefit – benefit dalam sebuah proses untuk pelaporan dan pengelelolaan infrastruktur IT di perusahaan.', 0),
(508, 26, 'Apakah sudah ada kebutuhan akan manajemen konfigurasi?', 1),
(509, 26, 'Manajemen konfigurasi dasar sudah dilakukan secara individu.', 1),
(510, 26, 'Apakah terdapat panduan praktis yang terdefinisikan?', 1),
(511, 26, 'Manajemen sudah sadar akan kebutuhan untuk pengaplikasian konfigurasi IT sudah akurat dan lengkap.', 2),
(512, 26, 'Manajemen mengerti manfaat dari informasi konfigurasi.', 2),
(513, 26, 'Tools manajemen konfigurasi sudah mulai digunakan di beberapa bagian.', 2),
(514, 26, 'Terdapatnya kepercayaan terhadap pengetahuan teknis dan keahlian personil', 2),
(515, 26, 'Terdapat standar praktis yang terdefinisi.', 2),
(516, 26, 'Isi dari data konfigurasi terbatas.', 2),
(517, 26, 'Dapat digunakan untuk proses yang saling berhubungan.', 2),
(518, 26, 'Prosedur dan panduan praktis sudah terdokumentasi, terstandarisasi dan dikomunikasikan', 3),
(519, 26, 'Hasil training dan pengaplikasian dari standard – standard itu bergantung pada individual.', 3),
(520, 26, 'Alat manajemen konfigurasi yang sama diimplementasi melintasi platform yang ada.', 3),
(521, 26, 'Deviasi prosedur sudah tidak dideteksi dan diverifikasi fisik yang dilakukan secara konsisten.', 3),
(522, 26, 'Proses automasi dilakukan untuk membantu penelusuran equipment dan perubahan software.', 3),
(523, 26, 'Data konfigurasi sudah digunakan untuk proses yang berhubungan', 3),
(524, 26, 'Kebutuhan untuk mengelola konfigurasi sudah mulai dikenali oleh semua tingkatan.', 4),
(525, 26, 'Prosedur dan standard sudah dikomunikasikan dan dilaksanakan kedalam kegiatan training, deviasi dipantau, ditelusuri dan dilaporkan', 4),
(526, 26, 'Alat automasi digunakan untuk meningkatkan standard dan meningkatkan stabilitas organisasi', 4),
(527, 26, 'Sistem manajemen konfigurasi sudah didistribusi', 4),
(528, 26, 'Analisis terhadap pengecualian secara konsisten diaplikasikan dan diinvestigasi permasalahannya.', 4),
(529, 26, 'Aset IT dikelola dengan sistem manajemen konfigurasi terpusat yang berisi semua informasi penting mengenai komponen dan event.', 5),
(530, 26, 'Data konfigurasi selaras dengan katalog dari vendor', 5),
(531, 26, 'Terdapat integrasi penuh untuk proses yang berhubungan dan digunakan secara otomatis', 5),
(532, 26, 'Laporan audit memberikan informasi esensi hardware dan data software untuk perbaikan secara berkala.', 5),
(533, 26, 'Manajemen meramalkan perbaikan dan upgrade berdasarkan laporan analisa.', 5),
(534, 26, 'Penelusuran aset dan pemantauan terhadap aset IT secara infividual dan melindunginya upaya mencegah terjadinya pencurian dan penyalahgunaan dan perusakan', 5),
(535, 27, 'Apakah perusahaan telah memiliki kesadaran pentingnya mengelola masalah yang sedang terjadi ?', 0),
(536, 27, 'Apakah perusahaan sudah memiliki upaya untuk mengidentifikasi akan penyebab dari masalah yang sedang terjadi ?', 0),
(537, 27, 'Apakah personnel perusahaan sudah mulai menyadari perlunya mengelola masalah yang sedang terjadi ?', 1),
(538, 27, 'Apakah personnel perusahaan sudah mulai menyadari untuk menyelesaikan penyebab yang mendasari masalah perusahaan ?', 1),
(539, 27, 'Apakah personnel perusahaan telah memberikan bantuan pada masalah yang berkaitan dengan bidang masing-masing ?', 1),
(540, 27, 'Apakah personnel perusahaan telah bertanggung jawab sepenuhnya untuk mengelola masalah yang terjadi ?', 1),
(541, 27, 'Apakah perusahaan saling terbuka dan berdiskusi dalam mengelola masalah pada masing-masing bidang di dalam perusahaan?', 1),
(542, 27, 'Apakah perusahaan telah menyadari manfaat dari mengelola masalah yang berkaitan dengan IT di dalam unit bisnis ?', 2),
(543, 27, 'Apakah perusahaan telah menyadari manfaat dari mengelola masalah yang berkaitan dengan IT dalam layanan informasi perusahaan ?', 2),
(544, 27, 'Apakah stakeholder utama di dalam perusahaan bertanggung jawab untuk mengidentifikasi dan menyelesaikan masalah yang terjadi ?', 2),
(545, 27, 'Apakah informasi terkait update masalah terus dibagikan pada staff lainnya secara informal dan reaktif ?', 2),
(546, 27, 'Apakah kebutuhan akan sistem mengelola masalah telah terintegrasi dan dibuktikan oleh management support?', 3),
(547, 27, 'Apakah perusahaan menyediakan kebutuhan anggaran untuk staffing dan training yang tersedia?', 3),
(548, 27, 'Apakah penyelesaian masalah perusahaan telah distandarisasi ?', 3),
(549, 27, 'Apakah pelacakan masalah dan penyelesainnya telah terbagi ke dalam tim yang tanggap dengan menggunakan alat yang tersedia tanpa sentralisasi ?', 3),
(550, 27, 'Apakah informasi mengenai update masalah telah dibagikan diantara staff perusahaan dalam bentuk formal ?', 3),
(551, 27, 'Apakah perusahaan melakukan review mengenai mengelola masalah dan analisis dari identifikasi serta penyelesaian masalah dengan terbatas dan informal ?', 3),
(552, 27, 'Apakah proses pengelolaan masalah telah dipahami oleh semua tingkatan dalam perusahaan?', 4),
(553, 27, 'Apakah tanggung jawab dalam mengelola masalah pada semua tingkatan di TKTI telah ditetapkan dengan jelas ?', 4),
(554, 27, 'Apakah metode dan prosedur dalam mengelola masalah perusahaan didokumentasikan, dikomunikasikan, dan diukur dengan ke-efektivitas-an ?', 4),
(555, 27, 'Apakah pengetahuan dan keahlidan personnel perusahaan dipelihara dan dikembangkan ke tingkatan yang lebih tinggi untuk pencapaian tujuan IT dan peningkatan layanan IT?', 4),
(556, 27, 'Apakah pengelolahan masalah yang dilakukan perusahaan dapat meningkatkan layanan dalam membantu customers mengelola data, fasilitas, dan operasional ?', 4),
(557, 27, 'Apakah proses pengelolahan masalah perusahaan telah di tahap progresfi dan proaktif, serta berkontribusi pada tujuan IT ?', 5),
(558, 27, 'Apakah rekaman, laporan, analisis, dan penyelesaian masalah perusahaan telah diotomatisasi dan terintegrasi dengan mengkonfigurasi data management ?', 5),
(559, 27, 'apakah perusahaan telah dilengkapi dengan deteksi secara otomatis dan terus menerus dilacak dan dievaluasi?', 5),
(560, 27, 'Apakah proses managemen masalah perusahaan dianalisis secara terus menerus berdasarkan analisis untuk perbaikan dan dilaporkan ke stakeholders terkait ?', 5),
(561, 28, 'Data tidak diakui sebagai sumberdaya dan aset perusahaan.', 0),
(562, 28, 'Apakah perusahaan memiliki individu yang bertanggung jawab tentang pengolahan data?', 0),
(563, 28, 'Apakah perusahaan menyadari kebutuhan akan manajemen data yang efektif?', 1),
(564, 28, 'Apakah terdapat pendekatan ad-hoc untuk menentuan persyaratan keamanan untuk pengelolaan data?', 1),
(565, 28, 'Apakah prosedur back up / pemulihan serta pengaturan pembuangan telah tersedia?', 1),
(566, 28, 'Apakah perusahaan menyadari pentingnya akan pengelolaan data yang efektif?', 2),
(567, 28, 'Apakah dilakukan monitoring IT pada kegiatan utama dalam pengelolaan data seperti back up, pemulihan, pembuangan?', 2),
(568, 28, 'Tanggung jawab untuk pengelolaan data ditugaskan untuk staff IT. secara informal', 2),
(569, 28, 'Kebutuhan akan pengelolaan data di dalam IT dan perusahaan dapat dipahami dan diterima.', 3),
(570, 28, 'perusahaan telah menunjuk penanggung jawab atas pengelolaan data.', 3),
(571, 28, 'Data kepemilikan ditugaskan untuk pihak yang bertanggung jawab yang mengontrol integritas dan keamanan.', 3),
(572, 28, 'Prosedur pengelolaan data diformalkan dalam IT dan beberapa alat untuk back up / pemulihan serta pembuangan telah digunakan.', 3),
(573, 28, 'Apakah terdapat pelatihan tentang pengelolaan data untuk staff dan anggota baru perusahaan?', 3),
(574, 28, 'Kebutuhan pengelolaan data dapat dipahami dan tindakan yang dilakukan dapat diterima dalam perusahaan.', 4),
(575, 28, 'Apakah tanggung jawab untuk data kepemilikan dan manajemen data telah didefinisikan dengan jelas dan dikomunikasikan dalam perusahaan.', 4),
(576, 28, 'Apakah prosedur telah diformalkan dan dikenal luas?', 4),
(577, 28, 'Tujuan dan indikator kinerja yang disepakati dengan klien dapat dipantau melalui proses yang jelas.', 4),
(578, 28, 'Apakah terdapat pelatihan resmi untuk anggota staff pengelolaan data di perusahaan?', 4),
(579, 28, 'Apakah kebutuhan pengelolaan data dan pemahaman dari semua tindakan yang diperlukan telah dipahami oleh semua staff perusahaan?', 5),
(580, 28, 'Kebutuhan dan persyaratan kedepannya dieksplorasi secara proaktif.', 5),
(581, 28, 'Apakah peralatan canggih yang digunakan untuk otomatisasi data telah digunakan secara maksimal?', 5),
(582, 28, 'Tujuan dan indikator kinerja yang disepakati dengan klien terkait dengan tujuan bisnis dan secara konsisten dipantau menggunakan proses yang ditentukan dengan jelas.', 5),
(583, 28, 'Apakah perusahaan terus mengeksplorasi peluang untuk perbaikan?', 5),
(584, 28, 'Apakah pelatihan pengelolaan data untuk anggota staff perusahaan dilembagakan?', 5),
(585, 29, 'Manajemen perusahaan telah memiliki kesadaran akan perlindungan kebuhan untuk melindungi fasilitas fasilitas yang ada.', 0),
(586, 29, 'Apakah perusahaan telah memiliki alat proteksi kebakaran, debu, daya dan sejenisnya?', 0),
(587, 29, 'Apakah sudah ada orang yang bertugas untuk melakukan contorl dan monitoring terkait dengan kerusakan yang disebabkan oleh faktor lingkungan?', 0),
(588, 29, 'Adanya persyaratan bisnis untuk menyediakan lingkungan fisik yang sesuai guna melindungi sumber daya dan personel perusahaan dari bahaya yang disebabkan oleh alam.', 1),
(589, 29, 'Pengelolaan fasilitas perusahaan bergantung pada keterampilan dan kemampuan individu.', 1),
(590, 29, 'Telah adanya pemantauan pengendalian lingkungan fasilitas atau pergerakan personil oleh manajemen perusahaan.', 1),
(591, 29, 'Adanya pemantauan pengendalian lingkungan oleh personel operasi.', 2),
(592, 29, 'Terciptanya keamanan fisik yang didorong oleh sekelompok karyawan yang memiliki kepedulian kerkait keamanan fasilitas fisik secara informal.', 2),
(593, 29, 'Pemeliharaan fasilitas telah terdokumentasi dengan baik.', 2),
(594, 29, 'Dokumentasi fasilitas bergantung pada praktik yang baik dari individual.', 2),
(595, 29, 'Sasaran keamanan fisik telah didasarkan pada standar formal apapun.', 2),
(596, 29, 'Telah adanya kepastian dari manajemen bahwa tujuan keamanan tercapai.', 2),
(597, 29, 'Adanya pemahaman terkait kebutuhan pengendalian pemeliharaan lingkungan oleh organisasi.', 3),
(598, 29, 'Disetujuinya item anggaran untuk pengendalian lingkunga, pemeliharaan preventif dan keamanan fisik.', 3),
(599, 29, 'Adanya pelacakan item anggaran oleh manajemen.', 3),
(600, 29, 'Adanya pembatasan akses dalam penggunaan fasilitas perusahaan.', 3),
(601, 29, 'Adanya pencatatan dan pengawalan pengunjung yang hadir.', 3),
(602, 29, 'Adanya pemantauan kepatuhan terhadap peraturan kesehatan dan keselamatan oleh otoritas sipil.', 3),
(603, 29, 'Dilakukan pengoptimalan biaya risiko dengan melakukan asuransi.', 3),
(604, 29, 'Adanya pengendalian dan pemahaman pemeliharaan lingkungan yang dapat dilihat dalam struktur organisasi dan anggaran.', 4),
(605, 29, 'Adanya dokumentasi persyaratan keamanan lingkungan dan fisik.', 4),
(606, 29, 'Adanya kontrol dan pemantauan persyaratan keamanan lingkungan dan fisik yang ketat.', 4),
(607, 29, 'Adanya komunikasi akan tanggung jawab dan kepemilikan fasilitas.', 4),
(608, 29, 'Terciptanya anggota staf yang terlatih dalam situasi darurat serta dalam praktik kesehatan dan keselamatan.', 4),
(609, 29, 'Adanya pemantauan dari manajemen terkait pengendalian dan kepatuhan terhadap standar yang telah ditetapkan.', 4),
(610, 29, 'Adanya tujuan yang ditetapkan oleh manajemen.', 4),
(611, 29, 'Adanya metrik untuk mengukur manajemen lingkungan yang dibuat oleh menejemen.', 4),
(612, 29, 'Apakah pemulihan sumberdaya telah dimasukkan kedalam manajemen risiko perusahaan?', 4),
(613, 29, 'Adanya informasi terintegrasi untuk mengoptimalkan pertanggung jawaban asuransi dan biaya.', 4),
(614, 29, 'Adanya rencana jangka panjang yang disepakati terkait fasilitas yang diperlukan guna mendukung lingkungan perusahaan.', 5),
(615, 29, 'Adanya standar untuk semua fasilitas, yang mencakup pemilihan lokasi, konstruksi, penjagaan, keselamatan personel, sistem mekanis dan kelistrikan, dan perlindungan terhadap faktor lingkungan (misalnya, kebakaran, penerangan, banjir).', 5),
(616, 29, 'Semua fasilitas telah diinventariskan dan diklasifikasikan sesuai dengan proses manajemen risiko perusahaan yang sedang berlangsung.', 5),
(617, 29, 'Adanya kontrol yang ketat terkait dengan akses.', 5),
(618, 29, 'Adanya pengawalan pengunjung yang datang.', 5),
(619, 29, 'Adanya pemantauan dan pengendalian melalui peralatan khusus.', 5),
(620, 29, 'Adanya pengukuran dan evaluasi tujuan secara konsisten.', 5),
(621, 29, 'Diterapkannya program pemeliharaan preventif yang dilakukan sesuai dengan jadwal.', 5),
(622, 29, 'Adanya strategi dan standar fasilitas yang diselaraskan dengan target ketersediaan layanan TI dan terintegrasi dengan perencanaan kesinambungan bisnis dan manajemen krisis.', 5),
(623, 29, 'Manajemen perusahaan meninjau dan mengoptimalkan fasilitas menggunakan tujuan dan metrik secara terus menerus.', 5),
(624, 29, 'Adanya pemanfaatan peluang untuk meningkatkan kontribusi bisnis.', 5),
(625, 30, 'Apakah perusahaan menyediakan waktu dan sumber daya untuk membentuk dukungan IT dasar dan kegiatan operasi?', 0),
(626, 30, 'Apakah perusahaan menyadari akan kebutuhan penataan struktur dukungan IT?', 1),
(627, 30, 'Apakah beberapa prosedur standar yang ditetapkan, dan kegiatan operasi bersifat reaktif?', 1),
(628, 30, 'Mayoritas proses operasional informal dijadwalkan, dan pemrosesan permintaan diterima tanpa validasi sebelumnya.', 1),
(629, 30, 'Komputer, sistem dan aplikasi yang mendukung proses bisnis yang sering terganggu, tertunda dan tidak tersedia.', 1),
(630, 30, 'Berapa banyak waktu yang terbuang disaat karyawan menunggu sumber daya?', 1),
(631, 30, 'Organisasi menyadari peran kunci yang kegiatan operasional TI dalam menyediakan fungsi dukungan IT.', 2),
(632, 30, 'Anggaran untuk alat-alat dialokasikan pada kasus-per kasus.', 2),
(633, 30, 'Mendukung operasi TI informal dan intuitif.', 2),
(634, 30, 'Ada ketergantungan yang tinggi pada keterampilan dan kemampuan individu.', 2),
(635, 30, 'Adanya instruksi yang mencakup apa yang harus dilakukan, kapan dan dalam urutan apa tidak didokumentasikan.', 2),
(636, 30, 'Beberapa operator ada pelatihan, dan ada beberapa standar operasional formal.', 2),
(637, 30, 'Kebutuhan manajemen operasi komputer dipahami dan diterima dalam organisasi.', 3),
(638, 30, 'Sumber daya yang dialokasikan dan adanya beberapa pelatihan on-the-job.', 3),
(639, 30, 'Fungsi berulang secara resmi ditetapkan, standar, didokumentasikan dan dikomunikasikan', 3),
(640, 30, 'Adanya acara dan hasil tugas selesai dicatat, dengan pelaporan manajemen terbatas.', 3),
(641, 30, 'Penggunaan penjadwalan otomatis dan alat lainnya diperkenalkan untuk membatasi intervensi operator.', 3),
(642, 30, 'Kontrol diperkenalkan untuk operasi penempatan pekerjaan baru.', 3),
(643, 30, 'Sebuah kebijakan resmi dikembangkan untuk mengurangi jumlah peristiwa terjadwal.', 3),
(644, 30, 'Perjanjian pemeliharaan dan layanan dengan vendor masih informal atau alami.', 3),
(645, 30, 'Adanya operasi komputer dan tanggung jawab dukungan yang jelas dan kepemilikan tugas.', 4),
(646, 30, 'Adanya operasi yang didukung melalui anggaran sumber daya untuk belanja modal dan sumber daya manusia.', 4),
(647, 30, 'Apakah ada pelatihan formal dan berkelanjutan?', 4),
(648, 30, 'Jadwal dan tugas yang didokumentasikan dan dikomunikasikan, baik secara internal ke fungsi TI dan pelanggan bisnis.', 4),
(649, 30, 'Adanya pengukur dan pemantau kegiatan sehari-hari dengan perjanjian kinerja standar dan tingkat layanan yang ditetapkan.', 4),
(650, 30, 'Apakah setiap penyimpangan dapat cepat ditangani dan diperbaiki?', 4),
(651, 30, 'Manajemen memonitor penggunaan sumber daya komputasi dan penyelesaian pekerjaan atau tugas yang diberikan.', 4),
(652, 30, 'Upaya berkesinambungan ada untuk meningkatkan tingkat otomatisasi proses sebagai sarana perbaikan terus-menerus.', 4),
(653, 30, 'Perjanjian pemeliharaan dan layanan formal didirikan dengan vendor.', 4),
(654, 30, 'Adanya keselarasan penuh dengan masalah, kapasitas dan proses manajemen ketersediaan, didukung oleh analisis penyebab kegagalan.', 4),
(655, 30, 'perusahaan mendukung operasi IT yang efektif, efisien & cukup fleksibel untuk memenuhi tingkat kebutuhan layanan produktivitas minimal hilang.', 5),
(656, 30, 'Proses manajemen operasional IT perusahaan yang standar dan didokumentasikan dalam basis pengetahuan dan peningkatan kepatuhan terus menerus.', 5),
(657, 30, 'Proses otomatis yang mendukung sistem beroperasi mulus dan berkontribusi pada lingkungan perusahaan yang stabil.', 5),
(658, 30, 'Pertemuan rutin dengan manajemen perubahan memastikan masuknya tepat waktu dengan perubahan jadwal produksi.', 5),
(659, 30, 'Dalam kerjasama dengan vendor, peralatan dianalisis untuk usia dan gejala kerusakan, dan pemeliharaan terutama pencegahan natural.', 5),
(660, 31, 'perusahaan belum mengimplementasikan proses monitoring terhadap modul pembelajaran jarak jauh.', 0),
(661, 31, 'Belum terdapat proses monitoring terhadap kompetensi mahasiswa lulusan perusahaan.', 0),
(662, 31, 'Belum terdapat laporan-laporan yang berguna untuk menunjang proses monitoring kompetensi lulusan perusahaan.', 0),
(663, 31, 'Belum terdapat Laporan-laporan yang berguna untuk menunjang proses monitoring modul pembelajaran jarak jauh.', 0),
(664, 31, 'Teknologi yang tersedia tidak bisa melakukan monitoring terhadap ketepatan modul pembelajaran jarak jauh.', 0),
(665, 31, 'Kebutuhan akan proses objektif yang dipahami secara jelas, belum terpahami', 0),
(666, 31, 'perusahaan merupakan organisasi yang sadar akan pentingnya memiliki informasi mengenai proses monitoring dan evaluasi terhadap pelaksanaan pembelajaran jarak jauh.', 1),
(667, 31, 'perusahaan merupakan organisasi yang sadar akan pentingnya memiliki informasi mengenai proses monitoring dan evaluasiterhadap kompetensi mahasiswa lulusan perusahaan.', 1),
(668, 31, 'Standar pengumpulan dan pengkajian informasi terkait monitoring dan evaluasi terhadap pembelajaran jarak jauh dalam perusahaan belum didefinisikan dengan jelas.', 1),
(669, 31, 'Monitoring terhadap modul pembelajaran (khususnya pembelajaran jarak jauh) hanya dilakukan ketika terjadi hal-hal yang tidak diinginkan ketika pelaksanaan pembelajaran berlangsung.', 1),
(670, 31, 'Monitoring terhadap kompetensi mahasiswa lulusan perusahaan hanya dilakukan ketika terjadi hal-hal yang tidak diinginkan pasca kelulusan.', 1),
(671, 31, 'Terdapat standar terhadap apa saja yang harus dipantau terkait modul pembelajaran jarak jauh.', 2),
(672, 31, 'Terdapat standar terhadap apa saja yang harus dipantau terkait kompetensi mahasiswa lulusan perusahaan.', 2),
(673, 31, 'Terdapat Laporan Pengendalian pada perusahaan untuk melakukan tindakan perbaikan yang inisiatif pada Modul Pembelajaran', 2),
(674, 31, 'perusahaan mengalami peningkatan kesadaran dari pemantauan internal organisasi', 2),
(675, 31, 'Terdapat Layanan informasi manajemen perusahaan melakukan pemantauan terhadap efektifitas kinerja staff', 2),
(676, 31, 'Adanya alat bantu/sistem yang baru diimplemantasikan untuk monitoring SDM', 2),
(677, 31, 'Keterampilan SDM menentukan teknologi yang digunakan perusahaan', 2),
(678, 31, 'Organisasi memiliki dasar serta mengkomunikasikan standar-standar pelaksanaan monitoring terkait kompetensi mahasiswa lulusan perusahaan', 3),
(679, 31, 'Organisasi memiliki dasar serta mengkomunikasikan standar-standar pelaksanaan monitoring terkait modul pembelajaran jarak jauh', 3),
(680, 31, 'Terdapat sumber daya yang berkualitas untuk mendukung pelaksanaan proses monitoring terkait kompetensi mahasiswa lulusan perusahaan', 3),
(681, 31, 'Terdapat sumber daya yang berkualitas untuk mendukung pelaksanaan proses monitoringterkait modul pembelajaran jarak jauh', 3),
(682, 31, 'Terdapat framework yang digunakan sebagai standar operasional pada perusahaan', 3),
(683, 31, 'Adanya penetapan kebijakan manajemen risiko meliputi penerapan kebijakan dan prosedur.', 3),
(684, 31, 'Adanya sistem yang terintegrasi yang dapat digunakan untuk memantau informasi operasional perusahaan.', 4),
(685, 31, 'Apakah perusahaan memiliki standar tertentu dalam pelaporan hasil monitoring yang telah dilakukan terhadap pembelajaran jarak jauh?', 4),
(686, 31, 'Adanya evaluasi kinerja dengan kriteria tertentu yang telah disepakati dan disetujui stakeholder perusahaan.', 4),
(687, 31, 'Adanya upaya perbaharuan atau peningkatan kualitas perihal standar monitoring kompetensi lulusan perusahaan setiap tahunnya.', 5),
(688, 31, 'Adanya upaya perbaharuan atau peningkatan kualitas terhadap evaluasi dari pelaksanaan pembelajaran jarak jauh.', 5),
(689, 31, 'perusahaan melakukan benchmarking terhadap industri atau perusahaan lain dengan bidang yang sama.', 5),
(690, 31, 'Terdapat kerangka kerja khusus (IT Balanced Scorecard) untuk mengukur penyelenggaraan IT sesuai dengan peraturan perundang-undangan yang berlaku', 5),
(691, 32, 'perusahaan belum mempunyai program untuk memantau aktivitas pengendalian internal.', 0),
(692, 32, 'Belum adanya prosedur dalam melakukan pemantauan efektivitas pengendalian internal.', 0),
(693, 32, 'Belum adanya laporan-laporan yang berguna untuk menunjang proses pemantauan aktivitas pengendalian internal perusahaan.', 0),
(694, 32, 'Belum ada SDM yang bertanggungjawab terhadap pengendalian internal perusahaan.', 0),
(695, 32, 'Belum adanya pengetahuan umum akan pentingnya memiliki pemahaman terhadap pengendalian internal, termasuk dalam hal keamanan operasional IT dan jaminan terhadap pengendalian internal.', 0),
(696, 32, 'Belum adanya prosedur dalam hal menjaga keamanan operasional IT dan jaminan terhadap pengendalian internal.', 0),
(697, 32, 'Belum adanya teknologi yang bisa mengukur kinerja dari pihak manajemen dan pegawai dalam memantau dan melakukan pengendalian internal.', 0),
(698, 32, 'perusahaan merupakan organisasi yang sadar akan pentingnya memiliki manajemen dan jaminan pengendalian IT yang teratur.', 1),
(699, 32, 'Apakah penilaian kelengkapan pengendalian internal diterapkan secara ad hoc (tidak permanen dan pembentukannya sejak semula dimaksudkan hanya untuk sementara waktu dan untuk menangani peristiwa tertentu)?', 1),
(700, 32, 'Belum adanya tanggungjawab secara formal dalam memantau efektivitas pengendalian internal.', 1),
(701, 32, 'Standar pengkajian informasi yang dibutuhkan terkait pemantauan efektivitas pengendalian internal dalam perusahaan belum didefinisikan dengan jelas.', 1),
(702, 32, 'Penilaian pengendalian internal IT dilakukan sebagai bagian dari audit keuangan tradisional, dengan metodologi dan keahlian yang tidak mencerminkan kebutuhan fungsi layanan informasi.', 1),
(703, 32, 'Terdapat laporan pengendalian secara informal pada perusahaan untuk memulai inisiatif tindakan perbaikan/korektif terhadap aktivitas pengendalian internal.', 2),
(704, 32, 'Penilaian pengendalian internal pada perusahaan bergantung pada keahlian SDM kunci.', 2),
(705, 32, 'perusahaan mengalami peningkatan kesadaran dari pemantauan pengendalian internal.', 2),
(706, 32, 'Terdapat layanan informasi manajemen perusahaan untuk memantau efektifitas dari pengendalian internal yang bersifat kritis secara teratur.', 2),
(707, 32, 'Adanya metodologi dan alat bantu/sistem yang mulai digunakan untuk pengendalian internal, tetapi tidak digunakan sesuai rencana.', 2),
(708, 32, 'Keterampilan SDM menentukan teknologi yang digunakan perusahaan.', 2),
(709, 32, 'Terdapat lembaga khusus untuk melakukan pemantauan pengendalian internal. ', 3),
(710, 32, 'Adanya kebijakan dan prosedur yang  dikembangkan untuk menilai dan melaporkan aktivitas pemantauan pengendalian internal.', 3),
(711, 32, 'Terdapat program pendidikan dan pelatihan untuk pemantauan pengendalian internal.', 3),
(712, 32, 'Terdapat sebuah aktivitas/proses yang digunakan untuk penilaian diri dan tinjauan jaminan pengendalian internal, dengan peranan untuk bisnis yang bertanggung jawab dan manajer IT.', 3),
(713, 32, 'Terdapat alat yang sedang digunakan untuk pengendalian internal tetapi belum tentu diintegrasikan ke dalam keseluruhan proses.', 3),
(714, 32, 'Terdapat kebijakan penilaian risiko proses IT yang sedang digunakan dalam framework pengendalian yang dikembangkan khusus untuk organisasi IT.', 3),
(715, 32, 'Adanya penetapan kebijakan manajemen risiko meliputi penerapan kebijakan dan prosedur.', 3),
(716, 32, 'Terdapat framework yang digunakan untuk untuk pemantauan pengendalian internal IT.', 4),
(717, 32, 'Adanya standar tingkat toleransi yang ditetapkan untuk proses pemantauan pengendalian internal.', 4),
(718, 32, 'Adanya alat diterapkan untuk membakukan penilaian dan secara otomatis mendeteksi pengecualian kontrol.', 4),
(719, 32, 'perusahaan menetapkan fungsi pengendalian internal IT formal dengan profesional yang terspesialisasi dan bersertifikat yang menggunakan framework kontrol formal yang didukung oleh manajemen senior.', 4),
(720, 32, 'Adanya partisipasi secara rutin dari anggota staf IT  dalam penilaian pengendalian internal.', 4),
(721, 32, 'Adanya penetapan basis pengetahuan metrik untuk informasi historis pada pemantauan pengendalian internal.', 4),
(722, 32, 'Adanya tinjauan sejawat untuk pemantauan pengendalian internal.', 4),
(723, 32, 'Adanya program peningkatan berkelanjutan di seluruh organisasi yang memperhitungkan pembelajaran dan praktik industri yang baik untuk pemantauan pengendalian internal.', 5),
(724, 32, 'Adanya upaya pembaruan alat yang terintegrasi, yang memungkinkan penilaian efektif atas kontrol IT kritis dan deteksi cepat insiden pemantauan pengendalian IT.', 5),
(725, 32, 'perusahaan melakukan benchmarking terhadap industri atau perusahaan lain dengan bidang yang sama untuk fungsi layanan informasi.', 5),
(726, 32, 'perusahaan melakukan pembandingan terhadap standar industri dan praktik yang baik.', 5),
(727, 33, 'Sejauh mana tingkat kesadaran tentang persyaratan eksternal yang memengaruhi TI, tanpa adanya proses terkait kepatuhan terhadap peraturan, hukum, dan persyaratan kontrak pada perusahaan?', 0),
(728, 33, 'Sejauh mana tingkat kesadaran akan kepatuhan peraturan, persyaratan kontrak dan hukum yang berdampak pada organisasi ?', 1),
(729, 33, 'Sejauh mana proses informal diikuti untuk menjaga kepatuhan, tetapi hanya jika diperlukan dalam proyek baru atau sebagai tanggapan atas audit atau tinjauan pada perusahaan?', 1),
(730, 33, 'Sejauh mana tingkat pemahaman tentang perlunya untuk mematuhi persyaratan eksternal, yang mana kebutuhan tersebut perlu untuk dikomunikasikan?', 2),
(731, 33, 'Sejauh mana tingkat prosedur kepatuhan individu telah dikembangkan dan diikuti setiap tahun ? Yang mana hal tsb adalah sebuah persyaratan berulang, seperti dalam peraturan keuangan atau undang-undang privasi', 2),
(732, 33, 'Sejauh mana pendekatan standar yang ada dalam perusahaan?', 2),
(733, 33, 'Sejauh mana tingkat ketergantungan pada pengetahuan dan tanggung jawab individu, dan kemungkinan terjadinya kesalahan?', 2),
(734, 33, 'Sejauh mana adanya pelatihan informal mengenai persyaratan eksternal dan masalah kepatuhan?', 2),
(735, 33, 'Sejauh mana kebijakan, rencana dan prosedur dikembangkan, didokumentasikan dan dikomunikasikan untuk memastikan kepatuhan terhadap peraturan, persyaratan kontrak dan kewajiban hukum?', 3),
(736, 33, 'Sejauh mana tingkat pemantauan yang dilakukan dan persyaratan kepatuhan yang telah ditangani?', 3),
(737, 33, 'Sejauh mana pelatihan disediakan dalam persyaratan hukum  dan peraturan eksternal yang mempengaruhi organisasi dan proses kepatuhan yang ditetapkan?', 3),
(738, 33, 'Sejauh mana efek adanya kontrak pro forma standar dan proses hukum untuk meminimalkan risiko yang terkait dengan kewajiban kontraktual?', 3),
(739, 33, 'Sejauh mana masalah dan paparan dari persyaratan eksternal dan kebutuhan kepatuhan dipahami sepenuhnya oleh semua tingkatan?', 4),
(740, 33, 'Sejauh mana tingkat kesadaran semua anggota staf perusahaan mengenai kewajiban kepatuhan dari skema pelatihan formal yang diberlakukan?', 4),
(741, 33, 'Sejauh mana rasa tanggung jawab dan kepemilikan proses dipahami?', 4),
(742, 33, 'Sejauh mana proses meninjau lingkungan yang dilakukan untuk mengidentifikasi persyaratan eksternal dan perubahan yang sedang berlangsung?', 4),
(743, 33, 'Sejauh mana mekanisme untuk memantau ketidakpatuhan terhadap persyaratan eksternal, melaksanakan praktik internal, dan melakukan tindakan korektif dilakukan?', 4),
(744, 33, 'Sejauh mana masalah ketidakpatuhan dianalisis untuk mencari akar permasalahannya dengan cara standar, dengan tujuan untuk mengidentifikasi solusi yang berkelanjutan?', 4),
(745, 33, 'Sejauh mana praktik internal baik yang terstandardisasi digunakan untuk kebutuhan khusus, seperti peraturan tetap dan layanan kontrak yang berulang?', 4),
(746, 33, 'Sejauh mana proses yang terorganisir dengan baik, efisien dan diberlakukan untuk mematuhi persyaratan eksternal, berdasarkan sebuah fungsi pusat yang memberikan bimbingan dan koordinasi kepada seluruh organisasi?', 5),
(747, 33, 'Sejauh mana pengetahuan luas tentang persyaratan eksternal yang berlaku, termasuk tren masa depan dan perubahan yang diantisipasi, dan kebutuhan terhadap solusi baru yang ada?', 5),
(748, 33, 'Sejauh mana organisasi ikut ambil bagian dalam diskusi eksternal dengan regulator dan kelompok industri untuk memahami dan mempengaruhi persyaratan eksternal yang mempengaruhi mereka?', 5),
(749, 33, 'Sejauh mana praktik baik dikembangkan untuk memastikan kepatuhan yang efisien dengan persyaratan eksternal, menghasilkan sangat sedikit  kasus pengecualian kepatuhan?', 5),
(750, 33, 'Sejauh mana sistem organisasi yang luas dan terpusat, yang memungkinkan manajemen untuk mendokumentasikan alur kerja dan untuk mengukur serta meningkatkan kualitas dan efektivitas proses pemantauan kepatuhan?', 5),
(751, 33, 'Sejauh mana tingkat penerapan dan penyempurnaan proses penilaian diri persyaratan eksternal ?', 5),
(752, 33, 'Sejauh mana pengembangan gaya manajemen dan budaya organisasi yang berkaitan dengan kepatuhan, serta pelatihan terbatas pada personel baru ?', 5),
(753, 34, 'Manajemen perusahaan tidak menyadari adanya permasalahan yang harus ditindaklanjuti', 0),
(754, 34, 'Manajemen perusahaan tidak melakukan komunikasi mengenai permasalahan yang terjadi', 0),
(755, 34, 'Manajemen perusahaan menyadari adanya permasalahan yang harus ditindaklanjuti', 1),
(756, 34, 'Manajemen perusahaan melakukan pendekatan sementara yang diaplikasikan pada masing - masing kasus', 1),
(757, 34, 'Manajemen pendekatan masalah bersifat reaktif', 1),
(758, 34, 'Manajemen perusahaan melakukan komunikasi dan pendekatan terhadap masalah bersifat tidak konsisten dan jarang dilakukan', 1),
(759, 34, 'Manajemen perusahaan hanya memperkirakan indikasi bagaimana IT berkontribusi pada performance bisnis', 1),
(760, 34, 'Manajemen perusahaan hanya merespon secara reaktif terhadap masalah yang memengaruhi nama baik institusi', 1),
(761, 34, 'Manajemen perusahaan memiliki kesadaran terhadap adanya masalah Tata Kelola Teknologi Informasi', 2),
(762, 34, 'Manajemen perusahaan melakukan pengembangan aktivitas Tata Kelola Teknologi Informasi serta indikator performa', 2),
(763, 34, 'Manajemen perusahaan mengidentifikasi proses IT yang terpilih untuk pengembangan', 2),
(764, 34, 'Manajemen perusahaan mengidentifikasi pengukuran TKTI dasar dan metode beserta teknik penilaiannya, namun proses tidak diterapkan di seluruh organisasi', 2),
(765, 34, 'Masing - masing staff manajemen perusahaan mengelola proses manajemen dengan project dan proses yang bervariasi', 2),
(766, 34, 'Proses, peralatan, dan ukuran untuk mengukur tata kelola TI terbatas dan mungkin tidak bisa digunakan sebaik mungkin akibat kurangnya ahli pada tiap fungsionalitasnya', 2),
(767, 34, 'Manajemen perusahaan memahami kepentingan dan kebutuhan adanya manajemen tata kelola TI dan mengkomunikasikannya dengan organisasi', 3),
(768, 34, 'Manajemen perusahaan mengembangkan sekumpulan baseline indikator manajemen tata kelola TI', 3),
(769, 34, 'Manajemen perusahaan mendefinikan dan membuat dokumentasi hubungan antara ukuran keluaran dan indikator performa', 3),
(770, 34, 'Manajemen perusahaan menyampaikan prosedur standar dan pelatihan yang diberikan', 3),
(771, 34, 'Manajemen perusahaan mendefinisikan instrumen sebagai catatan keseimbangan bisnis IT', 3),
(772, 34, 'Manajemen perusahaan mengidentifikasi peralatan untuk membantu pengawasan tata kelola TI', 3),
(773, 34, 'Manajemen perusahaan memahami secara penuh semua permasalahan tata kelola IT pada berbagai level', 4),
(774, 34, 'Manajemen perusahaan mendefinisikan tanggung jawab dan penanggung jawab proses secara jelas', 4),
(775, 34, 'Proses IT dan tata kelola IT perusahaan terhubung dan terintegrasi ke dalam bisnis serta straegi IT', 4),
(776, 34, 'Semua penanggung jawab proses pada manajemen perusahaan sadar akan risiko, pentingnya IT, dan kesempatan yang dapat dimanfaatkan', 4),
(777, 34, 'Secara keseluruhan, akuntabilitas performa proses yang utama jelas, dan manajemen perusahaan diberikan apresiasi berdasarkan pengukuran performa utama', 4),
(778, 34, 'Manajemen perusahaan mempunyai pemahaman yang maju dan berorientasi pada masa depan terhadap permasalahan tata kelola TI beserta solusinya', 5),
(779, 34, 'Manajemen perusahaan mendukung pelatihan dan komunikasi dengan konsep dan teknik yang terdepan', 5),
(780, 34, 'Semua proses manajemen perusahaan diperbaiki hingga pada tingkat praktik bisnis yang baik', 5),
(781, 34, 'Manajemen perusahaan mengimplementasikan aturan IT  sehingga organisasi, stakeholder, dan proses cepat beradaptasi serta mendukung kebutuhan tata kelola TI secara penuh', 5),
(782, 34, 'Semua permasalahan dan penyimpangan manajemen perusahaan dianalisa sampai ke akar  serta solusi yang efisien diberikan ', 5),
(783, 11, 'Perusahaan belum membutuhkan identifikasi dari kebutuhan fungsional dan operasional untuk implementasi pemanfaatan Teknologi Informasi dalam Sistem Pembelajaran Jarak Jauh', 0),
(784, 11, 'Perusahaan belum memelihara kesadaran akan pemanfaatan Teknologi Informasi sebagai solusi Pembelajaran Jarak Jauh', 0),
(785, 11, 'Perusahaan memiliki kesadaran dalam menentukan kebutuhan serta mengidentifikasi solusi teknologi', 1),
(786, 11, 'Adanya pertemuan diantara beberapa kelompok Manajemen Perusahaan membahas kebutuhan informal yang mana ada dokumentasi mengenai kebutuhan tersebut', 1),
(787, 11, 'Adanya riset terstruktur dari Perusahaan mengenai teknologi yang tersedia saat ini', 1),
(788, 11, 'Adanya pendekatan intuitif untuk mengidentifikasi ketersediaan solusi Teknologi Informasi untuk pembelajaran Jarak Jauh di Perusahaan', 2),
(789, 11, 'Solusi Pemanfaatan Teknologi Informasi pada Perusahaan diidentifikasi berdasarkan pengalaman dan pengetahuan internal tentang fungsi Teknologi Informasi', 2),
(790, 11, 'Adanya individu dalam Perusahaan yang keahliannya menjadi kunci keberhasilan proyek', 2),
(791, 11, 'Adanya variasi dalam kualitas dokumentasi dan pengambilan keputusan di Perusahaan', 2),
(792, 11, 'Digunakan pendekatan yang tidak terstruktur untuk mendefinisikan persyaratan dan mengidentifikasi solusi teknologi.', 2),
(793, 11, 'Adanya pendekatan yang jelas dan terstruktur dalam menentukan solusi TI pada Perusahaan', 3),
(794, 11, 'Adanya pendekatan untuk menentukan solusi TI membutuhkan pertimbangan alternatif yang dievaluasi terhadap faktor kebutuhan bisnis atau pengguna pada Perusahaan', 3),
(795, 11, 'Proses penentuan solusi TI pada Perusahaan diterapkan untuk beberapa proyek berdasarkan keputusan yang dibuat oleh masing-masing anggota staf yang terlibat', 3),
(796, 11, 'Pendekatan terstruktur digunakan untuk menentukan persyaratan dan mengidentifikasi solusi TI pada Perusahaan', 3),
(797, 11, 'Adanya metodologi yang mapan untuk mengidentifikasi dan menilai solusi TI yang digunakan untuk sebagian besar proyek', 4),
(798, 11, 'Adanya dokumentasi proyek yang berkualitas yang disetujui di setiap tingkatnya', 4),
(799, 11, 'Adanya kebutuhan di Perusahaan yang jelas dan sesuai dengan struktur yang sudah didefinisikan sebelumnya', 4),
(800, 11, 'Adanya alternatif solusi yang juga dipertimbangkan, termasuk analisis mengenai biaya dan manfaatnya', 4),
(801, 11, 'Adanya metodologi yang jelas,didefinisikan, dipahami secara umum dan dapat diukur', 4),
(802, 11, 'Adanya antarmuka yang didefinisikan dengan jelas antara manajemen TI dan bisnis pada identifikasi dan penilaian solusi TI di Perusahaan', 4),
(803, 11, 'Metodologi untuk identifikasi dan penilaian solusi TI di Perusahaan mengalami peningkatan berkelanjutan', 5);
INSERT INTO `list_pertanyaan` (`ID_PERTANYAAN`, `ID_IT_PROCESS`, `DESKRIP_PERTANYAAN`, `LEVEL`) VALUES
(804, 11, 'Akuisisi dan implementasi metodologi yang ada di Perusahaan memiliki fleksibilitas untuk proyek skala besar dan kecil', 5),
(805, 11, 'Metodologi ini didukung oleh internal dan database pengetahuan eksternal yang berisi materi referensi tentang solusi teknologi', 5),
(806, 11, 'Metodologi yang ada di Perusahaan menghasilkan dokumentasi dalam struktur yang telah ditentukan sebelumnya yang dapat membuat produksi dan pemeliharaan menjadi efisien', 5),
(807, 11, 'Adanya peluang baru yang sering kali diidentifikasi untuk memanfaatkan teknologi guna mendapatkan keunggulan kompetitif, memengaruhi rekayasa ulang proses bisnis, dan meningkatkan efisiensi secara keseluruhan pada Perusahaan', 5),
(808, 11, 'Manajemen Perusahaan dapat mendeteksi dan bertindak jika solusi TI disetujui tanpa mempertimbangkan teknologi alternatif atau kebutuhan fungsional bisnis', 5),
(809, 12, 'Ada pengetahuan dan keahlian yang diperlukan untuk mengembangkan rencana infrastruktur teknologi?', 0),
(810, 12, 'Ada pemahaman pentingnya perencanaan teknologi perubahanan untuk mengalokasikan sumber daya secara efektif', 0),
(811, 12, 'Apakah Perusahaan mempunyai kesadaran bahwa proses untuk memperoleh dan memelihara aplikasi diperlukan?', 0),
(812, 12, 'Apakah ada kesadaran bahwa proses untuk memperoleh dan mempertahankan aplikasi diperlukan?', 1),
(813, 12, 'Pendekatan untuk memperoleh dan memelihara perangkat lunak aplikasi bervariasi dari proyek ke proyek', 1),
(814, 12, 'Apakah beberapa solusi individu untuk kebutuhan bisnis tertentu kemungkinan diperoleh secara independen, sehingga menjadi efisien dengan pemeliharaan dan dukungan?', 1),
(815, 12, 'Ada proses yang berbeda, tetapi serupa, untuk memperoleh dan memelihara aplikasi berdasarkan keahlian dalam fungsi TI', 2),
(816, 12, 'Tingkat keberhasilan dengan aplikasi sangat tergantung pada keterampilan dan tingkat pengalaman di dalam IT', 2),
(817, 12, 'Perawatan biasanya bermasalah dan menderita ketika pengetahuan internal hilang dari organisasi', 2),
(818, 12, 'Adanya sedikit pertimbangan keamanan aplikasi dan ketersediaan dalam desain atau perolehan perangkat lunak aplikasi', 2),
(819, 12, 'Proses yang jelas, ditentukan dan umumnya dipahami ada untuk perolehan dan pemeliharaan perangkat lunak aplikasi', 3),
(820, 12, 'Proses selaras dengan IT dan strategi bisnis. Suatu upaya dilakukan untuk menerapkan proses yang terdokumentasi secara konsisten di seluruh berbeda aplikasi dan proyek', 3),
(821, 12, 'Metodologi umumnya harus fleksibel dan sulit diterapkan dalam semua kasus, sehingga langkah-langkahnya mungkin dilewati', 3),
(822, 12, 'Kegiatan perawatan direncanakan, dijadwalkan dan dikoordinasikan.', 3),
(823, 12, 'Apakah ada metodologi formal dan dipahami dengan baik yang mencakup proses desain dan spesifikasi, kriteria untuk akuisisi,proses untuk pengujian dan persyaratan dokumentasi?', 4),
(824, 12, 'Mekanisme persetujuan yang didokumentasikan dan disetujui ada untuk memastikan semuanya langkah-langkah diikuti dan pengecualian diizinkan.', 4),
(825, 12, 'Praktik dan prosedur berevolusi dan cocok untuk organisasi Perusahaan, digunakan oleh semua staf dan berlaku untuk sebagian besar persyaratan aplikasi.', 4),
(826, 12, 'Perolehan perangkat lunak aplikasi dan praktik pemeliharaan diselaraskan dengan proses yang ditentukan.', 5),
(827, 12, 'Apakah penerapan perangkat lunak akuisisi dan pemeliharaan sesuai dengan proses yang ditetapkan?', 5),
(828, 12, 'Akuisisi dan metodologi pemeliharaan juga canggih dan memungkinkan penyebaran cepat, memungkinkan responsif dan fleksibilitas yang tinggi menanggapi kebutuhan bisnis yang berubah.', 5),
(829, 12, 'Akuisisi perangkat lunak aplikasi dan metodologi implementasi mengalami perbaikan terus menerus dan didukung oleh database pengetahuan internal dan eksternal yang mengandung referensi bahan dan praktik yang baik', 5),
(830, 12, 'Metodologi menciptakan dokumentasi dalam struktur yang telah ditentukan yang membuat produksi dan pemeliharaan efisien', 5),
(831, 13, 'Apakah pengelolaan infrastruktur teknologi pada Perusahaan diakui sebagai topik yang cukup penting untuk ditangani?', 0),
(832, 13, 'Apakah apabila ada perubahan yang dilakukan pada infrastruktur Perusahaan untuk setiap aplikasi baru, dilakukan dengan rencana keseluruhan?', 1),
(833, 13, 'Meskipun ada kesadaran bahwa infrastruktur TI Perusahaan itu penting, apakah ada pendekatan keseluruhan yang konsisten?', 1),
(834, 13, 'Sudahkah aktivitas pemeliharaan TI Perusahaan bereaksi terhadap kebutuhan jangka pendek?', 1),
(835, 13, 'Apakah pada Perusahaan, lingkungan produksi adalah lingkungan pengujian?', 1),
(836, 13, 'Apakah ada konsistensi di antara pendekatan taktis saat memperoleh dan memelihara infrastruktur TI Perusahaan?', 2),
(837, 13, 'Apakah akuisisi dan pemeliharaan infrastruktur TI Perusahaan didasarkan pada strategi yang ditentukan dan mempertimbangkan kebutuhan aplikasi bisnis yang harus didukung?', 2),
(838, 13, 'Apakah ada pemahaman bahwa infrastruktur TI Perusahaan itu penting, didukung oleh beberapa praktik formal?', 2),
(839, 13, 'Apakah pemeliharaan TI Perusahaan dijadwalkan dan terkoordinasi?', 2),
(840, 13, 'Untuk beberapa lingkungan, apakah ada lingkungan pengujian terpisah?', 2),
(841, 13, 'Apakah ada proses yang jelas, terdefinisi, dan dipahami secara umum untuk memperoleh dan memelihara infrastruktur TI Perusahaan?', 3),
(842, 13, 'Apakah proses tersebut mendukung kebutuhan aplikasi bisnis yang penting dan sejalan dengan TI Perusahaan dan strategi bisnis Perusahaan, yang diterapkan secara konsisten?', 3),
(843, 13, 'Sudahkah pemeliharaan direncanakan, terjadwal dan terkoordinasi?', 3),
(844, 13, 'Apakah ada lingkungan terpisah untuk pengujian dan produksi?', 3),
(845, 13, 'Apakah proses akuisisi dan pemeliharaan infrastruktur teknologi Perusahaan telah berkembang ke titik di mana ia bekerja dengan baik untuk sebagian besar situasi, diikuti secara konsisten dan difokuskan pada dapat digunakan kembali?', 4),
(846, 13, 'Apakah Infrastruktur TI Perusahaan cukup mendukung aplikasi bisnis?', 4),
(847, 13, 'Apakah prosesnya terorganisir dengan baik dan proaktif?', 4),
(848, 13, 'Sudahkah biaya dan waktu tunggu untuk mencapai tingkat skalabilitas, fleksibilitas, dan integrasi yang diharapkan sebagian dioptimalkan?', 4),
(849, 13, 'Sudahkah proses akuisisi dan pemeliharaan infrastruktur teknologi Perusahaan bersifat proaktif dan selaras dengan aplikasi bisnis penting dan arsitektur teknologi?', 5),
(850, 13, 'Sudahkah praktik yang baik terkait solusi teknologi diikuti, dan organisasi Perusahaan mengetahui perkembangan platform dan alat manajemen terbaru?', 5),
(851, 13, 'Sudahkah mengurangi biaya pengeluaran Perusahaan dengan merasionalisasi dan menstandarisasi komponen infrastruktur dan dengan menggunakan otomatisasi?', 5),
(852, 13, 'Apakah tingkat kesadaran teknis yang tinggi dapat mengidentifikasi cara optimal untuk secara proaktif meningkatkan kinerja, termasuk pertimbangan opsi pengalihdayaan?', 5),
(853, 13, 'Apakah infrastruktur TI Perusahaan dipandang sebagai pendorong utama untuk memanfaatkan penggunaan TI Perusahaan?', 5),
(854, 14, 'Belum terdapat pendokumentasian pengopersian aplikasi pembelajaran Perusahaan (tidak adanya dokumentasi pengoperasian, user manual, dan materi pelatihan).', 0),
(855, 14, 'Bahan materi pengoperasian aplikasi hanya terdapat pada aplikasi pihak luar yang dibeli (aplikasi berbayar).', 0),
(856, 14, 'Terdapat kesadaran akan pembuatan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan yang dibutuhkan.', 1),
(857, 14, 'Pembuatan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan hanya bersifat sementara dan tidak berkala serta hanya diperuntukkan untuk bagian staff tertentu.', 1),
(858, 14, 'Dokumen-dokumen pengoperasian aplikasi pembelajaran Perusahaan tidak terlalu di-update dan berpedoman pada dokumen lama.', 1),
(859, 14, 'Pelatihan pada pengoperasian aplikasi pembelajaran Perusahaan hanya sesekali/jarang dilakukan kepada pengguna.', 1),
(860, 14, 'Hampir tidak ada SOP yang terintegrasi antara sistem yang dibangun dan unit bisnis.', 1),
(861, 14, 'Tidak adanya masukan dari unit bisnis untuk meningkatkan rancangan program pelatihan pengoperasian aplikasi pembelajaran Perusahaan.', 1),
(862, 14, 'Terdapat SOP dan dokumentasi pada pengoperasian aplikasi pembelajaran Perusahaan, akan tetapi tidak melalui pendekatan berdasarkan kerangka kerja yang dibangun secara terstruktur.', 2),
(863, 14, 'Tidak ada pengembangan SOP dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan pada pengguna.', 2),
(864, 14, 'Materi pelatihan pengoperasian aplikasi pembelajaran Perusahaan dibuat oleh tim tertentu tanpa pengawasan dari Koordinator Staff IT.', 2),
(865, 14, 'Penilaian pengguna terhadap SOP dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan hanya pada tingkat cukup.', 2),
(866, 14, 'Tersedianya program pelatihan pengoperasian aplikasi pembelajaran Perusahaan kepada pengguna, akan tetapi tidak ada rencana berkelanjutan yang dilakukan.', 2),
(867, 14, 'Adanya SOP dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan kepada pengguna diterima dan dipahami secara jelas.', 3),
(868, 14, 'SOP dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan tersimpan dengan baik di Drive dan bisa diakses oleh seluruh Staff Perusahaan.', 3),
(869, 14, 'SOP dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan dibuat berdasarkan respon pengguna.', 3),
(870, 14, 'SOP dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan bisa diakses secara offline ketika terjadi keadaan yang darurat.', 3),
(871, 14, 'Adanya pembaruan SOP dan materi pelatihan pengoperasian aplikasi pembelajaran Perusahaan ketika aplikasi pembelajaran Perusahaan terdapat perubahan.', 3),
(872, 14, 'Drive dan bisa diakses oleh seluruh Staff Perusahaan sudah direncanakan dan terjadwal.', 3),
(873, 14, 'Adanya suatu kerangka kerja untuk me-maintain SOP dan materi pelatihan pengoperasian aplikasi pembelajarana Perusahaan dengan dukungan IT.', 4),
(874, 14, 'Pendekatan diambil untuk me-maintain SOP dan materi pelatihan pengoperasian aplikasi pembelajaran Perusahaan sehingga mencakup semua sistem dan unit bisnis.', 4),
(875, 14, 'SOP dan materi pelatihan pengoperasian aplikasi pembelajaran Perusahaan saling terintegrasi serta terdapat antarmuka yang interaktif.', 4),
(876, 14, 'Terdapat pengawasan terhadap SOP dan materi pelatihan pengoperasian aplikasi pebelajarana Perusahaan yang dikembangkan.', 4),
(877, 14, 'Terdapat umpan balik dari pengguna dan unit bisnis pada dokumentasi dan program pelatihan pengoperasian aplikasi pembelajaran Perusahaan.', 4),
(878, 14, 'Dokumentasi bahan ajar dan pelatihan pengoperasian aplikasi pembelajaran Perusahaan pada tingkat kehandalan dan ketersediaan yang baik.', 4),
(879, 14, 'Terdapat pengembangan SOP dan dokumen bahan ajar pelatihan yang terintegrasi pada sistem aplikasi dan memungkinkan akses terhadap pengguna.', 4),
(880, 14, 'Pelatihan pengoperasian aplikasi pembelajaran Perusahaan kepada unit bisnis dan pengguna berpartisipasi secara aktif sesuai dengan kebutuhan bisnis.', 4),
(881, 14, 'Manajemen TI mengembangkan metrik perangkat lunak untuk mengukur pengembangan dan penyampaian bahan ajar dan program pelatihan pengguna.', 4),
(882, 14, 'Adanya peningkatan yang berkala terhadap user manual dan dokumentasi pengoperasian aplikasi pembelajaran Perusahaan seiring dengan metode baru yang digunakan.', 5),
(883, 14, 'SOP dan materi pelatihan pengoperasian aplikasi pembelajaran Perusahaan dilakukan secara bekelanjutan berdasarkan ilmu terkini sehingga melibatkan alur kerja, distribusi teknologi, dan kemudahan pengaksesan.', 5),
(884, 14, 'Pengembangan dari dokumentasi dan materi pelatihan pengoperasian aplikasi pembelajaran Perusahaan serta penyampaian program pelatihan terintegrasi penuh dengan proses bisnis sehingga mendukung kebutuhan Perusahaan yang berorientasi TI.', 5),
(885, 15, 'Apakah ada proses pengadaan sumber daya IT yang ditetapkan?', 0),
(886, 15, 'Apakah Perusahaan menyadari perlunya kebijakan dan prosedur pengadaan yang jelas untuk memastikan bahwa semua sumber daya IT tersedia secara tepat waktu dan hemat biaya?', 0),
(887, 15, 'Perusahaan menyadari bahwa mereka harus memiliki kebutuhan untuk mendokumentasikan kebijakan dan prosedur yang menghubungkan akuisisi IT dengan proses pengadaan organisasi bisnis secara keseluruhan.', 1),
(888, 15, 'Kontrak untuk perolehan sumber daya IT dikembangkan dan dikelola oleh manajer proyek dan individu lain yang melaksanakan penilaian profesional mereka daripada sebagai hasil dari prosedur dan kebijakan formal.', 1),
(889, 15, 'Kontrak untuk akuisisi dikelola pada akhir proyek daripada secara berkelanjutan.', 1),
(890, 15, 'Hanya ada hubungan ad hoc antara akuisisi perusahaan dan proses manajemen kontrak dan IT.', 1),
(891, 15, 'Ada kesadaran organisasi tentang perlunya memiliki kebijakan dan prosedur dasar untuk akuisisi IT.', 2),
(892, 15, 'Kebijakan-kebijakan dan prosedur sudah sebagian terintegrasi dengan proses pengadaan organisasi bisnis secara keseluruhan.', 2),
(893, 15, 'Proses pengadaan sumber daya IT sebagian besar digunakan untuk proyek besar dan terlihat. ', 2),
(894, 15, 'Apakah tanggung jawab dan akuntabilitas untuk pengadaan IT dan manajemen kontrak ditentukan oleh pengalaman masing-masing manajer kontrak?', 2),
(895, 15, 'Pentingnya manajemen pemasok dan manajemen hubungan diakui tapi ditangani berdasarkan inisiatif individu.', 2),
(896, 15, 'Proses kontrak sebagian besar digunakan oleh proyek-proyek besar atau yang sangat terlihat.', 2),
(897, 15, 'Apakah manajemen telah menerapkan kebijakan dan prosedur untuk akuisisi IT?', 3),
(898, 15, 'Kebijakan dan prosedur dipandu oleh keseluruhan proses pengadaan organisasi bisnis.', 3),
(899, 15, 'Apakah ada standar IT untuk perolehan sumber daya IT?', 3),
(900, 15, 'Pemasok sumber daya IT diintegrasikan ke dalam mekanisme manajemen proyek organisasi dari perspektif manajemen kontrak.', 3),
(901, 15, 'Apakah sebagian besar sistem pengadaan bisnis terintegrasi dengan akuisisi TI secara keseluruhan?', 3),
(902, 15, 'Manajemen TI mengkomunikasikan kebutuhan akuisisi yang sesuai serta manajemen kontrak pada seluruh fungsi IT.', 3),
(903, 15, 'Apakah sistem pengadaan bisnis terintegrasi dengan akuisisi TI secara keseluruhan?', 4),
(904, 15, 'Standar IT untuk akuisisi sumber daya IT digunakan untuk semua pengadaan.', 4),
(905, 15, 'Pengukuran pada kontrak dan manajemen pengadaan diambil secara relevan dengan kasus bisnis untuk akuisisi IT.', 4),
(906, 15, 'Apakah pelaporan aktivitas akuisisi TI yang mendukung tujuan bisnis telah tersedia?', 4),
(907, 15, 'Apakah manajemen mengetahui pengecualian terhadap kebijakan serta prosedur akuisisi IT?', 4),
(908, 15, 'Manajemen strategis hubungan sedang berkembang.', 4),
(909, 15, 'Apakah Perusahaan melakukan manajemen TI dengan menggunakan manajemen kontrak dan proses akuisisi untuk semua akuisisi dengan memonitor pengukuran kinerja?', 4),
(910, 15, 'Manajemen menjadikan lembaga dengan menyusun sumber daya dengan melakukan dengan cara menyeluruh untuk akuisisi TI.', 5),
(911, 15, 'Manajemen telah menetapkan kesesuaian terhadap kebijakan dan metode akuisisi TI yang harus dipatuhi.', 5),
(912, 15, 'Evaluasi pada kontrak dan manajemen penyusunan diambil yang berguna dengan kasus bisnis untuk akuisisi TI.', 5),
(913, 15, 'Koneksi yang sehat akan menjadikan waktu dengan kebanyakan penyalur dan mitra, dan koneksi yang baik dengan cara diukur dan dipantau', 5),
(914, 15, 'Koneksi yang dikelola atau direncanakan secara strategis?', 5),
(915, 15, 'Taraf kebijakan dan prosedur IT untuk akuisisi dilakukan dengan cara strategis dan melakukan pengukuran proses. ', 5),
(916, 15, 'Apakah manajemen IT menghubungkan kepentingan dengan cara strategis dari akuisisi yang sesuai dan manajemen kontrak yang ada di seluruh fungsi IT?', 5),
(917, 16, 'Manajemen proses terhadap perubahan tidak terdefinisi sama sekali serta segala perubahan dapat dilakukan tanpa kontrol.', 0),
(918, 16, 'Tidak ada kesadaran terhadap bagaimana sebuah perubahan dapat berdampak negatif bagi perusahaan terutama terhadap operasi bisnis dan teknologi informasi.', 0),
(919, 16, 'Tidak ada kesadaran terhadap bagaimana sebuah manajemen perubahan yang baik dapat berdampak positif juga untuk perusahaan.', 0),
(920, 16, 'Perusahaan mengetahui bahwa setiap perubahan yang ada harus dikelola dan diawasi', 1),
(921, 16, 'Terdapat keberagaman bidang urusan pada Perusahaan yang memungkinkan terjadinya perubahan yang tidak terkelola atau tidak sah. ', 1),
(922, 16, 'Dokumentasi dari perubahan yang pernah terjadi di Perusahaan relatif sedikit atau tidak ada dan konfigurasi cenderung tidak lengkap dan tidak dapat dipercaya. ', 1),
(923, 16, 'Kesalahan sering terjadi karena buruknya manajemen perubahan yang ada.', 1),
(924, 16, 'Terdapat proses manajemen perubahan secara informal namun belum tersrtruktur, mendasar dan cenderung terjadi kesalahan.', 2),
(925, 16, 'Konfigurasi dari akurasi dokumentasi masih inkonsisten dan perencanaan serta perhitungan dampak terhadap perubahan masih terbatas.', 2),
(926, 16, 'Terdapat proses manajemen perubahan formal yang baik yang mencakup kategorisasi, prioritasisasi, prosedur-prosedur darurat, autorisasi perubahan dan manajemen pelepasan yang sesuai dengan perkembangan Perusahaan.', 3),
(927, 16, 'Kesalahan dan perubahan-perubahan tak terkelola masih terjadi.', 3),
(928, 16, 'Analisis dampak perubahan IT pada operasi bisnis mulai dibentuk untuk mendukung perencanaan teknologi dan aplikasi baru.', 3),
(929, 16, 'Proses manajemen perubahan dikembangkan dengan baik dan secara konsisten diikuti untuk segala perubahan yang ada. ', 4),
(930, 16, 'Proses berjalan dengan efisien dan efektif tetapi tetap bersandar pada prosedur manual dan kontrol untuk memastikan bahwa mutu tercapai.', 4),
(931, 16, 'Proses persetujuan untuk perubahan sudah sesuai aturan.', 4),
(932, 16, 'Dokumentasi manajemen perubahan dibuat dengan tepat dan umumnya akurat.', 4),
(933, 16, 'Perencanaan menejemen perubahan IT  menjadi terintegrasi dengan perubahan dalam proses bisnis untuk menjamin training, perubahan organisasi dan persoalan kelancaran bisnis terkelola. ', 4),
(934, 16, 'Terdapat peningkatan koordinasi antara manajemen perubahan IT dan perancangan proses bisnis baru.', 4),
(935, 16, 'Terdapat proses yang konsisten untuk mengawasi mutu dan kinerja proses manajemen perubahan Perusahaan.', 4),
(936, 16, 'Proses manajemen perubahan dilakukan secara teratur, ditinjau dan diperbaharui untuk tertap sejalan dengan visi dan misi Perusahaan.', 5),
(937, 16, 'Informasi konfigurasi sudah berbasis komputer dan menyediakan version control.', 5),
(938, 16, 'Manajemen perubahan IT terintegrasi dengan manajemen perubahan bisnis untuk memastikan bahwa IT adalah aspek penting dalam peningkatan produktivitas dan penciptaan kesempatan bisnis baru bagi Perusahaan.', 5),
(939, 16, 'Terdapat Dokumentasi konfigurasi yang akurat.', 5),
(940, 17, 'Apakah manajemen senior maupun anggota staf IT menyadari kebutuhan dalam memverifikasi solusi yang diterapkan sudah sesuai dengan tujuan yang diinginkan?', 0),
(941, 17, 'Apakah ada kesadaran terhadap kebutuhan untuk memverifikasi dan mengkonfirmasi solusi yang diterapkan sudah memenuhi tujuan yang diinginkan?', 1),
(942, 17, 'Apakah setiap tim proyek sudah melakukan inisiatif untuk melakukan pengujian dengan pendekatan yang tepat?', 1),
(943, 17, 'Apakah akreditasi dan persetujuan formal jarang atau tidak ada?', 1),
(944, 17, 'Apakah pendekatan pengujian dan akreditasi tidak didasarkan pada metodologi apa pun?', 2),
(945, 17, 'Apakah tim pengembangan individu biasanya memutuskan pendekatan pengujian, dan biasanya pengujian integrasi tidak ada?', 2),
(946, 17, 'Apakah terdapat proses persetujuan informal?', 2),
(947, 17, 'Apakah tersedia metodologi formal yang berkaitan dengan pemasangan, migrasi, konversi, dan penerimaan?', 3),
(948, 17, 'Apakah proses instalasi dan akreditasi IT diintegrasikan ke dalam siklus hidup sistem dan diotomatisasi sampai batas tertentu?', 3),
(949, 17, 'Apakah pelatihan, pengujian dan transisi ke status produksi dan akreditasi mungkin berbeda dari proses yang ditentukan karena berdasarkan keputusan individu?', 3),
(950, 17, 'Apakah kualitas sistem yang memasuki produksi tidak konsisten, dengan sistem baru sering kali menimbulkan masalah pasca implementasi yang signifikan?', 3),
(951, 17, 'Apakah prosedur sudah diformalkan dan dikembangkan agar terorganisir dengan baik dan praktis dengan lingkungan pengujian dan prosedur akreditasi yang ditentukan?', 4),
(952, 17, 'Dalam praktiknya, apakah semua perubahan besar pada sistem mengikuti pendekatan formal tersebut?', 4),
(953, 17, 'Apakah evaluasi pemenuhan kebutuhan pengguna distandarisasi dan diukur, menghasilkan metrik yang dapat ditinjau dan dianalisis secara efektif oleh manajemen?', 4),
(954, 17, 'Apakah kualitas sistem yang memasuki produksi memuaskan manajemen bahkan dengan tingkat masalah pasca implementasi yang wajar?', 4),
(955, 17, 'Apakah otomatisasi proses bersifat ad hoc dan bergantung pada proyek?', 4),
(956, 17, 'Apakah manajemen sudah merasa puas dengan tingkat efisiensi saat ini meskipun masih terdapat kekurangan evaluasi pasca-implementasi?', 4),
(957, 17, 'Apakah sistem pengujian mencerminkan lingkungan hidup yang memadai?', 4),
(958, 17, 'Apakah terdapat pengujian stres untuk sistem baru dan pengujian regresi untuk sistem yang ada diterapkan untuk proyek-proyek besar?', 4),
(959, 17, 'Apakah proses pemasangan dan akreditasi telah disempurnakan ke tingkat praktik yang baik, berdasarkan hasil penyempurnaan dan penyempurnaan yang berkelanjutan?', 5),
(960, 17, 'Apakah proses instalasi dan akreditasi TI sepenuhnya diintegrasikan ke dalam siklus hidup sistem dan diotomatiskan jika sesuai, memfasilitasi pelatihan, pengujian, dan transisi yang paling efisien ke status produksi sistem baru?', 5),
(961, 17, 'Apakah lingkungan pengujian yang dikembangkan dengan baik, register masalah, dan proses penyelesaian kesalahan dapat memastikan transisi yang efisien dan efektif ke lingkungan produksi?', 5),
(962, 17, 'Apakah akreditasi biasanya dilakukan tanpa pengerjaan ulang, dan masalah pasca implementasi biasanya terbatas pada koreksi kecil?', 5),
(963, 17, 'Apakah tinjauan pasca-implementasi distandarisasi, dengan pelajaran yang dipetik disalurkan kembali ke dalam proses untuk memastikan peningkatan kualitas yang berkelanjutan?', 5),
(964, 17, 'Apakah pengujian stres untuk sistem baru dan pengujian regresi untuk sistem yang dimodifikasi diterapkan secara konsisten?', 5),
(965, 18, 'Manajemen menyadari pentingnya proses untuk menentukan level dari layanan (Service Level) Perusahaan', 0),
(966, 18, 'Adanya pihak yang bertanggung jawab untuk memonitor level dari layanan Perusahaan.', 0),
(967, 18, 'Proses dalam mengatur level dari layanan Perusahaan bersifat informal dan reaktif', 1),
(968, 18, 'Adanya pihak yang bertanggung jawab untuk menentukan dan menegelola layanan Perusahaan.', 1),
(969, 18, 'Pengukuran performa layanan Perusahaan hanya bersifat kualitatif dengan tujuan yang tidak tepat/jelas.', 1),
(970, 18, 'Pelaporan mengenai level dari layanan Perusahaan bersifat tidak formal, jarang dilakukan dan tidak konsisten  .', 1),
(971, 18, 'Level layanan dari Perusahaan bersifat informal dan tidak di-review.', 2),
(972, 18, 'Pelaporan level layanan Perusahaan tidak lengkap dan ada kemungkinan tidak relevan atau membuat salah paham pengguna.', 2),
(973, 18, 'Pelaporan level layanan Perusahaan bergantung kepada kemampuan dan inisiatif dari masing-masing manager.', 2),
(974, 18, 'Wewenang dari koordinator level layanan Perusahaan terbatas.', 2),
(975, 18, 'Penyusunan Service Level Agreement (SLA) bersifat sukarela dan tidak ada pemaksaan.', 2),
(976, 18, 'Tanggung jawab dari koordinator level layanan jelas, dan wewenang sesuai kebijakan dari koordinator sendiri.', 3),
(977, 18, 'Proses pengembangan Service Level Agreement (SLA) sudah ada dengan adanya checkpoint  untuk menilai kembali level layanan dan kepuasan pengguna.', 3),
(978, 18, 'Adanya dokumentasi dari layanan dan level layanan, dan disetujui dengan proses yang standard.', 3),
(979, 18, 'Prosedur untuk mengatasi kekurangan dari level layanan bersifat informal.', 3),
(980, 18, 'Adanya keterkaitan yang jelas antara ekspektasi pencapaian level layanan Perusahaan dan biaya yang tersedia.', 3),
(981, 18, 'Level layanan Perusahaan telah disetujui namun belum memenuhi kebutuhan bisnis Perusahaan.', 3),
(982, 18, 'Level layanan Perusahaan ditentukan pada fase penentuan kebutuhan sistem dan tergabung pada desain aplikasi dan lingkungan operasional.', 4),
(983, 18, 'Kepuasan pelanggan diukur dan dinilai secara rutin.', 4),
(984, 18, 'Pengukuran performa lebih mencerminkan kebutuhan pengguna daripada tujuan IT.', 4),
(985, 18, 'Ukuran dari penilaian level layanan sudah terstandarisasi dan merefleksikan norma industri.', 4),
(986, 18, 'Kriteria untuk penentuan level layanan berdasarkan pada ketersediaan, keandalan, performa, kapasitas pertumbuhan, dukungan pengguna, perencanaan berkelanjutan dan pertimbangan keamanan.', 4),
(987, 18, 'Root Cause Analysis (RCA) rutin dilakukan ketika level layanan tidak memenuhi.', 4),
(988, 18, 'Proses pelaporan untuk memonitor level layanan lebih terotomasi.', 4),
(989, 18, 'Resiko operasional dan keuangan berhubungan dengan level layanan yang disetujui tidak memuaskan.', 4),
(990, 18, 'Sistem formal untuk pengukuran level layanan bersifat legal dan selalu di-maintain.', 4),
(991, 18, 'Level layanan dievaluasi berkelanjutan untuk memastikan tetap selaras dengan tujuan IT dan bisnis, sembari mengambil keuntungan dari teknologi, termasuk ratio cost-benefit.', 5),
(992, 18, 'Semua proses manajemen level layanan dapat dilakukan pengembangan berkelanjutan.', 5),
(993, 18, 'Kepuasan pengguna dimonitor dan dikelola secara berkelanjutan.', 5),
(994, 18, 'Ekspektasi dari level layanan merefleksikan strategi tujuan dari bisnis dan dievaluasi sesuai norma industri.', 5),
(995, 18, 'Management IT memiliki sumber daya dan tanggung jawab untuk memenuhi target level layanan, dan kompensasi untuk memenuhi target ini bersifat terstruktur.', 5),
(996, 18, 'Manajemen senior memonitor matriks performa sebagai bagian dari proses pengembangan berkelanjutan.', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `memilih_2`
--

CREATE TABLE `memilih_2` (
  `ID_USER` int(11) NOT NULL,
  `ID_BUSINESS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `memiliki`
--

CREATE TABLE `memiliki` (
  `ID_BUSINESS` int(11) NOT NULL,
  `ID_KRITERIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `memiliki`
--

INSERT INTO `memiliki` (`ID_BUSINESS`, `ID_KRITERIA`) VALUES
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 7),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(7, 2),
(8, 2),
(9, 1),
(9, 4),
(9, 7),
(10, 1),
(10, 2),
(11, 2),
(12, 3),
(12, 6),
(13, 3),
(13, 6),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mempunyai`
--

CREATE TABLE `mempunyai` (
  `ID_BUSINESS` int(11) NOT NULL,
  `ID_IT_GOALS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mempunyai`
--

INSERT INTO `mempunyai` (`ID_BUSINESS`, `ID_IT_GOALS`) VALUES
(1, 24),
(2, 2),
(2, 14),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(3, 2),
(3, 18),
(4, 3),
(4, 23),
(5, 5),
(5, 24),
(6, 10),
(6, 16),
(6, 22),
(6, 23),
(7, 1),
(7, 5),
(7, 25),
(8, 7),
(8, 8),
(8, 10),
(8, 24),
(9, 2),
(9, 4),
(9, 12),
(9, 20),
(9, 26),
(10, 6),
(10, 7),
(10, 11),
(11, 7),
(11, 8),
(11, 13),
(11, 15),
(11, 24),
(12, 2),
(12, 19),
(12, 20),
(12, 21),
(12, 22),
(12, 26),
(12, 27),
(13, 2),
(13, 13),
(14, 1),
(14, 5),
(14, 6),
(14, 11),
(14, 28),
(15, 7),
(15, 8),
(15, 11),
(15, 13),
(16, 5),
(16, 25),
(16, 28),
(17, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mempunyai_3`
--

CREATE TABLE `mempunyai_3` (
  `ID_IT_GOALS` int(11) NOT NULL,
  `ID_IT_PROCESS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mempunyai_3`
--

INSERT INTO `mempunyai_3` (`ID_IT_GOALS`, `ID_IT_PROCESS`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 10),
(1, 11),
(1, 16),
(1, 17),
(1, 18),
(1, 20),
(1, 31),
(2, 1),
(2, 4),
(2, 10),
(2, 31),
(2, 34),
(3, 8),
(3, 14),
(3, 18),
(3, 19),
(3, 24),
(3, 25),
(3, 27),
(3, 30),
(4, 2),
(4, 28),
(5, 2),
(5, 4),
(5, 7),
(5, 13),
(6, 11),
(6, 12),
(6, 16),
(7, 3),
(7, 12),
(7, 15),
(8, 13),
(8, 15),
(9, 7),
(9, 15),
(10, 19),
(11, 2),
(11, 14),
(11, 17),
(12, 5),
(12, 6),
(12, 18),
(12, 19),
(12, 23),
(12, 31),
(12, 34),
(13, 6),
(13, 14),
(13, 17),
(13, 24),
(13, 25),
(14, 9),
(14, 22),
(14, 26),
(14, 29),
(14, 32),
(15, 3),
(15, 13),
(15, 20),
(15, 24),
(15, 26),
(16, 8),
(16, 14),
(16, 16),
(16, 17),
(16, 27),
(17, 9),
(17, 27),
(17, 32),
(18, 9),
(19, 6),
(19, 22),
(19, 28),
(19, 29),
(20, 6),
(20, 17),
(20, 22),
(21, 6),
(21, 17),
(21, 21),
(21, 22),
(21, 29),
(21, 30),
(21, 32),
(22, 6),
(22, 16),
(22, 20),
(22, 21),
(22, 25),
(22, 29),
(22, 30),
(23, 5),
(23, 23),
(24, 8),
(24, 10),
(25, 16),
(25, 22),
(26, 28),
(26, 32),
(26, 33),
(26, 34),
(27, 5),
(27, 23),
(27, 31),
(27, 34),
(28, 5),
(28, 23),
(28, 31),
(28, 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perspective_goal`
--

CREATE TABLE `perspective_goal` (
  `ID_PERSPECTIVE` int(11) NOT NULL,
  `PERSPECTIVE` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perspective_goal`
--

INSERT INTO `perspective_goal` (`ID_PERSPECTIVE`, `PERSPECTIVE`) VALUES
(1, 'Financial Perspective'),
(2, 'Customer Perspective'),
(3, 'Internal Perspective'),
(4, 'Learning and Growth Perspective');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `ID_USER` int(11) NOT NULL,
  `NAMA_USER` varchar(255) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `NO_HANDPHONE` varchar(12) NOT NULL,
  `ALAMAT` varchar(255) NOT NULL,
  `ROLE` enum('admin','user') DEFAULT NULL,
  `STATUS` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID_USER`, `NAMA_USER`, `USERNAME`, `EMAIL`, `PASSWORD`, `NO_HANDPHONE`, `ALAMAT`, `ROLE`, `STATUS`) VALUES
(1, 'Rida Adila', 'ridaadila', 'ridaadila10@gmail.com', 'Panda123', '082140063816', 'Surabaya 78', 'user', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `business_goal`
--
ALTER TABLE `business_goal`
  ADD PRIMARY KEY (`ID_BUSINESS`),
  ADD KEY `FK_MEMPUNYAI_6` (`ID_PERSPECTIVE`);

--
-- Indeks untuk tabel `informasi_kriteria`
--
ALTER TABLE `informasi_kriteria`
  ADD PRIMARY KEY (`ID_KRITERIA`);

--
-- Indeks untuk tabel `it_goals`
--
ALTER TABLE `it_goals`
  ADD PRIMARY KEY (`ID_IT_GOALS`);

--
-- Indeks untuk tabel `it_process`
--
ALTER TABLE `it_process`
  ADD PRIMARY KEY (`ID_IT_PROCESS`),
  ADD KEY `ID_JENIS_IT` (`ID_JENIS_IT`);

--
-- Indeks untuk tabel `jawaban_it_proses_kuesioner`
--
ALTER TABLE `jawaban_it_proses_kuesioner`
  ADD PRIMARY KEY (`ID_JAWABAN`),
  ADD KEY `FK_MENGISI` (`ID_USER`),
  ADD KEY `FK_RELATIONSHIP_9` (`ID_IT_PROCESS`);

--
-- Indeks untuk tabel `jenis_it_process`
--
ALTER TABLE `jenis_it_process`
  ADD PRIMARY KEY (`ID_JENIS_IT`);

--
-- Indeks untuk tabel `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  ADD PRIMARY KEY (`ID_PERTANYAAN`),
  ADD KEY `FK_MEMILIKI_9` (`ID_IT_PROCESS`);

--
-- Indeks untuk tabel `memilih_2`
--
ALTER TABLE `memilih_2`
  ADD PRIMARY KEY (`ID_USER`,`ID_BUSINESS`),
  ADD KEY `FK_MEMILIH_3` (`ID_BUSINESS`);

--
-- Indeks untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  ADD PRIMARY KEY (`ID_BUSINESS`,`ID_KRITERIA`),
  ADD KEY `FK_MEMILIKI2` (`ID_KRITERIA`);

--
-- Indeks untuk tabel `mempunyai`
--
ALTER TABLE `mempunyai`
  ADD PRIMARY KEY (`ID_BUSINESS`,`ID_IT_GOALS`),
  ADD KEY `FK_MEMPUNYAI2` (`ID_IT_GOALS`);

--
-- Indeks untuk tabel `mempunyai_3`
--
ALTER TABLE `mempunyai_3`
  ADD PRIMARY KEY (`ID_IT_GOALS`,`ID_IT_PROCESS`),
  ADD KEY `FK_MEMPUNYAI_4` (`ID_IT_PROCESS`);

--
-- Indeks untuk tabel `perspective_goal`
--
ALTER TABLE `perspective_goal`
  ADD PRIMARY KEY (`ID_PERSPECTIVE`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `business_goal`
--
ALTER TABLE `business_goal`
  MODIFY `ID_BUSINESS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `informasi_kriteria`
--
ALTER TABLE `informasi_kriteria`
  MODIFY `ID_KRITERIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `it_goals`
--
ALTER TABLE `it_goals`
  MODIFY `ID_IT_GOALS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `it_process`
--
ALTER TABLE `it_process`
  MODIFY `ID_IT_PROCESS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `jawaban_it_proses_kuesioner`
--
ALTER TABLE `jawaban_it_proses_kuesioner`
  MODIFY `ID_JAWABAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `jenis_it_process`
--
ALTER TABLE `jenis_it_process`
  MODIFY `ID_JENIS_IT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  MODIFY `ID_PERTANYAAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=997;

--
-- AUTO_INCREMENT untuk tabel `perspective_goal`
--
ALTER TABLE `perspective_goal`
  MODIFY `ID_PERSPECTIVE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `business_goal`
--
ALTER TABLE `business_goal`
  ADD CONSTRAINT `FK_MEMPUNYAI_6` FOREIGN KEY (`ID_PERSPECTIVE`) REFERENCES `perspective_goal` (`ID_PERSPECTIVE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `it_process`
--
ALTER TABLE `it_process`
  ADD CONSTRAINT `FK_MEMPUNYAI_5` FOREIGN KEY (`ID_JENIS_IT`) REFERENCES `jenis_it_process` (`ID_JENIS_IT`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `it_process_ibfk_1` FOREIGN KEY (`ID_JENIS_IT`) REFERENCES `jenis_it_process` (`ID_JENIS_IT`);

--
-- Ketidakleluasaan untuk tabel `jawaban_it_proses_kuesioner`
--
ALTER TABLE `jawaban_it_proses_kuesioner`
  ADD CONSTRAINT `FK_MENGISI` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_IT_PROCESS`) REFERENCES `it_process` (`ID_IT_PROCESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  ADD CONSTRAINT `FK_MEMILIKI_9` FOREIGN KEY (`ID_IT_PROCESS`) REFERENCES `it_process` (`ID_IT_PROCESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `memilih_2`
--
ALTER TABLE `memilih_2`
  ADD CONSTRAINT `FK_MEMILIH_2` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMILIH_3` FOREIGN KEY (`ID_BUSINESS`) REFERENCES `business_goal` (`ID_BUSINESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_BUSINESS`) REFERENCES `business_goal` (`ID_BUSINESS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`ID_KRITERIA`) REFERENCES `informasi_kriteria` (`ID_KRITERIA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mempunyai`
--
ALTER TABLE `mempunyai`
  ADD CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`ID_BUSINESS`) REFERENCES `business_goal` (`ID_BUSINESS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMPUNYAI2` FOREIGN KEY (`ID_IT_GOALS`) REFERENCES `it_goals` (`ID_IT_GOALS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mempunyai_3`
--
ALTER TABLE `mempunyai_3`
  ADD CONSTRAINT `FK_MEMPUNYAI_3` FOREIGN KEY (`ID_IT_GOALS`) REFERENCES `it_goals` (`ID_IT_GOALS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMPUNYAI_4` FOREIGN KEY (`ID_IT_PROCESS`) REFERENCES `it_process` (`ID_IT_PROCESS`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
