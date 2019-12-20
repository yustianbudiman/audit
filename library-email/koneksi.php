<?php
require_once('function.php');
// isi nama host, username mysql, dan password mysql anda
$conn = mysqli_connect("mj-infomatika.my.id","mjinfoma_root","h}wLFwnC-Qjj","mjinfoma_company_profile");
 
if($conn){
	echo "koneksi host berhasil.<br/>";
}else{
	echo "koneksi gagal.<br/>";
}
$sql="select*from cat_bisnis";
$result = $conn->query($sql);
$jml=$result->num_rows;
if($jml>=1){
    $to       = 'yustianbudiman@gmail.com';
    $subject  = 'Subject Pengiriman Email Uji Coba';
    $message  = '<p>Isi dari Email Testing</p>';
    smtp_mail($to, $subject, $message, '', '', 0, 0, true);  
}

//print_r($result->num_rows);
 

?>