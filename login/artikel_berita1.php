<!doctype html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">   
	<!-- My Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@800&display=swap" rel="stylesheet">	
	<!-- My CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
	<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
<title>Berlibur Aman di Masa Pandemi</title>
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

	<?php 
	include "koneksi.php"; 

	$query = mysqli_query($koneksi, "SELECT * FROM artikel WHERE id_artikel ='1' ");
	$row_query = mysqli_fetch_array($query);
	?>

	<br><br><br><br>
	<div class="container">
		<br><br><br>
		<center><h2><?php echo $row_query ['judul']; ?> </h2></center><hr><br><br><br>
		<p> Tanggal: <?php echo $row_query ['tanggal']; ?> </p><br>
		<center><img src="img/<?php echo $row_query['gambar'];?>" width="100%" ></center><br><br>
		<p align="justify"><?php echo $row_query ['isi_artikel']; ?> </p><br><br><br><br><br><br><br><br>
		<p> Referensi:</p><a href="https://www.alodokter.com/tips-aman-berlibur-saat-pandemi"><?php echo $row_query ['referensi']; ?> </a><br>
		<br><br><br><br><br><br><br><br><br>

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
	<script type="text/javascript" src="js/contact_me.js"></script> 
	<script type="text/javascript" src="js/main2.js"></script>
</body>
</html>