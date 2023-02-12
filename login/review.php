<?php
$host       = "localhost";
$user       = "root";
$pass       = "";
$db         = "wisata_curug";

$koneksi    = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) { //cek koneksi
	die("Tidak bisa terkoneksi ke database");
}

$nama       = "";
$curug      = "";
$komentar   = "";
$sukses     = "";
$error      = "";

if (isset($_POST['simpan'])) { //untuk create
	$nama       = $_POST['nama'];
	$curug      = $_POST['curug'];
	$komentar   = $_POST['komentar'];


	if ($nama && $komentar) {
		$sql1   = "insert into comments(nama,curug,komentar) values ('$nama','$curug','$komentar')";
		$q1     = mysqli_query($koneksi, $sql1);
		if ($q1) {
			$sukses     = "Anda Berhasil Memberi Komentar !";
		} else {
			$error      = "Maaf anda Belum Berhasil Komentar !";
		}
	} else {
		$error = "Mohon isi dengan lengkap !";
	}
}
?>
<?php 

session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
}

?>
<!doctype html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">   
	<!-- My Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@800&display=swap" rel="stylesheet">	
	<!-- My CSS -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/dropdown.css">	
	<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
	<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css"> 
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<title>Review</title>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<!-- Navigation-->
			<nav id="menu" class="navbar navbar-default navbar-fixed-top">
			  <div class="container"> 
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				  <a class="navbar-brand page-scroll" href="#page-top">Pergi Ke Curug</a> </div>			
		
		<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav navbar-right">			
				<li><a href="home.html #objwsta" class="page-scroll">Objek Wisata</a></li>
				<li><a href="home.html #tkami" class="page-scroll">Profil</a></li>
				<li><a href="home.html #portfolio" class="page-scroll">Artikel</a></li>
				<li><a href="home.html #services" class="page-scroll">Layanan Kami</a></li>
				<li><a href="review.php" class="page-scroll">Review</a></li>
				<li><a href="logout2.php" class="page-scroll">Logout</a></li>

			  </ul>
			</div> 
				</div>
				</nav>	

				
		<!-- Input data -->
			<div class="container">
				<div class="card-header">
					<div class="text-center">
						<br><br><br><br><br><br><h3>Komentar</h3><br>
					</div><hr><br>
						<?php echo "<p>Hai " . $_SESSION['username'] . ", silahkan tambahkan Komentar mu Disini:</p>"; ?> 

						<?php
						if ($error) {
						?>
							<div class="alert alert-danger" role="alert">
								<?php echo $error ?>
							</div>
						<?php
							header("refresh:5;url=review.php"); //5 : detik
						}
						?>
						<?php
						if ($sukses) {
						?>
							<div class="alert alert-success" role="alert">
								<?php echo $sukses ?>
							</div>
						<?php
							header("refresh:5;url=review.php");
						}
						?>

						<br><br>
						<form action="" method="POST">
							<div class="from-group">
								<label for="nama" class="col-sm-2 col-form-label">Nama</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="nama" name="nama" value="<?php echo $nama ?>" placeholder="Masukkan Nama Lengkap">
								</div>
							</div>
							<br><br>
							<div class="from-group">
								<label for="curug" class="col-sm-2 col-form-label">Nama Curug</label>
								<div class="col-sm-10">
								<select name="curug">
									<label><option value="" disabled selected>-- Pilih daerah tempat wisata curug --</option></label>
									<option value="Curug Cikuluwung">Curug Cikuluwung</option>
									<option value="Curug Leuwi hejo">Curug Leuwi hejo</option>
									<option value="Curug Cikaracak">Curug Cikaracak</option>
									<option value="Curug Putri Kencana">Curug Putri Kencana</option>
									<option value="Curug Bidadari">Curug Bidadari</option>
									<option value="Curug Cigamea">Curug Cigamea</option>
									<option value="Curug Pangeran">Curug Pangeran</option>
									<option value="Curug 7 Cilember">Curug 7 Cilember</option>
									<option value="Curug Ciherang">Curug Ciherang</option>
									<option value="Curug Ciputri">Curug Ciputri</option>
									<option value="Curug Barong">Curug Barong</option>
									<option value="Curug Cibaliung">Curug Cibaliung</option>
									<option value="Curug Leuwi Lieuk">Curug Leuwi Lieuk</option>
									<option value="Curug Cibulao">Curug Cibulao</option>
									<option value="Curug Balong Endah">Curug Balong Endah</option>
									<option value="Curug Nangka">Curug Nangka</option>
									<option value="Curug Ngumpet">Curug Ngumpet</option>
									<option value="Curug Panjang">Curug Panjang</option>
									<option value="Curug Cipamingkis">Curug Cipamingkis</option>
									<option value="Curug Putri Pelangi">Curug Putri Pelangi</option>
								</select>
								</div>
							</div>
							<br><br>
							<div class="from-group">
								<label for="komentar" class="col-sm-2 col-form-label">Komentar</label>
								<div class="col-sm-10">
									<textarea class="form-control" id="komentar" name="komentar" value="<?php echo $komentar ?>" placeholder="Masukkan Komentar"> </textarea>
								</div>
							</div>
							<br><br><br><br><br>
							<div class="col-12">
								<div class="text-center">
									<input type="submit" name="simpan" value="Posting" class="btn btn-primary" />
								</div>
							</div>
						</form>
				</div>
			</div>
			<br><br>
			
	
		
		<!-- Show data -->
			<div class="container" style="margin-top: 80px">
				<div class="row">
					<div class="col-md-12">
						<h4>Semua Komentar Wisata:</h4>
							<tbody>
								<?php
								$sql2   = "select * from comments order by id desc";
								$q2     = mysqli_query($koneksi, $sql2);
								while ($r2 = mysqli_fetch_array($q2)) {
									$id         = $r2['id'];
									$nama       = $r2['nama'];
									$curug		= $r2['curug'];
									$komentar   = $r2['komentar'];
								?>
									<tr><div class="well">
										<b><td><?php echo $nama ?></b><br>
										<a>Nama tempat: </a><?php echo $curug ?><br> 
										<?php echo $komentar ?></td><br>
									</tr></div>
								<?php
								}
								?>
							</tbody>
					</div>					
				</div>
			</div>
			
			<script src="https://code.jquery.com/jquey-3.4.1.slim.min.js"></script>
			<script src="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></script>
			<script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
			<script>
				$(document).ready(function() {
					$('#myTable').DataTable();
				});
			</script>
				

<br><br><br><br>
	<footer class="footer">
	<div class="container">
    <!--isi foter-->
    <p align="center">&copy; 2021 PergikeCurug</p>
   </div>
  </footer>	         
	<!-- Optional JavaScript -->	
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
	<script type="text/javascript" src="js/bootstrap.js"></script> 
	<script type="text/javascript" src="js/SmoothScroll.js"></script> 
	<script type="text/javascript" src="js/nivo-lightbox.js"></script> 
	<script type="text/javascript" src="js/jquery.isotope.js"></script> 
	<script type="text/javascript" src="js/owl.carousel.js"></script> 
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
	<script type="text/javascript" src="js/main2.js"></script>
</body>
</html>