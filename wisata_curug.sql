-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2022 at 05:14 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17523766_wisata_curug`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `isi_artikel` text NOT NULL,
  `referensi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `tanggal`, `gambar`, `isi_artikel`, `referensi`) VALUES
(1, 'Kegiatan Berlibur Aman di Masa Pandemi', '2021-07-05', 'berita1.jpg', 'Sejak pemerintah menerapkan peraturan adaptasi kebiasaan baru, sebagian tempat wisata sudah boleh dikunjungi seperi tempat wisata alam. Namun sampai saat ini, jumlah kasus COVID-19 di Indonesia masih terus meningkat. vaksin virus corona pun masih membutuhkan waktu untuk diuji kelayakan sebelum diedarkan.<br>\r\n<br>Di tengah kondisi seperti ini, kita tidak dipaksa untuk berdiam di rumah tanpa melakukan aktivitas apa pun. Jika ingin berlibur sebaiknya pengunjung mempersiapkan diri untuk menjalani protokol kesehatan yang ada sebaik mungkin.karena ini untuk melindungi diri kita dan pengunjung lain.<br>\r\n<br>Berikut adalah tips untuk melindungi diri agar tetap bisa menikmati liburan di masa pandemi:<br>\r\n<br><b>- Pastikan tubuh dalam keadaan sehat </b><br>\r\n<br>Sebelum memutuskan untuk berlibur, pastikan diri sendiri dalam keadaan sehat. Saat sakit atau tidak dalam kondisi prima, daya tahan tubuh cenderung menurun. Hal ini bisa memudahkan berbagai penyebab penyakit, termasuk virus Corona.<br>\r\n<br><b>- Memilih tempat yang tidak ramai</b><br>\r\n<br>Virus Corona lebih mudah menular di tempat yang tertutup dan padat orang. Oleh karena itu, pilihlah tempat berlibur yang luas, terbuka, dan tidak terlalu ramai. supaya kita bisa menerapkan physical distancing dengan mudah.<br>\r\n<br>Bila ingin ke luar kota, sangat penting pula untuk memastikan tinggi atau rendahnya kasus penyebaran virus Corona di tempat yang akan akan dikunjungi. Info mengenai ini bisa didapatkan dengan mudah dari internet.<br>\r\n<br><b>- Membawa peralatan pribadi</b><br>\r\n<br>Jangan lupa untuk membawa peralatan pribadi, seperti handuk, sikat gigi, tempat minum, dan alat makan. Hal ini adalah untuk mencegah kemungkinan penularan virus Corona dari barang-barang. <br>\r\n<br><b>- Selalu sediakan masker dan hand sanitizer</b><br>\r\n<br>Di mana pun kita berada, pastikan untuk tetap mengenakan masker, bawalah lebih dari 1 masker sebagai cadangan. Selain itu, penting juga untuk selalu membawa hand sanitizer, karena tidak semua tempat menyediakan wadah untuk mencuci tangan.<br>\r\n', 'https://www.alodokter.com/tips-aman-berlibur-saat-pandemi'),
(2, 'Peralatan yang Wajib dibawa Saat Trip ke Curug', '2021-07-08', 'berita2.jpg', 'Di masa pandemi COVID-19, butuh banyak pertimbangan traveling bersama keluarga dan teman. Itulah sebabnya mengapa sekarang ini banyak paket wisata menarik yang bisa ditempuh dalam waktu singkat. Destinasi liburan ini diantaranya adalah trekking ke curug atau air terjun yang ada di Bogor. Biarpun dekat dan dilakukan dengan protokol kesehatan COVID-19, kawanjo harus hati-hati.<br>\r\n<br>Trip ke air terjun tidak mudah dan termasuk kategori wisata ekstrim karena mampu meningkatkan adrenalin dalam perjalanan menempuh curug. Jalur yang curam dan licin, ditambah lagi dengan beberapa bawaan benda yang ada, membuat perjalanan ke curug semakin menantang. Di bawah ini ada rekomendasi benda yang dibawa jika ingin trip ke air terjun. <br>\r\n<br><b>1. Celana Renang</b><br>\r\n<br> Destinasi liburan ke curug di Bogor sudah pasti kawanjo akan melewati jalur yang sejuk dan mungkin sedikit lembab. Tapi, jika sudah sampai di air terjun, sayang rasanya gak menikmati dingin dan sejuknya air. Kawanjo biar bisa ikutan serunya berenang di air terjun, sebaiknya bawa celana renang. Dengan begitu, bermain air terjun dan berenang jadi lebih seru.<br><br>\r\n<br><b>2. Baju Ganti</b><br>\r\n<br>Trip ke air terjun disarankan menggunakan pakaian berbahan ringan. Jangan coba menggunakan pakaian yang memerangkap air seperti halnya jeans yang akan terasa berat jika sudah terkena air. Kalau memang air terjun atau curug yang dituju berada di dataran tinggi, jangan lupa untuk menyiapkan jaket. Setelah itu siapkan baju ganti, jadi usai berenang bisa langsung ganti baju baru yang lebih fresh dan kering. <br><br>\r\n<br><b>3. Sandal Gunung</b><br>\r\n<br>Perjalanan menuju destinasi curug biasanya sangat licin dan lembab karena ditumbuhi lumut. Ditambah lagi, sebelum mencapai air terjun akan ada bebatuan yang jadi medan perjalanan. Alas kaki yang tepat sangatlah diperlukan, seperti menggunakan sandal gunung yang dipercaya anti selip hingga bisa meminimalisir resiko terpeleset saat perjalanan menuju air terjun. <br><br>\r\n<br><b>4. Ikut Open Trip dan Paket Wisata</b><br>\r\n<br>Setiap destinasi curug di Bogor dan lainnya pasti punya aturan main yang berbeda-beda. Untuk mencegah hal yang tidak diinginkan terjadi, pastikan saat trip ke curug  tidak seorang diri. Disarankan pergi bersama teman, atau mengikuti paket wisata seperti open trip dan lainnya. Ini dilakukan mencegah hal yang tidak diinginkan terjadi, karena biasanya jika mengikuti paket wisata itu sudah disediakan satu orang yang akan memandu perjalanan. <br><br>\r\n<br><b>5. Kamera Tahan Air. </b> <br>\r\n<br>Tahun 2021 tidak lengkap rasanya jika pergi traveling tanpa mengabadikan momennya untuk keperluan konten Instagram. Jadi kamera tahan air masuk ke dalam rekomendasi benda yang dibawa jika ingin pergi liburan ke air terjun. Banyaknya volume air dan juga derasnya air terjun membuat kita membutuhkan kamera yang sangat tahan air. <br><br>\r\n<br><b>6. Air Mineral</b><br>\r\n<br>Berbagai fasilitas sampai tempat jajan memang sekarang mudah ditemukan jika berencana untuk liburan ke curug di Bogor. Tetapi, di masa pandemi COVID-19 disarankan sebaiknya membawa minuman sendiri. Jadi tidak ada salahnya untuk menyiapkan air mineral sendiri. Selain mencegah penularan COVID-19, ini juga membantu jika di tengah perjalanan menuju curug mendadak haus sekaligus mengganti cairan tubuh. <br><br>\r\n<br><b>7. Dry Bag</b><br>\r\n<br>Ini juga masuk rekomendasi benda yang dibawa jika ingin liburan ke curug. Terutama untuk kawanjo yang tidak bisa lepas dari gadget. Drybag ini bermanfaat untuk menyimpan barang elektronik dan benda lain yang rentan rusak jika terkena air. Jika tidak punya benda ini, usahakan bawa tas dari bahan parasut atau kantong plastik. Tapi, jangan buang kantong plastik di perjalanan menuju air terjun. <br><br>\r\n<br><b>8. Snack dan Buah</b><br>\r\n<br>Trekking melewati jalur yang licin dan penuh bebatuan, ditambah aktivitas berenang saat tiba di air terjun, sudah pasti membuat perut terasa lapar. Air terjun yang dingin dan lelahnya perjalanan akan hilang jika menyiapkan beberapa snack sekaligus buah seperti pisang yang berfungsi sebagai karbohidrat. <br>', 'https://pigijo.com/blog/2021/03/24/wajib-bawa-8-benda-ini-jika-mau-trip-ke-curug/');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `curug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nama` varchar(20) CHARACTER SET utf8 NOT NULL,
  `komentar` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `curug`, `nama`, `komentar`) VALUES
