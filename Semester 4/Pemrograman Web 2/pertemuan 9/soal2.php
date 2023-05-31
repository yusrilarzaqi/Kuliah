<?php
//Pemrograman Berbasis Objek atau Object Oriented Programming (OOP) adalah sebuah tata cara pembuatan program (programming paradigm) dengan menggunakan konsep “objek” yang memiliki data (atribut yang menjelaskan tentang objek) dan prosedur (function) yang dikenal dengan method. (http://en.wikipedia.org/wiki/Object-oriented_programming)
////////////////////
// Secara sederhana kelas dan instansiasi dapat dideskripsikan :
// Kelas : cetakan program
// instansiasi : proses membuat program dari cetakan kelas
///////////////////
// contoh kelas : cukup dengan keyword class dan menyebutkan namanya
class laptop 
{
  // properti kelas
  var $merek, $harga, $pemilik;

  // method kelas tanpa parameter
  function hidupkan(){
    echo "Laptop hidup";
  }

  // method kelas dengan parameter 
  function matikan($timer = 0){
    $merek = $this->merek; // fungsi $this untuk menunjuk ke variabel dalam kelas ini, bukan variabel yang dikirim melalui parameter.
    if ($timer == 0) {
      // jika timer tidak diisi saat metode dipanggil
      echo "Laptop ".$merek." akan mati";
    } else{
      // Jika timer diisi
      echo "Laptop ".$merek." akan mati dalam ".$timer." menit lagi";
    }
  }

  public function dijual(): void {
    echo "Laptop ini dijual dengan harga: " . $this->harga;
  }
  
}
// end kelas
//////////////////////////
// instansiasi
echo "<br/> Pengujian instansiasi menjadi objek laptop1";
echo "<br/>";
// instansiasi dilakukan dengan membuat objek baru sebagai sebuah variabel. Lalu di-assign dengan keyword new lalu menyebutkan nama kelas yang akan dijadikan cetakan.
$laptop1 = new laptop();
// mengisi / memanipulasi properti dalam kelas
$laptop1->merek = "Dell";
// periksa properti pemilik sebelum diisi
echo "Periksa properti pemilik : ";
var_dump($laptop1->pemilik);
// mengisi properti pemilik
$laptop1->pemilik = "Priyadi";
echo "<br/>";
// Memanggil properti dan method dalam kelas laptop melalui objek laptop1
echo "Merek laptop1 : ".$laptop1->merek;
echo "<br/>";
echo "Pemilik laptop1 : ".$laptop1->pemilik;
echo "<br/>";
echo $laptop1->hidupkan();
echo "<br/> ";
echo $laptop1->matikan();
echo "<br/>";
echo $laptop1->matikan(4);
echo "<br/> ========== ";

// bukti bahwa kelas adalah cetakannnya dan instansiasi adalah pencetakannya dengan membuat objek baru dari kelas yang sama

echo "<br/> Pengujian instansiasi menjadi objek laptop2";
echo "<br/>";
$laptop2 = new laptop();
// mengisi / memanipulasi nilai properti dalam kelas
$laptop2->merek = "Asus";
// periksa properti pemilik sebelum diisi
echo "Periksa properti pemilik : ";
// properti pemilik akan tetap null pada laptop2, walaupun pada laptop1 telah diisi
var_dump($laptop2->pemilik);
$laptop2->pemilik = "Agus";
echo "<br/>";
echo "Merek laptop2 : ".$laptop2->merek;
echo "<br/>";
echo "Pemilik laptop2 : ".$laptop2->pemilik;
echo "<br/>";
echo $laptop2->hidupkan();
echo "<br/> ";
echo $laptop2->matikan();
echo "<br/>";
echo $laptop2->matikan(4);
echo "<br/> ========== ";
// Kesimpulan : masing-masing objek yang dibuat dari kelas yang sama berlaku seperti copy-annya dan tidak saling mempengaruhi namun sama-sama memiliki properti maupun method yang ada pada kelas cetakannya.

echo  "<br/>Soal 2 : silahkan modifikasi kode pada kelas laptop sehingga dapat diinstansiasi seperti berikut dan menghasilkan output seperti yang didemonstrasikan berikut : "; 
echo "<br/>";
// instansiasi menjadi laptop 3 dan dijual
$laptop3 = new laptop();
$laptop3->merek = "Acer";
$laptop3->pemilik = "Yusril";
$laptop3->harga = 3000000;
echo $laptop3->dijual();
?>
