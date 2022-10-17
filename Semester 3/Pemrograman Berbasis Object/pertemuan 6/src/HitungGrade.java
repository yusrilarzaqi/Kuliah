import java.util.Scanner;

/**
 * HitungGrade
 */
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
