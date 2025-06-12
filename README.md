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

📎 URL:
https://www.googleapis.com/books/v1/volumes/LKLbDwAAQBAJ

📸 Hasil:
![Screenshot 2025-06-09 144322](https://github.com/user-attachments/assets/78ede47e-05d1-4273-9254-734b064ac76a)



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


SOAL 7

📸 Hasil:


![s7](https://github.com/user-attachments/assets/dd454059-aa2d-4fb7-9ae5-b0742fbaaa37)


SOAL 8

Perbandingan FutureGroup dan Future.wait:

🔹 Langkah 1: Menggunakan FutureGroup
Pada pendekatan ini, digunakan FutureGroup yang berasal dari package eksternal bernama async. Konsepnya adalah kita dapat menambahkan beberapa proses asynchronous (Future) satu per satu secara dinamis, seiring berjalannya program. Pendekatan ini berguna saat daftar proses asynchronous belum diketahui semuanya di awal. Setelah seluruh proses ditambahkan, kita perlu memanggil close() untuk memberi tahu bahwa tidak akan ada Future lain yang ditambahkan lagi. Setelah itu, hasil dari semua proses dapat diproses secara serentak.

Keunggulan FutureGroup:

Dapat menambahkan proses asynchronous secara bertahap (dinamis).

Lebih fleksibel untuk kebutuhan kompleks, misalnya ketika Future muncul dari perulangan, kondisi tertentu, atau alur logic yang dinamis.

Memberikan kontrol lebih terhadap kapan semua proses dianggap selesai.

Cocok digunakan ketika jumlah atau jenis proses tidak diketahui sejak awal.

Namun, karena bukan bagian dari pustaka inti Dart, penggunaan FutureGroup memerlukan tambahan package eksternal (async) dan import khusus dalam proyek.

🔹 Langkah 4: Menggunakan Future.wait
Pendekatan ini menggunakan Future.wait, yang merupakan fitur bawaan dari Dart. Di sini, seluruh daftar proses asynchronous harus sudah diketahui sejak awal, kemudian dijalankan secara paralel bersamaan. Hasilnya akan dikembalikan dalam bentuk list setelah semua proses selesai.

Keunggulan Future.wait:

Penulisan lebih sederhana dan lebih langsung (langsung sekaligus).

Cocok digunakan saat semua proses asynchronous sudah tersedia di awal.

Tidak perlu package tambahan karena merupakan bagian dari library inti Dart.

Lebih ringkas dan mudah dipahami, terutama untuk skenario umum.

Namun, kekurangannya adalah tidak bisa menambahkan proses tambahan setelah fungsi dipanggil. Jadi kurang cocok untuk kasus yang memerlukan fleksibilitas.

SOAL 9

📸 Hasil:

![s9](https://github.com/user-attachments/assets/5a290144-31ca-46d9-b53b-ffb712b04204)


SOAL 10

Penjelasan untuk langkah 1:
Masih sama seperti Soal 9 yaitu menampilkan error delay dengan waktu 2 detik dan menampilkan ('Something terrible happened!') 

Penjelasan untuk langkah 4:
Apa Hasilnya?

Ketika Anda menjalankan kode ini dan menekan tombol "GO!":

Aplikasi akan menampilkan "Something terrible happened!" di layar setelah sekitar 2 detik.
Di konsol debug, Anda akan melihat teks "Complete".
Indicator loading (CircularProgressIndicator) akan muncul sesaat setelah tombol ditekan dan kemudian menghilang setelah 2 detik.

Dibawah ini bukti hasilnya

📸 Hasil:


![s10](https://github.com/user-attachments/assets/cac8659b-2e58-4f67-ad0b-19494d43b128)


SOAL 11

Tambahkan nama panggilan Anda pada properti title
"title: const Text('Current Location - Faqih'),"











