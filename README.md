📚 Flutter Asynchronous Programming
Repositori ini berisi tugas-tugas praktikum Pemrograman Asynchronous pada Flutter, berdasarkan materi perkuliahan Aplikasi Mobile Lanjutan.

🚀 Getting Started
Proyek ini merupakan titik awal untuk memahami konsep asynchronous programming dalam Flutter. Setiap soal berisi penjelasan, cuplikan kode, serta hasil output berupa screenshot atau GIF.

📝 Daftar Soal



✅ Soal 1
Tambahkan nama panggilan Anda pada judul aplikasi sebagai identitas hasil pekerjaan Anda.

📸 Hasil:
![Animation](https://github.com/user-attachments/assets/9e0e4eb4-d925-4a6e-99a8-2ef77d743459)


✅ Soal 2
Ambil dan tampilkan data buku dari endpoint berikut:

📸 Hasil:
https://www.googleapis.com/books/v1/volumes/LKLbDwAAQBAJ



✅ Soal 3
Kode memotong 450 karakter pertama dari hasil respons API menggunakan substring(0, 450) untuk membatasi tampilan teks. Jika terjadi error (misalnya data terlalu pendek atau gagal ambil data), blok catchError akan menangkap error tersebut dan menampilkan pesan "An error occurred".

Capture hasil praktikum Anda berupa GIF:
📸 Hasil:
![S33](https://github.com/user-attachments/assets/0dd9ac70-396d-4001-803e-ab013184857a)



✅ Soal 4
Langkah 1:
Buat tiga fungsi async:

returnOneAsync

returnTwoAsync

returnThreeAsync
Masing-masing memiliki delay 3 detik menggunakan await Future.delayed(...), lalu mengembalikan nilai 1, 2, dan 3.

Langkah 2:
Jalankan fungsi tersebut secara berurutan dalam fungsi count(). Gunakan await untuk menunggu hasil dari masing-masing fungsi, kemudian jumlahkan total (hasil akhir: 6) dan tampilkan di UI menggunakan setState().

🕒 Total waktu proses: 9 detik (3 + 3 + 3)

📸 Hasil:
![s4](https://github.com/user-attachments/assets/768dbb36-2ef4-4f3a-af3a-db9ec159d8b0)


✅ Soal 5
1. Kode Completer (getNumber & calculate):
getNumber() membuat sebuah Future menggunakan Completer, dan langsung mengembalikannya.

calculate() menjalankan proses delay selama 5 detik, lalu menyelesaikan janji tersebut dengan nilai 42.

Teknik ini memberi kontrol manual atas penyelesaian sebuah Future.

2. Kode onPressed:
Ketika tombol ditekan, getNumber() dipanggil dan mengembalikan Future.

Gunakan .then() untuk menunggu hasilnya.

Setelah 5 detik, hasil (42) didapat dan ditampilkan menggunakan setState().

📸 Hasil:
![s5](https://github.com/user-attachments/assets/a08cc6b3-6052-4f2a-aa29-4c9bcb31ce86)



✅ Soal 6
Pada soal ini, ditambahkan penanganan error (error handling) ke dalam kode:

1. Kode calculate()
Menggunakan blok try-catch.

Jika error terjadi, maka ditangani dan Completer akan menyelesaikan Future-nya dengan status error menggunakan completer.completeError().

2. Kode onPressed()
Memiliki .catchError() untuk menangani error dari Future.

Dengan ini, pengguna dapat menerima pesan error seperti "An error occurred", dan aplikasi tetap stabil.

📸 Hasil:
![s6](https://github.com/user-attachments/assets/e6659763-a5cc-4728-a858-9c6152be1061)














