<?php

$nama = $_REQUEST["nama"];
$tugas = $_REQUEST["tugas"];
$uts = $_REQUEST["uts"];
$uas = $_REQUEST["uas"];
$hasil = ($tugas * 0.3) + ($uts * 0.3) + ($uas * 0.4);
$pesan = "Nilai Huruf Anda Adalah : ";

echo "Nilai $nama adalah : <br />";
echo "Tugas = $tugas <br />";
echo "UTS = $uts <br />";
echo "UAS = $uas <br />";
echo "<hr />";

if ($hasil > 80) {
  echo "$pesan A";
} elseif ($hasil > 70) {
  echo "$pesan B";
}elseif ($hasil > 60) {
  echo "$pesan C";
}elseif ($hasil > 40) {
  echo "$pesan D";
} else {
  echo "$pesan E";
}

echo "<hr /><br /><br />";
echo '<a href="index.php">Kembali</a>';

