# Mengenal Class dan Object

## Keuntungan Object Oriented Programing

- Reusabilitas
- Pengembangan program lebih cepat.
- Fleksibilitas lebih tinggi.
- Ekstensibilitas
- Less maintenance.

## Pemrograman Berorientasi Objek

- Fungsi dan data bukan menjadi dua hal yang terpisah.
- Fungsi dan data menjadi satu kesatuan yang disebut sebagai objek aktif.
- Cara Pandang program adalah serangkaian objek yang bekerjasama untuk menyelesaikan suatu problem.

## Kata Kunci OOP

- **Object** dapat berupa Instances. Harus berasal dari entitas atau konsep dunia nyata.
- **Class** adalah Template untuk membuat objek.
- **Metode**, Berfungsi untuk penaksesan atribut atau tugas tertentu.
- **Encapsulation** Menyembunyikan struktur data dan implementasi suatu class.
- **Inheritance** Memrepresentasikan keterhubungan struktural antar class.
- **Pilymorphism** Kemampuan untuk merepresentasikan 2 bentuk objek yang berbeda.

## Apakah Objek

- Semua benda yang ada di dunia nyata dapat dianggap sebagai object.
- **Contoh** : rumah, mobil, sepeda motor, gelas, komputer, meja, dll.

## Karakteristik Objek

- Setiap object memiliki state sebagai status (atribut).
- Setiap object memiliki tingkah laku (method).
- **Contoh** : object sepeda :
  - Memiliki atribut : Pedal, roda, jeruji, warna, jumlah roda.
  - Memiliki method : kecepatan menaik, kecepatannya menurun, perpindahan gigi sepeda.
- Penggambaran pemrograman berorientasi object = penggambaran pada dunia nyata.
- Pada pemrograman berorientasi object :
  - State disimpan pada variable.
  - Tingkah laku disimpan pada method.

## Apakah Class ?

- Definisi Class :
  - Merupakan template untuk membuat object.
  - Merupakan prototipe / blue prints yang mendefinisikan variable-variable dan method-method secara umum.
- Object merupakan hasil instansiasi dari suatu class.
- Process pembentukan object dari suatu class disebut dengan **_instantiation_**.
- Object disebut juga **_Instances_**.

## Atribut

- Definisi Atribut : adalah **data** yang membedakan antara object satu dengan yang lain.
- Contoh : `VolcanoRobot` _A volcanic exploration vehicle_, mempunyai atribut sebagai berikut :
  - Satatus exploring, moving, returning home.
  - Speed 1, 2, 3 dll in miles per hour.
  - Temperature 100, 120, 130 dll (in Fahrenheit degrees).
- Dalam class atribut disebut juga dengan **variable**.

## Tingkah Laku (Method)

- Tingkah laku adalah hal-hal yang bisa dilakukan oleh object dari suatu class.
- Tingkah laku dapat digunakan untuk mengubah nilai atribut suatu object, menerima informasi dari object lain, dan mengirim informasi ke object lain untuk melakukan suatu task.
- Contoh : `VolcanoRobot`
  - _Check current temperature_.
  - _Begin a survey_.
  - _Report its current location_.
- Dalam class, tinggi laku disebut juga sebagai **method**.
- **Method** adalah serangkaian statements dalam suatu class yang menghandle suatu task tertentu.
- Cara object berkomunikasi dengan object lain adalah dengan menggunakan **method**.

## Contoh : Class, Object, Attributes, dan Behavior

```java
class VolcanoRobot {
  String status;
  int speed;
  float temperature;

  void checkTemperature() {
    if (temperature > 660) {
      status = "returning home";
      speed = 5;
    }
  }

  void showAttributes() {
    System.out.println("Status: " + status);
    System.out.println("Speed: " + speed);
    System.out.println("Temmperature: " + temperature);
  }

  public static void main(String[] args) {
    VolcanoRobot dante = new VolcanoRobot();
    dante.status = "exploring";
    dante.speed = 2;
    dante.temperature = 510;

    dante.showAttributes();
    System.out.println("\nIncreasing Speed to 3.\n");
    dante.speed = 3;
    dante.showAttributes();
    System.out.println("");
    dante.temperature = 670;
    dante.showAttributes();
    System.out.println("\nChecking the temperature.\n");
    dante.checkTemperature();
    dante.showAttributes();
  }
}
```
