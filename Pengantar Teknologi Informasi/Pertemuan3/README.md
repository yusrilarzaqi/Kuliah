# Pengantar Teknologi Informasi

## Definisi

- **Bahasa Pemrograman** merupakan notasi yang dipergunakan unutk mendeskripsikan proses komputasi dalam format yang dapat dibaca.
- **Bahasa Natural** dirancang untuk memfasilitasi komunikasi antar manusia.
- **Bahasa Pemrograman** dirancang untuk memfasilitasi komunikasi antara manusia dengan komputer.


## Tinggkatan Bahasa Pemrograman

- **Bahasa Mesin** (*Mechine Language*)
- **Bahasa Rakitan** (*Assemby Language*)
- **Bahasa Tinggkat Tinggi** (*High Level Laguages*)


## Bahasa Mesin

- Diwali dengan ENIAC dan EDVAC, komputer generasi pertama yang dikembangkan ileh Jhon W. Haudhy dan Jhon Van Nueumann pada Agustus 1944
- **ENIAC** Menggunakan *decimal arithmetic*.
- **EDVAC** menggunakan *binary arithmetic*.
- Mengalami perubahan sangat besar setelah 4 dekade sejak EDVAC.

## Bahasa Rakitan

- Dimulai sejak awal 1950
- Disebut sebaagai *symbolic mechine languages*
- Symbol yang dipergunakan unutk memfasilitasi aspek pemrograman:
  - *Mnemonic Opcodes*
  - *Symbolic Names*
  - *Memory Address Automatic Assignment*
  - *Addressing Modes*

## High Level Language

- Dimulai sejak akhir 1950
- Memiliki kemampuan mempresentaikan algoritma yang kompelks.
- *Human-oriented readability*
- *Machine-Independent*

## Perbandingan

- Mechine Language
110011001 000100011
001010011 110101001
101011011 101000010

- Assembly 

```vim
LOAD A
ADD  B
STO  C
```

- High Level Language (C)
```vim
int a = b * c;
```

## Sejarah Bahasa Pemrograman

- 1830-1840, Charles Babbage, Analyichic
- Programer pertama: Ada Byron Countess Of Lovelance
- 1940, Jhon von Neumann, komputer pertama dengan stored programs

## Era 1950an

- FORTRAN (**FOR**mula **TRAN**slation), 1954-1957, IBM, Jhon Backus, arrays, loops. if-statements.
- COBOL (**CO**mmon **B**usiness-**O**riented **L**anguage), 1959-1960, US DOD, Grace Hopper, records, output formating.
- Agol60 (**ALGO**ritma **L**anguage), 1958-1960 structured statements, begin-end block, type declarations, recursion, pass-by-value parameters.
- LISP (**LIS**t **P**rogramming), akhir 1959s, MIT, Jhon McCarthy, functions and garage collection.
- APL (**A** **P**rogramming **L**anguague), ahkir 1950s, Harvard University dan IBM, K. Ivenrson, arrays and matrices.

## Era 1960an

- PL/I, 1963-1964, IBM, concurrency, exception handling.
- Alogl68, 1963-1968, general type system, orthogonal laguague.
- SNOBOL (**S**tri**N**g **O**riented sym**BO**lic **L**anguague), awak 1960an, Bell Labs, R. Griswold, string processing, pattern matching.
- SImula67, 1965-1967, Norwegian Computing Centerm Kristen Nygaard dan le-Johan Dahl, simulations, classes.
- ISWIM, Patter Landin, functional laguage murni.
- BASIC, 1965 Dartmouth Collage, Jhon Kemeny dan Thomas Kurtz, bahasa intructinal yang sederhana dan iteraktif.

## Era 1970an

- Pascal 1971, Niklaus Wirth, bahasa instruktual sederhana dengan pernyataan terstruktur.
- C 1972, Bell Labs, Dennis Ritchiem type system sederhana dan runtime environment.
- CLU 1974-1977, MIT, Barbara Lliskov, pendekatan konsisten unutk mekanisme abstraksi, data abstraction, control abstraction, and exception handling.
- Euclid 1976-1977, University of Totonto, abstract data types, program verification.
- Mesa 1976-1979, Xerox, module facility, exception handling, concurrency.

## Era 1980an

