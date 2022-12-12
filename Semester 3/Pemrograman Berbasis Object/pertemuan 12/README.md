# Menggunakan Modul Scanner di JAVA

```java
import java.util.Scanner;

public class Input_form {
  public static void main(String[] args) {
    // Deklarasi variable
    String nama, alamat;
    int usia, gaji;
    Scanner input = new Scanner(System.in);

    System.out.println("Pendataan Karyawan PT.XYZ");

    // input user dimasukan ke variable
    System.out.print("Nama Karyawan : ");
    nama = input.nextLine();
    System.out.print("Alamat : ");
    alamat = input.nextLine();
    System.out.print("Usia");
    usia = input.nextLine();
    System.out.print("Gaji : ");
    gaji = input.nextLine();

    // Menampilkan apa yang sudah disimpan di variable
    System.out.println("Nama Karyawan : " + nama);
    System.out.println("Alamat : " + alamat);
    System.out.println("Usia : " + usia + " tahun");
    System.out.println("Gaji : Rp " + gaji);
  }
}
```

[Input_form](./src/Input_form.java)
