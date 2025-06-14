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


SOAL 12

🔹 Tambahkan delay di sini agar animasi loading terlihat
await Future.delayed(const Duration(seconds: 3));

🔹 Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

Anda tidak akan mendapatkan koordinat GPS ketika menjalankan aplikasi Flutter di browser (web) menggunakan plugin geolocator.

Mengapa demikian?
Plugin geolocator dirancang untuk berinteraksi dengan API lokasi asli (native) dari perangkat seluler (seperti Android dan iOS) atau desktop. Browser memiliki API lokasi sendiri (disebut Geolocation API, bagian dari JavaScript), tetapi plugin geolocator tidak secara langsung terintegrasi penuh atau mendukung semua fungsi API browser tersebut. Oleh karena itu, kemampuan untuk mengakses lokasi melalui browser dari aplikasi Flutter yang dikompilasi untuk web akan sangat terbatas atau seringkali tidak berfungsi sama sekali melalui plugin geolocator.

Dokumen praktikum Anda juga menyarankan untuk menjalankan project di device atau emulator (bukan browser) untuk hasil yang akurat.

📸 Hasil:


![s12](https://github.com/user-attachments/assets/3cf261fb-731e-4c07-bcf4-d22738fc7ef0)

SOAL 13

Perbedaan UI:
Secara visual, perbedaan UI mungkin tidak langsung terlihat signifikan bagi pengguna akhir jika kedua praktikum (yang menggunakan setState secara eksplisit vs. yang menggunakan FutureBuilder) diimplementasikan dengan benar. Keduanya akan menampilkan CircularProgressIndicator saat fetching data, lalu menampilkan teks posisi setelah data tersedia.

Namun, ada perbedaan mendasar dalam cara UI diperbarui dan dikelola:

Praktikum sebelumnya (tanpa FutureBuilder): Anda secara manual memanggil setState() di dalam .then() dari Future untuk memperbarui variabel myPosition dan memicu rebuild UI. Ini berarti Anda secara eksplisit mengelola state dan memperbarui UI.
Praktikum ini (dengan FutureBuilder): FutureBuilder mengelola state Future-nya sendiri. Anda tidak perlu memanggil setState() secara manual untuk memperbarui UI ketika Future berubah status (misalnya, dari waiting ke done). FutureBuilder akan secara otomatis membangun ulang bagian UI yang dibutuhkan berdasarkan ConnectionState dari Future yang diberikan.

Mengapa demikian?

Perbedaan ini terjadi karena penggunaan widget FutureBuilder. FutureBuilder dirancang khusus untuk memudahkan manajemen Future bersamaan dengan pembaruan UI. Ia memiliki status Future sendiri , sehingga Anda dapat mengabaikan penggunaan setState untuk trigger rebuild UI ketika Future diperbarui.



Dengan kata lain, FutureBuilder menyediakan pola yang lebih efisien, bersih, dan reaktif untuk menampilkan data dari Future karena ia secara otomatis menangani berbagai status koneksi (waiting, done, error) dan membangun ulang UI yang sesuai, mengurangi boilerplate code yang terkait dengan manajemen setState manual.

📸 Hasil:

![s13](https://github.com/user-attachments/assets/f155462a-7c7f-42a8-ab10-c31be7ce2b22)

soal 14

Ya, ada perbedaan UI yang signifikan, terutama dalam skenario di mana Future mengalami kegagalan atau error. 

Sebelum Langkah 5 (tanpa penanganan error eksplisit di ConnectionState.done):
Jika getPosition() mengalami error (misalnya, karena masalah GPS atau izin yang belum ditangani sepenuhnya), ketika FutureBuilder mencapai ConnectionState.done, snapshot.hasError akan bernilai true. Namun, karena tidak ada penanganan eksplisit untuk snapshot.hasError pada titik ini, FutureBuilder akan mencoba menampilkan Text(snapshot.data.toString()). Ini dapat menyebabkan tampilan yang tidak informatif (misalnya, null jika snapshot.data kosong) atau bahkan crash aplikasi jika snapshot.data benar-benar null dan Anda mencoba memanggil .toString() padanya.

Setelah Langkah 5 (dengan penanganan error):
Dengan penambahan kode dari Langkah 5, ketika Future mencapai ConnectionState.done, ia akan terlebih dahulu memeriksa apakah snapshot.hasError bernilai true.  Jika ada error, UI akan menampilkan pesan yang jelas dan ramah pengguna: "Something terrible happened!".  Ini memberikan umpan balik yang lebih baik kepada pengguna tentang apa yang salah, dibandingkan dengan tampilan yang kosong atau crash.

Mengapa demikian?
Perbedaan ini terjadi karena Langkah 5 secara eksplisit menambahkan logika penanganan error di dalam FutureBuilder ketika Future telah selesai (ConnectionState.done).  Sebelum Langkah 5, kode hanya berasumsi bahwa Future akan selalu berhasil dan memiliki data saat selesai.  Dengan penambahan if (snapshot.hasError) { return Text('Something terrible happened!'); }, kita sekarang secara proaktif memeriksa dan menampilkan pesan error kepada pengguna jika Future gagal, membuat aplikasi lebih tangguh dan informatif. 

📸 Hasil:

![s14](https://github.com/user-attachments/assets/5187a1f4-752b-4ee7-8304-9129f4f524c8)








