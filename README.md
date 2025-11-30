# LAPORAN TUGAS UJIAN TENGAH SEMESTER

## Aplikasi Continent Store (Katalog Produk Elektronik)

---

## IDENTITAS MAHASISWA

Nama: Reynaldi Continenta Putra  
NIM: 230102116  
Kelas: IF23B  
Mata Kuliah: Pemrograman Perangkat Bergerak  
Dosen Pengampu:  
1. Fajar Winata S.Kom., M.T.  
2. Rizky Kharisma N. E. P. S.Tr.Kom., M.T.  
GitHub: https://github.com/ReyKy17  
Email: rey.ky17@gmail.com & perkuliahan.rey@gmail.com  

---

## DESKRIPSI APLIKASI

Continent Store adalah aplikasi berbasis Flutter untuk menampilkan katalog produk elektronik (Mouse, Keyboard, Headset, Webcam) dengan fitur kategori, produk unggulan, grid katalog, dan halaman detail produk.

Spesifikasi aplikasi:
- Implementasi 5 jenis layout Flutter (Dasar, Multi-Child, Kompleks, Scrollable, Responsif)  
- 3 halaman utama: Home Page, Detail Page, Grid Page  
- 2 custom widget reusable: `CategoryCard`, `FeaturedProductCard`  
- ThemeData untuk konsistensi UI  
- Struktur folder rapi dan terorganisir  
- Responsive design menggunakan `MediaQuery` dan `LayoutBuilder`  

Aplikasi ini mendemonstrasikan pemahaman tentang Flutter layout system, widget composition, dan best practices dalam pengembangan aplikasi mobile yang responsif dan user-friendly.

---

## TEKNOLOGI YANG DIGUNAKAN

| Teknologi | Versi | Kegunaan |
|-----------|-------|----------|
| Flutter SDK | >=3.9.2 | Framework utama |
| Dart | >=3.9.2 | Bahasa pemrograman |
| Material Design | Latest | UI Components |
| Assets lokal | - | Gambar kategori dan produk |

---

## STRUKTUR FOLDER PROJECT

lib/
├── main.dart # Entry point aplikasi
├── models/
│ └── product.dart # Model data produk
├── screens/
│ ├── home_page.dart # Halaman utama (Home Page)
│ ├── grid_page.dart # Halaman grid katalog (Grid Page)
│ └── detail_page.dart # Halaman detail produk (Detail Page)
├── widgets/
│ ├── category_card.dart # Custom widget kategori
│ └── featured_product_card.dart # Custom widget produk unggulan
pubspec.yaml # Dependencies dan assets

### Penjelasan Struktur
- **models/**: class model untuk data produk  
- **screens/**: semua halaman aplikasi  
- **widgets/**: custom widget yang reusable  
- **pubspec.yaml**: konfigurasi dependencies dan assets  

---

## IMPLEMENTASI 5 JENIS LAYOUT FLUTTER

### 1. Layout Dasar (Single Child)
Widget: Container, Center, Padding, Align  
Lokasi:  
- HomePage: Container untuk header dan card produk  
- FeaturedProductCard: Padding untuk info produk  

---

### 2. Layout Multi-Child (Row/Column)
Widget: Row, Column, Expanded, Spacer  
Lokasi:  
- HomePage: Row untuk kategori, Column untuk layout utama  
- FeaturedProductCard: Row untuk rating dan harga  
Fungsi: Menyusun komponen horizontal dan vertical secara responsive  

---

### 3. Layout Kompleks
Widget: Stack, Positioned  
Lokasi:  
- FeaturedProductCard: Stack untuk gambar produk dengan gradient background  
- DetailPage: Stack untuk hero image dengan badge kategori  
Fungsi: Menumpuk widget dan menempatkan komponen di posisi absolut  

---

### 4. Layout Scrollable
Widget: ListView, GridView, SingleChildScrollView  
Lokasi:  
- HomePage: ListView vertical untuk konten utama, ListView horizontal untuk produk unggulan  
- GridPage: GridView untuk menampilkan 8 produk  
- DetailPage: SingleChildScrollView untuk deskripsi panjang  
Fungsi: Memungkinkan scroll pada konten panjang  

---

### 5. Layout Responsif/Adaptif
Widget: MediaQuery, LayoutBuilder, Flexible  
Lokasi:  
- GridPage: LayoutBuilder untuk menentukan jumlah kolom grid sesuai ukuran layar  
  - Phone ≤800px → 2 kolom  
  - Tablet 801-1200px → 3 kolom  
  - Desktop >1200px → 4 kolom  
- FeaturedProductCard & CategoryCard menyesuaikan ukuran elemen  

---

## SPESIFIKASI HALAMAN

### 1. Home Page (home_page.dart)
- Header dengan nama aplikasi dan logo  
- 4 kategori dalam Row menggunakan `CategoryCard`  
- Featured products horizontal scroll menggunakan `FeaturedProductCard`  
- Navigasi ke Grid Page dengan InkWell  
- Layout: Container, Row, Column, ListView, Stack, MediaQuery  

### 2. Detail Page (detail_page.dart)
- Hero image menggunakan Stack dan Positioned  
- SingleChildScrollView untuk konten detail  
- Menampilkan: nama produk, kategori, rating, harga, deskripsi  
- Tombol Add to Cart & Buy Now  

### 3. Grid Page (grid_page.dart)
- GridView menampilkan 8 produk (Mouse, Keyboard, Headset, Webcam)  
- Filter kategori dan sort bisa ditambahkan  
- Layout responsif sesuai ukuran layar  

---

## CUSTOM WIDGETS

### 1. CategoryCard (lib/widgets/category_card.dart)
- Menampilkan icon kategori, nama kategori, dan background color  
- Reusable di HomePage  

### 2. FeaturedProductCard (lib/widgets/featured_product_card.dart)
- Menampilkan gambar produk, kategori, rating, harga  
- Reusable di HomePage (produk unggulan)  

---

## TEMA APLIKASI

- Color Palette:  
  - Primary: Blue  
  - Secondary: Orange  
  - Background: Light Grey  
  - Text Primary: Dark Grey  

- Typography:  
  - Headline: Bold, 24-32px  
  - Body: 14-16px  

- Component Themes:  
  - Card: Rounded 12px dengan shadow  
  - Button: Gradient dan ripple effect  

---

## PEMENUHAN REQUIREMENT TUGAS

| Requirement | Keterangan |
|-------------|------------|
| Layout Dasar | Container, Center, Padding, Align |
| Layout Multi-Child | Row, Column, Expanded, Spacer |
| Layout Kompleks | Stack, Positioned |
| Layout Scrollable | ListView, GridView, SingleChildScrollView |
| Layout Responsif | MediaQuery, LayoutBuilder, Flexible |
| Home Page | Header, kategori, featured products, navigation |
| Detail Page | Hero image, SingleChildScrollView, informasi lengkap |
| Grid Page | GridView, responsive columns, produk lengkap |
| Custom Widgets | CategoryCard, FeaturedProductCard |
| Assets | Gambar kategori dan produk lokal |

---

## KONTAK

Nama: Reynaldi Continenta Putra  
NIM: 230102116  
Kelas: IF23B  
Email: rey.ky17@gmail.com & perkuliahan.rey@gmail.com  
GitHub: https://github.com/ReyKy17  