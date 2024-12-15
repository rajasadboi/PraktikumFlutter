import 'anggota.dart';
import 'buku.dart';
import 'peminjaman.dart';

void main(){
  // Membuat objek buku
  var buku1 = Buku ('Belajar OOP Dart','Ada Programmer', 2023);
  var buku2 = Buku ('Pemrograman Flutter','Pengembangan Aplikasi', 2024);

  // menampilkna informasi tentang  bukku
  buku1.info();
  buku2.info();

  // membuat objek anggota
  var anggota1 = Anggota ('Alice','A001');

  // membuat objek peminjaman dari buku 
  var peminjaman = Peminjaman(buku1.judul, buku1.pengarang, buku1.tahunTerbit, anggota1);

  //menampilkan informasi peminjaman
  peminjaman.info();
}
