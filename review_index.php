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
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>PERGI KE CURUG</title>	
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">
	<!-- My Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@800&display=swap" rel="stylesheet">	
	<!-- Slider-->
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen">
	<link href="css/owl.theme.css" rel="stylesheet" media="screen">
	<!-- Stylesheet-->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
	<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
		<li><a href="index.html #objwsta" class="page-scroll">Objek Wisata</a></li>
		<li><a href="index.html #tkami" class="page-scroll">Profil</a></li>
		<li><a href="index.html #portfolio" class="page-scroll">Artikel</a></li>
		<li><a href="index.html #services" class="page-scroll">Layanan Kami</a></li>
		<li><a href="review_index.php" class="page-scroll">Review</a></li>
		<li><a href="login/login.php" class="page-scroll">Login</a></li>
		
	  </ul>
	</div> 
		</div>
		</nav>

	<!-- Show data -->
	<br><br><br><br>
			<div class="container" style="margin-top: 80px">
				<div class="row">
					<div class="col-md-12">
						<h4>Semua Komentar Wisata:</h4><br>
						<br>Ingin tambahkan komentar? <a href="login/login.php">login disini</a><br><br>
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
		
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>