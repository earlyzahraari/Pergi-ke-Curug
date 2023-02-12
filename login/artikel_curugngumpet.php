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
	
<title>Curug Ngumpet</title>
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

		<!-- Data Database -->		
			<?php 
			
			include "koneksi.php"; 

			$query = mysqli_query($koneksi, "SELECT * FROM curug WHERE id ='17' ");
			$row_query = mysqli_fetch_array($query);
			?>

			<br><br><br><br>
			<div class="container">
				<br><br><br>
				<center><h2><?php echo $row_query ['judul']; ?> <br></h2></center><hr>
				<center><img src="img/<?php echo $row_query['gambar'];?>" width="500px" height="350px"></center><br><br>
				<p align="justify"><?php echo $row_query ['ket']; ?>
				<p> Jam Buka: <?php echo $row_query ['jam']; ?> </p>
				<p> Harga: <?php echo $row_query ['harga']; ?> </p>
				<p> Lokasi: <?php echo $row_query ['lokasi']; ?> </p><br>
				<h4 div class = "text-center">Maps</h4><hr>
					<div class="embed-responsive embed-responsive-16by9">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9424.783558136245!2d106.68669442669986!3d-6.6922532631207945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69d1bd8f2d4e2d%3A0x92c614cd095d1645!2sCurug%20Ngumpet1!5e0!3m2!1sid!2sid!4v1626436620002!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
					</div><br><br>		
					<div class="card-header bg-light text-black">
						<h4 div class = "text-center">Gallery</h4><hr>
							<div class= "gallery">			
							<a href="img/nmpt1.jpg" >
								<img src="img/nmpt1.jpg" alt="" >
							</a>
							<a href="img/nmpt2.jpg" >
								<img src="img/nmpt2.jpg" alt="">
							</a>
							<a href="img/nmpt3.jpg" >
								<img src="img/nmpt3.jpg" alt="">
							</a>
							<a href="img/nmpt4.jpg" >
								<img src="img/nmpt4.jpg" alt="">
							</a>
							<a href="img/nmpt5.jpg" >
								<img src="img/nmpt5.jpg" alt="">
							</a>
							<a href="img/nmpt6.jpg" >
								<img src="img/nmpt6.jpg" alt="">
							</a>
						</div>
						<br><br>
					</div>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js" integrity="sha512-b4rL1m5b76KrUhDkj2Vf14Y0l1NtbiNXwV+SzOzLGv6Tz1roJHa70yr8RmTUswrauu2Wgb/xBJPR8v80pQYKtQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
				<script>
					lightGallery(document.querySelector('.gallery'));
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
	<script type="text/javascript" src="js/contact_me.js"></script> 
	<script type="text/javascript" src="js/main2.js"></script>
</body>
</html>