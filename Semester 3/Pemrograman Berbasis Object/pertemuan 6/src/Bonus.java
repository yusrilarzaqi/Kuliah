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
