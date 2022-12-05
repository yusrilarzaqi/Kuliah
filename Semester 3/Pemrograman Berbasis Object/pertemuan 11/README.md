# Menggunakan Objek di Java

```java
public class Penjualan {
  private String nama;
  private int harga, jumlah, total;

  public Penjualan(String _nama, int _harga, int _jumlah) {
    nama = _nama;
    harga = _harga;
    jumlah = _jumlah;
  }

  public int total() {
    return harga * jumlah;
  }

  public void tampil() {
    System.out.println("Nama Barang : " + nama);
    System.out.println("Harga Barang : " + harga);
    System.out.println("Jumlah yang Dibeli : " + jumlah);
    System.out.println("------------------------------+");
    System.out.println("Total Harga : " + total());
    System.out.println("===============================");
  }

  public static void main(String[] args) {
    Penjualan resi = new Penjualan("Roti Kumis", 2000, 12);
    resi.tampil();
  }
}
```
