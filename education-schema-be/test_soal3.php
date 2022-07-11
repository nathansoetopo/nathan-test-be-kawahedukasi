<?php
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$con = mysqli_connect("localhost",$username,$password,"kawah");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}
// Gaji Tertinggi
$ceksekarang = mysqli_query($con, "select * from kawahedukasi ORDER BY gaji DESC"); //List Gaji Tertinggi Terendah
echo '<h5>Order BY Gaji Tertinggi</h5>';
while($ambildatanya = mysqli_fetch_array($ceksekarang)){
    echo $ambildatanya['nama'].'   --   '.$ambildatanya['gaji'].'';
    echo '</br>';
}


echo '</br>';echo '</br>';


echo '<h5>Order BY Gaji, Nilai Tertinggi</h5>';
// Nilai dan Gaji Tertinggi
$ceksekarang = mysqli_query($con, "select * from kawahedukasi where kelas = 'BACKEND' ORDER BY nilai DESC, gaji DESC");
while($ambildatanya = mysqli_fetch_array($ceksekarang)){
    echo $ambildatanya['nama'].'   --   '.$ambildatanya['gaji'].' --   '.$ambildatanya['nilai'].'   --   '.$ambildatanya['kelas'].'';
    echo '</br>';
}

echo '</br>';echo '</br>';

echo '<h5>Jumlah Peserta FrontEnd</h5>';
$ceksekarang = mysqli_query($con, "select * from kawahedukasi where kelas = 'FRONTEND'");
$rowcount = mysqli_num_rows($ceksekarang);
echo $rowcount;

echo '</br>';echo '</br>';

echo '<h5>Kehadiran dan Nilai Tertinggi Frontend</h5>';
$ceksekarang = mysqli_query($con, "select * from kawahedukasi where kelas = 'FRONTEND' ORDER BY nilai DESC, jumlah_kehadiran DESC");
while($ambildatanya = mysqli_fetch_array($ceksekarang)){
    echo $ambildatanya['jumlah_kehadiran'].' --   '.$ambildatanya['nilai'].'   --   '.$ambildatanya['kelas'].'';
    echo '</br>';
}
?>