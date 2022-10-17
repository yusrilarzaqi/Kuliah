import java.util.Scanner;

/**
 * CekNilai
 */
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
      System.out.println("Semalat anda lulus!");
    } else {
      System.out.println("Maaf anda belum lulus!");
    }
  }
}
