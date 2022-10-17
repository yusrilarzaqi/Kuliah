# Fungsi Percabangan `if` di Java

## Fungsi `if`

```java
import java.util.Scanner;

public class Bonus {
  public static void main(String[] args) {
    int belanja = 0;
    
    Scanner scan = new Scanner(System.in);
    
    System.out.print("Total Belanja : Rp.");
    
    belanja = scan.nextInt();

    if (belanja >= 100_000) {
      System.out.println("Selamat anda mendapatkan Sebuah bonus belanja");
    }

    System.out.println("Terimakasih Sampai Jumpa Lagi");
  }
}
```

## Syntax `if` and `else`

```java
import java.util.Scanner;

public class CekNilai {

  public static void main(String[] args) {
    int nilai;
    String nama;
    Scanner scan = new Scanner(System.in);

    System.out.print("Nama : ");
    nama = scan.nextLine();
    System.out.print("Nilai : ");
    nilai = scan.nextInt();

    if (nilai > 75) {
      System.out.println("Semalat " + nama + " lulus!");
    } else {
      System.out.println("Maaf " + nama + " belum lulus!");
    }
  }
}
```

## Syntax `if`, `else if`, and `else`

```java
import java.util.Scanner;
public class HitungGrade {

  public static void main(String[] args) {
    int nilai;
    String grade;
    Scanner scan = new Scanner(System.in);

    System.out.print("Inputkan Nilai : ");
    nilai = scan.nextInt();

    if (nilai >= 90) {
      grade = "A";
    } else if (nilai >= 80) {
      grade = "B";
    } else if (nilai >= 70) {
      grade = "C";
    } else if (nilai >= 60) {
      grade = "D";
    } else if (nilai >= 50) {
      grade = "E";
    } else {
      grade = "F";
    }

    System.out.println("Grade " + grade);
  }
}
```


