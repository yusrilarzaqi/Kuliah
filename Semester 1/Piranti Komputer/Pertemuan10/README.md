# Pertemuan 10 ISA, PCI, SCSI

## Struktur Bus

Terdiri dari saluran data, saluran alamat, dan saluran kontrol.

1. Saluran data, merupakan saluran data yang memberikan lintasan bagi perpindahan dari antara dua modul sistem.
2. Saluran alamat, digunakan untuk menandakan sumber atau tujuan data pada bus data. Misalnya, bila CPU akan membaca sebuah word data dari memory data dari memori, maka CPU akan menaruh alamat word yang dimaksud pada saluran alamat.
3. Saluran kontrol, digunakan untuk mengontrol akses ke saluran alamat di penggunaan data. Jenis bus yang beredar di pasaran saat ini adalah PCI, ISA, dan SCSI.

## BUS ISA (Industry standard architecture)

adalah sebuah arsitektur bus dengan bus data selebar 8 bit dan 16 bit.

ISA merupakan bus dasar dan paling umum digunakan dalam komputer IBM pc.

- ISA 8 bit
  - Kecepatan bus ini adalah 8.33 MHz, karena memiliki bandwidth 8 bit, maka transfer rate maksimum yang dimilikinya adalah 8.33 Mbps.

- ISA 16 bit
  - adalah sebuah bus isa yang memiliki bandwidth 16 bit. Sehingga mengizinkan transfer rate dua kali lebih cepat di bandingkan dengan isa 8 bit pada kecepatan yang sama.

## BUS PCI (Periperal Component Interconnect)

Bus PCI merupakan bus yang tidak tergantung pada proses dan berfungsi sebagai bus pripheral.

Standar PCI adalah 64 saluran data pada kecepatan 33MHz, laju transfer data 263MBps atau 2.112Gbps.

PCI ini dikembangkan oleh inter corporation dan beberapa perusaan  lain pada tahun 1992.

## Tujuan dibentuknya bus PCI

adalah untuk mengantikan isa/eisa yang sebelumnya digunakan dalam komputer IBM PC atau kompatibelnya.

Bus PCI masih digunakan sampai sekarang hingga keluar versi terbarunya yaitu PCI Express.

## Fungsi Bus PCI

***Fungsi PCI*** adalah slot untuk menambahkan peripheral tambahan yang belum terpasang pada motherboard, contohnya untuk pemasangan VGA card atau sound card.

BUS PCI ini memiliki kinerja tinggi untuk sistem I/O berkecepatan tinggi. Bus ini berjalan pada kecepatan 33MHz dengan lebar lajur 32-bit

## Jenis-jenis PCI

1. Slot PCI-E x16, yaitu slot untuk kartu grafis (VGA) PCI-Ex 16 pada motherboard mulai digunakan saat motherboard dengan prosesor LGA 777 untuk prosesor pentium 4 dan celeron
2. Slot AGP, slot untuk kartu grafis (VGA) AGP yang digunakan motherboard versi lama seperti LGA 478 dan pentium 3, slot ini sudah jarang digunakan dikarenakan slot ini digunakan oleh motherboard versi lama.
3. Slot PCI-E X1, hampir sama kegunaannya dengan slot PCI, tetapi belum banyak menggunakan slot ini, dikarenakan slot ini hanya memiliki satu jalur:(x1 memiliki jalur), sehingga slot ini lebih sering digunakan untuk perangkat atau device lainnya.

## SCSI (Small Computer System Interface)

Adalah sebuah antar muka bus berkinerja tinggi yang didefinisikan oleh Amerika. Yang digunakan untuk menangani perangkat I/O, atau perangkat media penyimpanan peerangkat yang umum menggunakan SCSI adalah harddisk, CD-ROM, scanner atau  printer.

- Keungulan
  - SCSI bisa digunakan pada komputer server karena kemampuannya yang cepat dan kemampuan multitaksing yang baik.
  - SCSI berbutar sekitar 7200 sampai 10000 rpm dan teknologi sekarang SCSI mampu berputar hingga 15000 rpm.

## Tipe Hardisk SCSI

ada beberapa tipe yaitu SCSI1, SCSI2, ultra2 SCSI, ultra3 SCSI.

1. SCSI1, memiliki dua macam kecepatan yaitu 3.Mbps atau 5Mbps. Keduanya bekerja secara asinkron dan panjang kabelnya bisa mencapai 6 meter.
2. SCSI2, diluncurkan pada tahun 1989 yang memiliki dua macam yaitu
  - Fast SCSI, memiliki kecepatan 10Mbps, 8 bit bus width.
  - WIde SCSI. memiliki kecepatan 20Mbps. 16 bit bus width.
3. Ultra2 SCSI, diluncurkan pada tahun 1997 dengan fitur LVD (low voltage differential), memiliki 2 variasi yaitu:
  - Ultra2 SCSI, memiliki kecepatan 40Mbps dengan bus width tetap 8 bit.
  - Ultra wide SCSI, memiliki kecepatan 80Mbps dengan bus widthnya 16 bit. keduanya mampu menggunakan kabel sampai dengan 12 meter.
4. Ultra3 SCSI. pada versi ini menambahkan fitur CRC, error checking, Ultra3 disebut juga ultra16 karena kecepatannya 160Mbps. Semakin putarannya sebuah harddisk maka data didalamnya semakin mudah untuk diakses.