(62, 'Curug Cikuluwung', 'ica ica', ' airnya sangat bersih sekali'),
(63, 'Curug Putri Pelangi', 'eerlii', ' perjalanan yang jauh tapi menyenangkan'),
(83, 'Curug Leuwi Lieuk', 'rookie', 'tempatnya baguss...'),
(84, 'Curug Barong', 'ian', ' woww');

-- --------------------------------------------------------

--
-- Table structure for table `curug`
--

CREATE TABLE `curug` (
  `id` int(20) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `ket` text NOT NULL,
  `jam` varchar(20) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curug`
--

INSERT INTO `curug` (`id`, `judul`, `gambar`, `ket`, `jam`, `harga`, `lokasi`) VALUES
(1, 'Curug Cikuluwung', 'curug-1.jpg', 'Yang paling menarik dari air terjun ini adalah batuan di kanan kiri sungai yang seolah menutupi area air terjun. Sehingga terkesan lebih eksklusif dan tentunya sangat estetik dijadikan objek untuk berfoto. Tak heran, sebelum berbasah ria, pengunjung menghabiskan waktu terlebih dahulu untuk berfoto.<br>\r\n<br>Masuk ke kawasan air terjun, pegunjung akan melihat keindahan alam yang luar biasa. Dari kejauhan, tampak air terjun setinggi kurang lebih 10 meter, mengalir deras dan tampak bak tirai. Di bawahnya, terdapat kolam berair jernih, bahkan cenderung berwarna biru. Kolam ini mengalir di cekungan yang membentuk sungai, mengalir hingga jauh.<br>\r\n<br>Akses menuju ke lokasi utamanya pun terbilang cukup sulit, pengunjung harus melewati terjalnya jalan yang curam. Curug Cikuluwung berlokasi di Desa Cibitung Wetan, Kecamatan Pamijahan, Kabupaten Bogor Barat, Provinsi Jawa Barat.<br> ', '08.00 - 16.00 WIB', 'Rp. 30.000', 'Desa Cibitung Wetan, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat'),
(2, 'Curug Leuwi Hejo', 'curug2.jpg', 'Sesuai dengan namanya Curug Hejo, Kata \'hejo\' berasal dari bahasa Sunda yang berarti \'hijau\'. Sesuai namanya, air di telaga sekitar curug ini memantulkan warna hijau yang menawan. Warna ini bukan berarti kotor atau berlumut. Pengunjung justru bisa melihat ke dasar sungai dari atas air karena kejernihannya.<br>\r\n<br>Curug Leuwi Hejo ini terletak sekitar 20 menit berjalan kaki dari Curug Leuwi Lieuk. Rutenya menanjak dengan melalui banyak anak tangga. Jika ingin berkunjung kemari, perhatikan kesiapan fisik karena jalannya akan terus menanjak.<br>\r\n<br>Selain itu curug ini juga dihiasi tebing serta bebatuan yang indah. Terdapat banyak penginapan yang telah tersedia di sekitar tempat ini. Sehingga pengunjung tak perlu khawatir untuk mencari tempat untuk singgah setelah dari wisata curug ini.<br> ', '07.00 - 17.00 WIB', 'Rp. 25.000', 'Desa Cibadak, Kecamatan Sukamakmur, Kabupaten Bogor, Jawa Barat'),
(3, 'Curug Cikaracak', 'curug3.jpg', 'Wisata ini sangat cocok untuk pengunjung yang menyukai petualangan dan menguji adrenalin. Dikarenakan letak lokasinya yang diapit oleh dua tebing curam, membuat pemandangan sekitar Curug terlihat begitu menakjubkan. Selain mendengar gemericik airnya yang begitu menyegarkan, pengunjung akan disuguhkan dengan pemandangan lain seperti sawah dan kebun sebagai tambahannya.<br> \r\n<br>Curug satu ini berada tepat di kaki gunung Gede atau lebih tepatnya di Dusun Cibeling, Desa Cinagara, kecamatan Caringin, Kabupaten Bogor. Udara di sekitar tempat ini juga terasa sejuk dan menyegarkan untuk dinikmati. Sehingga pengunjung bisa mengunjungi tempat ini untuk melepas penat dan membuat rileks pikiran sejenak.<br>', '08.00 - 16.00 WIB', 'Rp. 10.000', 'Jalan Cinagara, Desa Tangkil, Kecamatan Caringin, Kabupaten Bogor, Jawa Barat'),
(4, 'Curug Putri Kencana', 'curug-4.jpg', 'Curug Putri Kencana terletak di kawasan wisata Gunung Pancar. Di musim kemarau, airnya bersih dan jernih hingga pengunjung bisa melihat ke dasar sungai dari atas permukaan air dengan jelas. Suasana alam di sekitar yang masih asri sangat menenangkan hati.<br>\r\n<br>Kawasan wisata air terjun ini dibuka setiap hari. Tidak disarankan untuk berkunjung kemari ketika musim hujan karena akses trekking menuju curug terlalu licin dan berbahaya, serta arus air terlalu deras. Lebih baik datang pada musim kemarau agar lebih terjamin keamanannya.<br>\r\n<br>Tebing bebatuan yang mengapit air terjun sangat cocok bagi pengunjung yang menyukai cliff jumping. Untuk mencapai tebing yang tertinggi di samping curug, pengunjung harus sedikit menyusuri jalan setapak ke atas dan naik ke jembatan. Jika nyali masih belum kuat, lebih baik pilih batu-batu besar yang ada di sekitar telaga sebagai pijakan untuk cliff jumping.<br>', '07.00 - 17.00 WIB', 'Rp. 25.000', 'Desa Karang Tengah, Kecamatan Babakan Madang, Kabupaten Bogor, Jawa Barat'),
(5, 'Curug Bidadari', 'curug5.jpg', 'Munculnya pelangi di air terjun ini, menumbuhkan kepercayaan tentang asal usul nama Curug Bidadari. Pelangi tersebut dipercaya sebagai jembatan bagi tujuh bidadari untuk turun mandi di sini. Menurut cerita lokal, dari sinilah asal penamaan air terjun ini menjadi Curug Bidadari.<br>\r\n<br>Air terjun ini juga merupakan salah satu yang terkenal dan populer di kota Bogor. Pemandangan alamnya dan fasilitasnya lengkap inilah yang membuat peminat wisata ini semakin meningkat tiap harinya. Selain itu tarif yang dikenakan untuk setiap pengunjung juga relative murah untuk semua kalangan.<br>\r\n<br>Salah satu fasilitas yang ditawarkan adalah disediakannya kolam buatan yang berukuran cukup besar. Kolam ini yang biasa digunakan tempat bermain air yang aman untuk anak-anak. Selain itu wisata ini juga memiliki ciri khas berupa batu besar yang berada tepat di depan air terjun ini.<br>', '07.00 - 17.00 WIB', 'Rp. 25.000 ', 'Desa Bojong Koneng, Kecamatan Babakan Madang, Kabupaten Bogor, Jawa Barat'),
(6, 'Curug Cigamea', 'curug6.jpg', 'Curug Cigamea berlokasi paling dekat dengan pintu masuk utama Kawasan Wisata Gunung Salak Endah. Curug ini memiliki dua air terjun dengan ketinggian berbeda di lokasi yang sama. Akses jalan dari pintu masuk menuju air terjun tertata rapi dengan tangga. Jalur tersebut sudah dilengkapi dengan pagar pembatas.<br>\r\n<br>Air terjun pertama debit airnya tercurah menyebar, berdinding tebing hitam dan terkesan keras seperti batu cadas. Air terjun kedua tercurah dari sela-sela tebing diantara tetumbuhan. Dindingnya berupa tebing kemerahan seperti tanah, dengan aliran air yang tetap jernih.<br>', '06.30 - 17.00 WIB', 'Rp. 10.000', 'Desa Gunung Picung, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat'),
(7, 'Curug Pangeran', 'curug7.jpg', 'Air terjun ini disebut curug \'Pangeran\' karena dipercaya di sinilah tempat pemandian para pangeran kerajaan jaman dahulu. Dengan pemandangan indah dan relatif sepi, membuat pengunjung merasakan nikmatnya mandi ala anak raja.<br>\r\n<br>Air terjun ini berada di bagian hulu mata air Gunung Salak. Airnya sangat jernih dengan pantulan cahaya hijau kebiruan. Akses menuju lokasi air terjun yang bersahabat dengan jarak dekat juga menjadi nilai tambah.<br>\r\n<br>Sesampainya di Curug Pangeran, warna hijau toska di muaranya menjadi daya tarik utama. Warna kebiruan tersebut berasal dari pantulan cahaya pada kolam di bawah air terjun. Arusnya  tidak terlalu deras didukung pepohonan rindang memberikan suasana sejuk dan nyaman untuk relaksasi.<br>', '06.00 - 18.00 WIB', 'Rp. 10.000', 'Desa Gunung Sari, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat'),
(8, 'Curug 7 Cilember', 'curug-8.jpg', 'Sebagai air terjun yang paling mudah dan cepat dijangkau dari pintu masuk, Curug 7 tidak pernah sepi dari pengunjung. Selain Curug 7, kawasan Curug Cilember juga menyediakan fasilitas hiburan lain yang tidak kalah menarik. Tempat ini cocok menjadi alternatif destinasi berlibur di akhir pekan untuk keluarga.<br>\r\n<br>Curug 7 berada di tebing yang dihiasi hutan alami. Airnya mengalir ke sebuah sungai berbatu-batu dengan arus yang tidak terlalu deras. Di bawah air terjun ini terdapat kolam dangkal yang aman bagi pengunjung untuk bermain air atau berenang. Tempias air dari curug membuat suasana lebih segar dan sejuk.<br>', '07.00 - 17.00  WIB', 'Rp. 25.000', 'Jalan Raya Puncak Gadog, Desa Cilember, Kecamatan Megamendung, Kabupaten Bogor, Jawa '),
(9, 'Curug Ciherang', 'curug9.jpg', 'Berwisata ke objek wisata air terjun Ciherang ini sangat cocok untuk semua kalangan. Pengunjung juga dapat menikmati sajian air terjun alami yang bertingkat tiga dengan panorama alam keindahan Bogor dari ketinggian. Selain itu kawasan telaga air terjun dan kolam renangnya sangat menarik, sayang untuk dilewatkan.<br>\r\n<br>Perjalanan menuju Curug Ciherang cukup singkat. Hal ini karena trek menuju air terjun cenderung menanjak dengan jalur yang terbuat dari tumpukan batu. Namun pemandangan di kanan-kiri jalan cukup indah dan tampak asri dengan pepohonan hijau.<br>\r\n<br>Curug berarti air terjun, dan \'ciherang\' berarti air yang jernih. Kata ciherang disematkan karena air terjun ini sangat jernih, sehingga dasarnya dapat terlihat dengan jelas. Tak sedikit pengunjung langsung berfoto di berbagai sisi Curug Ciherang. Masing-masing tingkat air terjun yang semuanya cantik juga bisa menjadi latar untuk berfoto.<br>', '07.00 - 18.00 WIB', 'Rp. 40.000', 'Desa Wargajaya, Kecamatan Sukamakmur, Kabupaten Bogor, Jawa Barat'),
(10, 'Curug Ciputri', 'curug10.jpg', 'Keindahan alam perbukitan sekitar air terjun ditambah hawa sejuk khas pegunungan merupakan suguhan utama. Ditambah lagi panorama Gunung Salak yang terlihat jelas dari sekitar curug. Selain tentu saja kesegaran dan kejernihan air terjun Ciputri. Banyak kegiatan menarik yang bisa dilakukan di sini seperti camping.<br>\r\n<br>Jika pengunjung datang ke tempat ini harus mempersiapkan kondisi fisik. Jarak dari pintu masuk menuju curugnya sekitar 1 kilometer dengan kontur jalan yang menanjak. Namun demikian, sepanjang jalan menuju Curug Ciputri akan dipayungi dengan teduhnya pohon-pohon pinus.<br>\r\n<br>Dan rasa lelah pengunjung akan terbayarkan pada saat tiba di lokasi air terjun yang menyajikan keindahan alam yang masih asri dan airnya yang sejuk. Selain Curug Ciputri, terdapat beberapa curug lagi, antara lain Curug Padalarang, Curug Ciputri juga Curug Kiara. Seperti kata pepatah, sekali berwisata, dua tiga curug dilampaui.<br>', '24 jam', 'Rp. 15.000', 'Desa Tapos I, Kecamatan Tenjolaya, Kabupaten Bogor, Jawa Barat'),
(11, 'Curug Barong', 'curug11.jpg', 'Curug barong memiliki trek yang cukup panjang dan beragam, sehingga perlu kewaspadaan yang tinggi. Namun, pengunjung akan disuguhkan keindahan alamnya di sepanjang perjalanan menuju tempat ini.<br>\r\n<br>Rasa lelah saat melakukan trekking terbayarkan sudah, melihat keadaan airnya yang jernih dan bersih. Curug Barong berada di antara Leuwi Hejo dan Leuwi Lieuk. Karena lokasinya berada di tengah sehingga terkadang jarang untuk dikunjungi.<br>\r\n<br>Tak hanya itu saja air yang mengalir juga masih sangat jernih dan bersih. Hal ini membuat banyak pengunjung yang menikmatinya dengan berenang. Tarif untuk masuk ke wisata ini juga murah dan terjangkau.<br>', '07.00 - 17.00 WIB', 'Rp. 25.000', 'Desa Pabuaran, Kecamatan Sukamakmur, Kabupaten Bogor, Jawa Barat'),
(12, 'Curug Cibaliung', 'curug12.jpg', 'Bagi para penggemar kegiatan hunting untuk mengambil sejumlah moment foto terbaik. Maka lokasi Curug Cibaliung di Bogor ini menjadi pilihan yang sangat tepat. Dimana berbagai keindahan dapat pengunjung jadikan sebagai objek yang menawan untuk hasil foto yang lebih baik.<br>\r\n<br>Curug Cibaliung juga tempat yang cocok untuk pengunjung bila menyukai kegiatan outdoor. Hal ini dikarenakan tempat ini memiliki trek yang panjang dan menantang.<br>\r\n<br>Namun, semua itu akan terbayar ketika pengunjung telah sampai ke curug ini. Pengunjung akan disuguhi pemandangan alamnya yang asri dan alami. Selain itu suasananya pun juga nyaman dan tenang.<br>', '08.00 - 17.00 WIB', 'Rp. 15.000 ', 'Desa Pabuaran, Kecamatan Sukamakmur, Kabupaten Bogor, Jawa Barat'),
(13, 'Curug Leuwi Lieuk', 'curug13.jpg', 'Curug Leuwi Lieuk adalah salah satu dari banyaknya air terjun yang ada di kawasan Sentul, Bogor. Kata \'leuwi\' merupakan bahasa Sunda yang berarti lubuk. Lubuk adalah bagian terdalam yang ada di suatu sungai.<br>\r\n<br>Bagian telaga di Curug Leuwi Lieuk dikelilingi oleh dinding bebatuan yang tinggi. Ketinggiannya mencapai lebih dari 7 meter. Tebing ini sering digunakan untuk cliff jumping atau lompat dari tebing ke air oleh pengunjung penyuka tantangan.<br>\r\n<br>Pengunjung bisa memilih ketinggian batu yang diinginkan sebagai tempat melompat. Tingginya bervariasi, mulai dari 3 meter, 5 meter, hingga 6-7 meter. Melompat dari tebing dan mendarat ditelaga dengan air yang segar di tengah alam terbuka tentu akan jadi pengalaman yang tak terlupakan.<br>', '06.00 - 17.30 WIB', 'Rp. 15.000', 'Desa Pabuaran, Kecamatan Sukamakmur, Kabupaten Bogor, Jawa Barat'),
(14, 'Curug Cibulao', 'curug14.jpg', 'Nama \'Cibulao\' merupakan penggambaran dari air terjun ini. Berasal dari bahasa Sunda, \'ci\' berarti \'air\', dan \'bulao\' berarti \'biru\'. Kata ini menunjukkan kondisi Curug Cibulao yang memang biru jernih.<br>\r\n<br>Curug Cibulao merupakan hulu atau sumber dari beberapa air terjun lain di Bogor, seperti Curug Panjang dan Curug Orok. Posisinya ini menjadikan air di telaga dan sungai sekitar Curug Cibulao masih dalam keadaan bersih. Warnanya yang biru juga menjadi asal-muasal nama tempat ini.<br>\r\n<br>Ada dua tempat untuk berenang atau menyelam di sini. Pertama adalah telaga di bawah dengan kedalaman 8 meter. Dan tempat kedua ialah telaga yang berada di curug atas. Telaga ini memiliki kedalaman 5 meter dan bisa dijangkau dengan menaiki bebatuan di pinggir curug bawah. Warna airnya cenderung lebih biru dan jernih. Untuk keamanan pengunjung bisa menggunakan jaket pelampung yang disewakan oleh pengelola.<br>', '07.00 - 17.00 WIB', 'Rp. 12.000', 'Kecamatan Megamendung, Kabupaten Bogor, Jawa Barat'),
(15, 'Curug Balong Endah', 'curug15.jpg', 'Curug Balong Endah berada di kawasan Taman Nasional Gunung Halimun Salakyang berarti terletak diantara beberapa objek wisata lainnya, seperti Curug Pangeran. Faktanya, Curug Balong Endah ini baru dibuka untuk umum sekitar tahun 2016 sehingga bisa dikatakan bahwa Curug Balong Endah ini merupakans salah satu objek wisata baru dengan harga tiket terjangkau yang masih sepi dari pengunjung.<br>\r\n<br>Curug Balong Endah dikelelingi bukit-bukit tinggi. Pengunjung bisa berjalan-jalan di sekitar bukit untuk menikmati keindahan pemandangan Curug Balong Endah dari ketinggian.<br> \r\n<br>Air terjun ini dikelilingi oleh bukit dan kawasan hutan yang cukup lebat, terdapat sebuah kolam dengan ukuran yang cukup besar di sekitar air terjun ini. Sumber air alami ini terlihat bening dan menyegarkan membuat siapun pengunjungnya ingin berendam di dalamnya.<br> ', '08.00 - 15.00 WIB', 'Rp. 7.500', 'Desa Gunung Picung, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat'),
(16, 'Curug Nangka', 'curug16.jpg', 'Memasuki kawasan wisata, pengunjung akan disuguhi keindahan yang alami. Jajaran pohon pinus menjulang tinggi berjajar rapi di sisi kiri. Di sebelah kanan terlihat area persawahan dan pegunungan berhawa sejuk.<br>\r\n<br>Jika beruntung, pengunjung dapat melihat beberapa kera liar bergelantungan di pepohonan sekitar area. Mendekati air terjun, pengunjung harus berjalan di atas batuan. Kawasan wisata Curug Nangka juga menyediakan area untuk berkemah. Sebuah camping ground terdapat di sisi kanan dekat anak sungai.<br>\r\n<br>Curug Nangka juga merupakan tempat ziarah. Ruang semedi yang ada di air terjun pernah digunakan oleh beberapa sesepuh. Salah satunya adalah Raden Surya Kencana. Lokasi air terjun berada di ketinggian dengan jalur berliku dan menanjak. Namun sudah terdapat jalan setapak dengan medan yang sudah dibuat senyaman mungkin.<br>', '07.00 - 17.00 WIB', 'Rp. 14.500 (Hari Kerja) - Rp. 17.000(Hari Libur)', 'Desa Sukajadi, Kecamatan Tamansari, Kabupaten Bogor, Jawa Barat'),
(17, 'Curug Ngumpet', 'curug17.jpg', 'Curug Ngumpet berada di lereng barat laut Gunung Salak. Pintu masuknya berada di tikungan dekat jalan yang menanjak. Akses jalan yang ramah pengunjung menjadikan kawasan air terjun ini cocok sebagai tujuan wisata keluarga. Pengunjung telah dipermudah dan didukung berbagai fasilitas yang tersedia di area wisata air terjun ini.<br>\r\n<br>Meskipun namanya \'Ngumpet\', namun akses menuju air terjun ini tidak begitu sulit. Pihak pengelola Curug Nangka telah memasang petunjuk yang jelas. Saat melihat Curug Ngumpet, pengunjung dapat melihat keindahan air terjunnya yang alami. Airnya dingin dan sangat jernih dengan pantulan cahaya hijau kebiruan.<br>', '06.00 - 18.00 WIB', 'Rp. 10.000', 'Desa Gunung Picung, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat'),
(18, 'Curug Panjang', 'curug18.jpg', 'Nama Curug Panjang merupakan nama yang berasal dari Bahasa Sunda. Dimana curug memiliki arti air terjun. Sedangkan nama Panjang digunakan karena keadaan dari curug tersebut. Karena curug ini tergolong unik dan berbeda dibandingkan curug lainnya. Jika curug lain akan menjatuhkan air secara langsung, curug ini mengalir secara memanjang dan akhirnya menciptakan sebuah kolam sebagai tempat penampungan airnya. Hal inilah yang menyebabkan curug ini dipanggil dengan nama Curug Panjang.<br>\r\n<br>Menikmati dinginnya air yang mengalir dari mata air di pegunungan, sembari menikmati keindahan alam yang masih sangat alami. Aliran air Curug Panjang memanjang sampai ke area bawah melewati bebatuan yang bersatu padu.<br>\r\n<br>Banyak aktivitas yang dapat dilakukan di air terjun ini, seperti berenang, merendam kaki ataupun menyelami dasar curug. Namun, penting untuk selalu berhati-hati karena curug cenderung cukup dalam. Atau bagi pengunjung yang tidak bisa berenang, disediakan beberapa tempat penyewaan pelampung.<br>', '24 jam', 'Rp. 10.000', 'Kecamatan Megamendung, Kabupaten Bogor, Jawa Barat'),
(19, 'Curug Cipamingkis', 'curug19.jpg', 'Curug Cipamingkis merupakan air terjun yang terbentuk dari pertemuan dua sungai, yaitu Sungai Cipamingkis dan Sungai Cisarua. Salah satunya kemudian menjadi asal-usul penamaan air terjun ini.<br>\r\n<br>Air terjun ini merupakan aliran air yang berasal dari Gunung Halimun Timur. Tempat pertemuan dua sungai ini dialiri oleh air yang masih dalam keadaan bersih dan jernih. Sungai yang dangkal membuat area sekitar air terjun cocok sebagai tempat bermain air atau sekadar berfoto. Namun, pengunjung tetap harus berhati-hati dengan batu-batu serta permukaannya yang licin.<br>\r\n<br>Taman wisata alam Curug Cipamingkis dengan segala kelengkapan fasilitasnya bisa menjadi pilihan yang tepat untuk melaksanakan kegiatan outbond. Pengelola menyediakan area untuk aktivitas flying fox, berenang, hingga treking. Tersedia juga paket lengkap untuk kegiatan keakraban yang biasa diadakan institusi kantor maupun sekolah.<br>', '07.30 - 16.00 WIB', 'Rp. 35.000 (Hari Kerja) - Rp. 40.000 (Hari Libur)', 'Desa Wargajaya, Kecamatan Sukamakmur, Kabupaten Bogor, Jawa Barat'),
(20, 'Curug Putri Pelangi', 'curug20.jpg', 'Selain Curug Putri, air terjun ini juga dinamai Curug Kuwung-Kuwung karena kerap muncul pelangi (kuwung-kuwung), terutama sesudah turun hujan.Curug Putri Pelangi memiliki bentuk lanskap yang cukup curam, terlebih letaknya berada di bawah. Cahaya matahari terik tidak begitu terasa karena tertutup oleh rimbunnya pepohonan. Terlihat juga beberapa pohon pinus dan bambu yang mengelilingi curug sehingga menambah kesan teduh dan sejuk.<br>\r\n<br>Kawasan konservasi alam Bogor yang mengeliling area curug di bawah kaki Gunung Salak sangat memanjakan pandangan mata pengunjung, baik suasana kesejukan alamnya maupun suasana astri air pegunungan yang sangat jernih dan masih jarang di jajak pengunjung.<br>\r\n<br>Fasilitas di Curug Putri Pelangi cukup lengkap, seperti tempat ibadah. Adapun tangga untuk meniti saat menuju curug kondisinya sudah dilengkapi dengan pegangan sehingga cukup aman. Tempat duduk terletak di depan warung makan, terdapat meja dan atap.<br>', '08.00 -16.30 WIB', 'Rp. 25.000', 'Tajur Halang, Cijeruk, Bogor, Jawa Barat. ');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `email`, `password`) VALUES
(2, 'eerlii', 'earlyzahraarib@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'ica', 'ica123@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'rookie', 'roookie123@gmail.com', 'e47ca7a09cf6781e29634502345930a7'),
(10, 'dprian', 'christianyu@gmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 'akun01', 'akun01@gmail.com', '92b89b73ec3215d6e3a2d90957623fb4'),
(12, 'akun 002', 'akun02@gmail.com', '51d660a1894b02cf2ad5ac32d2a287f0'),
(13, 'cek aja', 'cekaja@gmail.com', '847cd56ba7c5e464b2d1cd49361d7b59'),
(14, 'akun 03', 'akun03@gmail.com', '1bf6fabd71633c166a17076f0a00d888'),
(15, 'akbaradp', 'afifdwi818@yahoo.co.id', '6b04bac04cd30e10c35edef23c7e405e'),
(16, 'jamet', 'jamet123@gmail.com', '8ccf0bb6ab3bd6f88264793027fba0a2'),
(17, 'ujicoba', 'ujicoba@gmail.com', 'e19773d8dc0262d623841a7e06f614c9'),
(18, 'aydim', 'aydim@gmail.com', '8a76c476db5bf24d7f3cff961e81e0f3'),
(19, 'akun29', 'akun29@gmail.com', 'dcffdfaf3c59a857e6271bb9a827af1d'),
(20, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curug`
--
ALTER TABLE `curug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `curug`
--
ALTER TABLE `curug`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
