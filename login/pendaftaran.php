<?php 

include 'koneksi.php';

error_reporting(0);

session_start();

if (isset($_SESSION['username'])) {
    header("Location: login.php");
}

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = ($_POST['password']);
	$cpassword = ($_POST['cpassword']);

	if ($password == $cpassword) {
		$sql = "SELECT * FROM member WHERE email='$email'";
		$result = mysqli_query($koneksi, $sql);
		if (!$result->num_rows > 0) {
			$sql = "INSERT INTO member (username, email, password)
					VALUES ('$username', '$email', '$password')";
			$result = mysqli_query($koneksi, $sql);
			if ($result) {
				echo "<script>alert('Pendaftaran berhasil !')</script>";
				$username = "";
				$email = "";
				$_POST['password'] = "";
				$_POST['cpassword'] = "";
			} else {
				echo "<script>alert('Ups.. ada kesalahan !')</script>";
			}
		} else {
			echo "<script>alert('Email yang anda masukkan sudah terdaftar !')</script>";
		}
		
	} else {
		echo "<script>alert('Password yang anda masukkan salah !')</script>";
	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
	<!-- Stylesheet -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style2.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">

	<title>Daftar Pergi ke Curug</title>
</head>
<body>
	<div class="container-login100" style="background-image: url('img/bnr_curug.jpg');">
	<div class="container">
		<form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Daftar akun</p>
			<div class="input-group">
				<input type="text" placeholder="Username" name="username" value="<?php echo $username; ?>" required>
			</div>
			<div class="input-group">
				<input type="email" placeholder="Email" name="email" value="<?php echo $email; ?>" required>
			</div>
			<div class="input-group">
				<input type="password" placeholder="Password" name="password" value="<?php echo $_POST['password']; ?>" required>
            </div>
            <div class="input-group">
				<input type="password" placeholder="Confirm Password" name="cpassword" value="<?php echo $_POST['cpassword']; ?>" required>
			</div>
			<div class="input-group">
				<button name="submit" class="btn">Daftar</button>
			</div>
				
			<br><br>
			<div class="text-center">
				<a href="login.php" class="txt2 hov1">
					Sudah punya akun? Login disini.
				</a>
			</div>

		</form>
	</div>
</body>
</html>