class Ruang {
  final int id;
  final String namaRuang;
  final String? deskripsi;
  final int kapasitas;

  Ruang({
    required this.id,
    required this.namaRuang,
    this.deskripsi,
    required this.kapasitas,
  });

  factory Ruang.fromJson(Map<String, dynamic> json) {
    return Ruang(
      id: json['id'],
      namaRuang: json['nama_ruang'],
      deskripsi: json['deskripsi'],
      kapasitas: json['kapasitas'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_ruang': namaRuang,
      'deskripsi': deskripsi,
      'kapasitas': kapasitas,
    };
  }
}

