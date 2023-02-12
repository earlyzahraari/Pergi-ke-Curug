<?php

$host = "localhost";
$user = "root";
$pass = "";
$db = "wisata_curug";

$koneksi = mysqli_connect($host, $user, $pass, $db);

if($koneksi){
	// echo "koneksi berhasil";
}else{
	echo "koneksi gagal:" . mysqli_connect_error();
}
?>
