
'Project : LED FlipFlop
'Micro   : ATmega32
'X-Tal   : 16 MHz / 16000000 Hz
'By      : Wayan Dadang

$regfile = "m32def.dat"    'Microcontroller yang kita pakai, jika menggunakan Atmega8535 cara manggilnya $regfile = "8535def.dat"
$crystal = 16000000        'Crystall Clock kita pakai 16 MHz

'Sekarang kita deklarasikan PORTB sebagai OUTPUT LED
Config Portb = Output

'Sekarang kita mulai untuk memprogram menyalakan LED-nya dengan Looping
Do

    'Ini cara pemrograman yang paling singkat dan mudah, jadi kerja dari program ini menyalakan LED Kuning dan Hijau secara
    'bergantian secara terus menerus, programnya simpel sekali. 

    PortB = &B00000001  'Nah disini kita menggunakan kode biner saja biar tidak susah, berhubung PORTB ada 8,
                        'maka ada 8 dan B adalah untuk kode biner, karena PORTB.0 LED kuning, dan menyala terlebih dahulu,
                        'maka angka paling ujung yang kita jadikan 1 atau PORTB.0 kita kirim logika 1, sedangkan yang lain
                        'tetap 0 agar tidak menyala.
    Waitms 500   'Ini waktu delay/tunda selama 0,5 detik

    portb = &B00000010  'Dan, kode ini kita menyalakan LED Hijau yang ada di PORTB.1, jadi kita mengirim logika 1 pada biner
                        'kedua agar LED hijau bisa menyala dan PORTB lainya tetap mati.
    Waitms 500   'Ini waktu delay/tunda selama 0,5 detik



Loop