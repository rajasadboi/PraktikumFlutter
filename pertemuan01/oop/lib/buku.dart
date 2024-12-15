class Buku {
  String _judul;
  String _pengarang;
  int _tahunTerbit;

  Buku(this._judul, this._pengarang, this._tahunTerbit);

  // getter
  String get judul => _judul;
  String get pengarang => _pengarang;
  int get tahunTerbit => _tahunTerbit;

  // metode untuk menampilkna informasi buku
  void info (){
    print('judul :$_judul, pengarang: $_pengarang, Tahun Terbit: $_tahunTerbit');
  }
}