- Ada 1983, DOD, abstract data types, concurrency.
- Modula-2 1982, Niklaus Wirth, modules, coroutine.
- Smalltak 1980, Xerox, Alan Kay and Dan Ingalls, a complate object-oriented programming system.
- C++ 1980, Bell labs, Bjarne Stroustrup, classes, library.
- Scheme 1975-1978, MIT, Greald Sussman and Guy Stlee, vesi baru dari LISP.
- ML 1978, Edinburgh University, Robin Milner, a synax and type checking similar to pascal.
- Prolog 1972-1980, A. Colmerauer, Mathematical logic.

## Era 1990an

- Java 1995, Gosling, Bahasa pertama yang dikeluarkan dengan API yang sudah dikembangkan.
- Bahasa-bahasa Scripting seperti: Perl, Tcl, Javascript, VBScript, Python, dan PHP.

## Era 2000an

- .NET framework yang dikembakan oleh microsoft.
- Mono yang mengadopsi .NET fremwork. Awalnya dikembangkan pada platform Linux.

## Interpreter & Compier

- **Interpreter** merupakan sebuah program yang dapat mengerti sebuah bahasa dan mengeksekusi program yang ditulis dengan basha tersebut.
- **Compier** merupakan program yang menterjemahkan program yang ditulis dengan sebuah bahasa yang ditulis dengan menjadi program execute yang ditulis oleh bahasa lain contoh:.exe, .out

## Semantics & Syntax

- **Semantics** dari bahas pemrograman menspesifikasikan arti dari program.
- **Syntax** dari bashas pemrograman memspesifikasikan struktur dari program.

---

- **Semantics**
  - Expression evaluating 
  - Executing statements in TRUE conditions block
  - Oprionaly, execute statements in FALSE conditions block
  - Mendeskirpsikan bagaimana program berjalan.
  - Dasar mekanisme abstraksi pada bahasa pemrograman adalah penggunaan nama atau identifiers
  - Pada kebanyakan bahasa pemrograman, variiabel, kostanta, dan prosedur dapat diberikan nama yang didefinisikan opeh programmer.

```vim
if x > 2 Then
  z := x * 5;
Else
  z := x;
```

- **Synatx**
  - Keyword
  - Expression
  - Statements

## Binding

- Process mengalosikan atribut ke nama disebut dengan **Binding**


```vim
const phi = 3.14;
var x : integer;
x:=2;
```

## Binding Time

- Language definition time: Pada saatt pendeklarasikan.
- Language implementation time : Pada saat penggunaan.
- Translation time : Tipe-tipe dari variable.
- Link time : Pada saat pemanggilan fungsi external.
- Load time : lokasi global variable.
- Executing time : Nilai dari variabel, lokasi local variable.

## Deklarasi 

- **Deklarasi** merupakan prinsip dalam menyediakan binding.
- umumnya diasosiasikan dengan sebuah block.
- Local, deklarasi yang ditempatkan didalam block.
- Global, deklarasi yang ditempatkan diluar block.

```python
def kuadrat(x):
  hasil = x * x
  return hasil
  # hasil disini adalah variabel local

tampil = kuadrat(10)
# tampil adalah variabel global
print(tampil)
```

## Ruang linkup (Scope)

```vim
int main(){
  int x = 0;
  // scope global yang dapat diakses

  if(x == 0){
    int y = 10;
    // scope local yang dapat diakses selama masih didalam kurung kurawal
  }

  return 0;
}
```

## Syntax

- **Lexical Structure** menspesifikasikan bagaimana kata dibentuk dari karakter.
- **Syntacic Structure** menspesifikasian bagaimana kalimat dibentuk dari kata.
- Characters -> Word -> Stentfes

## Lexical Structure

- Pada lexical structure, bahasa pemrograman menggunakan tokes untuk membentuk frammatical categories yang akan membentuk blok-blok syntax
- Standar tokens:
  - Keywords, *if, while, for, switch*
  - Literals, seperti 10(numeric literal) atau 'A'(String literal)
  - Special Symbols, umumnya dippergunakan unutk membentuk operator.
  - Identifiers, umumnya dipergunakan untuk menamai routine (prosedur & fungsi)
  - Comments, baris program yang tidak akan dieksekusi.

## Syntactic Structure

- Menggunakan notasi *Backus-Naur From (BNF)* unutk definisi formal.
- contoh:
```vim
BINARY:
  binaryDigits -> 0
  binaryDigits -> 1
  binaryDigits -> 0|1
INTEGER:
  integer -> digit|interger digit
  digit -> 0|1|2|3|4|5|6|7|8|9
```
