# books

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

## SOAL

SOAL 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
![Animation](https://github.com/user-attachments/assets/9e0e4eb4-d925-4a6e-99a8-2ef77d743459)



SOAL 2
https://www.googleapis.com/books/v1/volumes/LKLbDwAAQBAJ
![Screenshot 2025-06-09 144322](https://github.com/user-attachments/assets/99a33255-0b77-4b5c-8c02-cda0eaaaa495)



SOAL 3 
1. Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu 

JAWAB:
1.  Kode tersebut memotong 450 karakter pertama dari hasil respons API menggunakan substring(0, 450) dan menampilkannya. Jika terjadi error (misalnya respons terlalu pendek atau gagal ambil data), catchError akan menangkapnya dan menampilkan pesan “An error occurred”.

2.   

![S33](https://github.com/user-attachments/assets/0dd9ac70-396d-4001-803e-ab013184857a)


SOAL 4
Langkah 1:
Membuat tiga fungsi async (returnOneAsync, returnTwoAsync, returnThreeAsync) yang masing-masing delay 3 detik menggunakan await Future.delayed(...), lalu mengembalikan angka 1, 2, dan 3.

Langkah 2:
Menjalankan ketiga fungsi tersebut secara berurutan dalam fungsi count(), menggunakan await untuk menunggu tiap hasil, menjumlahkan hasilnya (total = 6), dan memanggil setState() untuk menampilkan ke UI.

🕒 Total waktu proses: 9 detik (3 + 3 + 3).
![s4](https://github.com/user-attachments/assets/768dbb36-2ef4-4f3a-af3a-db9ec159d8b0)


SOAL 5
1.  Kode Completer (getNumber & calculate):
Fungsi getNumber() membuat sebuah "janji" (Future) dan langsung mengembalikannya.
Fungsi calculate() berjalan di latar belakang dan menunggu selama 5 detik.
Setelah 5 detik, calculate() menepati janji tersebut dengan memberikan hasil 42.
Intinya, ini adalah cara manual untuk mengontrol kapan sebuah Future selesai dan apa hasilnya.

2.  Kode onPressed:
Saat tombol ditekan, panggil fungsi getNumber() yang mengembalikan "janji".
Gunakan .then() untuk menunggu janji tersebut ditepati.
Ketika janji ditepati (setelah 5 detik), ambil hasilnya (42) dan tampilkan di layar menggunakan setState.


![s5](https://github.com/user-attachments/assets/a08cc6b3-6052-4f2a-aa29-4c9bcb31ce86)


SOAL 6

Kode yang baru ini menambahkan penanganan error (error handling).

1.  Kode calculate()
Sekarang menggunakan blok try-catch.
Jika terjadi error di dalam try, aplikasi tidak akan crash.
Sebaliknya, blok catch akan dijalankan, yang akan menyelesaikan "janji" (Future) dengan status gagal menggunakan completer.completeError().
2.  Kode onPressed()
Sekarang memiliki blok .catchError().
Blok ini akan dieksekusi hanya jika "janji" (Future) gagal (karena completer.completeError() dipanggil).
Ini memungkinkan Anda menampilkan pesan error yang jelas kepada pengguna ("An error occurred") daripada aplikasi macet.


![s6](https://github.com/user-attachments/assets/e6659763-a5cc-4728-a858-9c6152be1061)











