Struktur Database

Database dari program yang saya dibuat menggunakan MySQL. Saya membuat database bernama midterm yang terdiri dari tiga table, yaitu:
1. comments yang berisi (id, username, created_at, video_id(foreign key untuk ke video_thumbnail) dan comment)
2. product_list yang berisi (id, link_product, title, price, product_img, product_video_id(foreign key untuk ke video_thumbnail))
3. video_thumbnail yang berisi (id dan url(img))

API

Terdapat tiga API yang digunakan dalam aplikasi ini yaitu:
1. API GET yang berfungsi untuk membuat routing halaman utama dan mengambil data dari tabel video_thumbnail
Berikut urutan pemanggilan datanya : GET video_thumbnail -> render landing-page.ejs -> show data halaman landing-page

2. API GET yang digunakan untuk membuat routing halaman details dan untuk mengambil data dari tiga tabel berbeda, yaitu video_thumbnail, comments dan juga product_list
Berikut urutan pemanggilan datanya : GET video_thumbnail -> comments -> product_list -> render video-details -> show data halaman video-details

3. API POST yang digunakan untuk mengirim form komentar ke server dan melakukan redirect ke halaman video_details
Berikut urutan pengiriman datanya POST comment -> masuk ke tabel komentar -> redirect ke video_details

Cara Menjalankan Aplikasinya

1. Dibutuhkan sql server dan juga mysql workbench untuk export dan menjalankan servernya
	a. Buka MySQL Workbench
	b. Pada menu paling atas, pilih server
	c. Pilih data export
	d. Pada Option, pilih "Export to Self-Contained File"
	e. Pilih file  pada folder database yang sudah saya buat
	f. Start import, dan tunggu hingga selesai
	g. Jika sudah
2. Buka app.js
3. Pada terminal ketikan npm install
4. 