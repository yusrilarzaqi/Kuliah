#include <iostream>
#include <string>
using namespace std;

int main() {
  string name;
  int jam, total;

  cout << "Masukan Nama Anda : "; cin >> name;
  cout << "Masukan Jam kerja Anda : "; cin >> jam;

  if (jam < 48) {
    total = jam * 2000;
  }else if (jam >= 48 ) {
    total = (48 * 2000) + ((jam - 48) * 3000);
  }

  cout << "Jumlah Gaji dari Karyawan " << name << " adalah " << total << endl;

  return 0;
}
