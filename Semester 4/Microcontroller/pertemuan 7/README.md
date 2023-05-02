# Timbangan Digital berbasis ATMEGA16

## Timbangan Manual

1. Timbangan manual, yaitu jenis timbangan yang bekerja secara mekanis dengan sistem pegas.
2. Biasanya timbangan jenis ini menggunakan indikator berupa jarum sebagai penunjuk ukuran massa yang telah terskala.

![Timbangan Manual](./img/1.png)

## Timbangan Digital

1. Alat digital dibuat agar mudah dioperasikan degnan merubah alat manual menjadi digital.
2. Timbangan digital, yaitu jenis timbangan yang bekerja secara elektronis.

![Timbangan Digital](./img/2.png)

### Timbangan Yang bekerja Secara Elektronis

![Timbangan Yang bekerja Secara Elektronis](./img/3.png)

Timbangan bekerja bila lempengan atas mendapatkan input tekanan, tekanan ini akan menekan pegas dan bersamaan dengan itu akan menurunkan posisi tuas potensiometer yang terpasang secara vertical.

Nilai hambatan yang terdapat pada potensiometer geser (50K) akan membuat nilai tegangan pada pin ADC(0) berubah variatif antara 0 sampai 5 Volt.

### Potensio Meter

![Potensio Meter](./img/4.png)

- Potensio Meter adalah sebuah jenis resistor yang mebatur sebuah tahanan / hambatan secara liner.
- Salah satu kelemahan utama dari potensiometer slider adalah slot terbuka rentan terhadap kotaminasi dari debu.
  - Penutup slot dapat digunakan untuk memindahkan efek kontaminasi trek resistif.

![Potensio Meter](./img/5.png)

- Potensiometer sebagai pembagi tegangan akan menghasilkan variable tegangan dari input `Vin` dibagi menjadi tegangan `V1` dan tegangan `V2` yang sebanding dengan posisi wiper di sepanjang trek.
- Nilai `I` (arus) akan sama disemua posisi wiper di sepanjang trek.

## ATMEGA16 Pins

![PDIP](./img/6.png)

1. VCC (pin 10) masukan catudaya 5V.
2. GND (pin 11, 31) merupakan **_pin Ground_**.
3. <font color="red">_Port A_ (pin 33 s/d 40) merupakan _pin input/output_ dua arah dan _pin_ masukan ADC</font>.
4. _Port B_ (pin 1 s/d 8) merupakan _pin input/output_ dua arah dan _pin_ fungsi khusus.
5. _Port B_ (pin 22 s/d 29) merupakan _pin input/output_ dua arah dan pin fungsi khusus.
6. _Port D(pin 14 s/d 21)_ merupakan pin input/output dua arah dan pin fungsi khusus
7. _RESET_ (pin 9) untuk me-reset mikrokontroler.
8. _XTAL1_ dan XTAL2 (pin 12, 13)
9. _AVCC_ (bin 30) merupakan pin masukan tegangan untuk ADC.
10. _AREF_ (pin 32) merupakan pin masukan tegangan referensi ADC.

### Cara kerja ADC (Analog to Digital Convertion)

- Analog To Digital Converter (ADC) adalah pengubah input analog menjadi kode-kode digital.
- ADC banyak digunakan sebagai komunikasi digital dan rangkaian pengukuran.
- ADC digunakan sebagai perantara antara sensor analog yang berinteraksi dengan microcontroller pengolah data digital seperti aplikasi timbangan digital.

![Cara kerja ADC (Analog to Digital Convertion)](./img/7.png)
![Cara kerja ADC (Analog to Digital Convertion)](./img/7-1.png)
![Cara kerja ADC (Analog to Digital Convertion)](./img/7-2.png)

### Diagram Blok Timbangan Digital berbasis ATMEGA16

![Diagram Blok Timbangan Digital berbasis ATMEGA16](./img/8.png)

1. Sebagai inputan berat, wadah timbangan telah dipasang sensor _potensiometer geser_ yang besar resistensinya akan berubah sesuai dengan pergeseran dikarenakan tekanan yang diterima oleh wadah timbangan diatasnya.
2. Perubahan besar resistansi akan menghubah nilai tegangan yang masuk ke mikrokontroler.
3. Besaran ini akan diolah oleh ADC dalam ATMEGA16 yang mengkonversi nilai analog ke digital dan akan diolah sesuai program yang direncanakan.
4. Berat benda terukur akan ditampilkan di LCD.

### Timbangan Digital berbasis ATMEGA16 (flowchart)

![flowchart](./img/9.png)

![Timbangan Digital berbasis ATMEGA16](./img/10.png)

### Timbangan Digital berbasis ATMEGA16 (Sourcecode)

[`main.c`](./src/main.c)
