<!DOCTYPE html>
<html lang="en">

<head>
  <title>Kalkultor Sederhana</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./style.css" />
</head>

<body>
  <?php
  if (isset($_POST['hitung'])) {
    $bil1 = $_POST['bil1'];
    $bil2 = $_POST['bil2'];
    $operasi = $_POST['operasi'];

    switch ($operasi) {
      case 'tambah':
        $hasil = $bil1 + $bil2;
        break;
      case 'kurang':
        $hasil = $bil1 - $bil2;
        break;
      case 'kali':
        $hasil = $bil1 * $bil2;
        break;
      case 'bagi':
        $hasil = $bil1 / $bil2;
        break;
    }
  }
  ?>
  <div class="kalkulator">
    <h4 class="judul">Kalkulator Sederhana</h4>
    <form method="POST" action="./">
      <input type="text" name="bil1" class="bil" placeholder="Bilangan ke 1" required>
      <input type="text" name="bil2" class="bil" placeholder="Bilangan ke 2" required>
      <select class="opt" name="operasi">
        <option value="tambah">+</option>
        <option value="kurang">-</option>
        <option value="kali">x</option>
        <option value="bagi">/</option>
      </select>
      <input type="submit" name="hitung" class="tombol" />
      <a href="./" style="text-decoration: none;"><input type="button" value="Reset" class="tombol"></a>
    </form>

    <?php if (isset($_POST['hitung'])) : ?>
      <input type="text" value="<?= $hasil ?>" class="hasil" readonly />
    <?php else : ?>
      <input type="text" value="0" class="hasil" readonly />
    <?php endif ?>
  </div>
</body>

</html>
