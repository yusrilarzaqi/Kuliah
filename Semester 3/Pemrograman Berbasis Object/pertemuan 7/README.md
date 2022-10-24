# Percabangan Switch Case

Percabangan `switch` `case` sebenarnya adalah bentuk lain dari `if` `else if` `else`.
Bedanya, percabangan ini menggunakan kata kunci `switch` dan `case`.
Formatnya juga berbeda, tapi cara kerjanya sama.
Bentuk dasar dari perintah Switch Case adalah seperti berikut:

```java
switch(variable) {
  case 'A':
    // lakukan sesuatu
    break;
  case 'B':
    // lakukan ini
    break;
  default:
    // lakukan ini
}
```

## Contoh Pernerapannya

```java
import java.util.Scanner;

public class PilihLampu {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    String lampu;

    System.out.print("Inputkan Kode Warna : ");
    lampu = scan.nextLine();

    switch(lampu) {
      case "1":
        System.out.println("Lampu merah, berhenti!");
        break;
      case "2":
        System.out.println("Lampu kuning, harap hati-hati!");
        break;
      case "3":
        System.out.println("Lampu hijau, silahkan jalan!");
        break;
      default:
        System.out.println("Warna lampu salah!");
    }
    scan.close();
  }
}
```
