import 'dart:io';
// Menggunakan 'dart:io' untuk input dan output menggunakan stdout dan stdin

void main() {
  String? namaKaryawan;
  int? jamKerja;
  double? upahPerJam;

  String? inputStatusKaryawan;
  bool? status;

  double gajiBersih;
  double gajiKotor;

  stdout.write("Masukkan Nama : ");
  namaKaryawan = stdin.readLineSync();

  stdout.write("Masukkan jumlah jam kerja per minggu : ");
  jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Upah per Jam : ");
  upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah Status Karyawan (Tetap/Kontrak) : ");
  inputStatusKaryawan = stdin.readLineSync();

  if (inputStatusKaryawan != null &&
      inputStatusKaryawan.toLowerCase() == "tetap") {
    status = true;
  } else {
    status = false;
  }

  gajiKotor = jamKerja * upahPerJam;
  if (status == true) {
    print("");
    print("Anda Dikenakan pajak 10%!");
    gajiBersih = gajiKotor * 0.90;
  } else {
    print("");
    print("Anda Dikenakan pajak 5%!");
    gajiBersih = gajiKotor * 0.95;
  }

  //Menggunakan method bawaan dart yaitu padRight() agar teks mempunyai panjang yang sama
  print("===== Slip Gaji Karyawan ======");
  print("Nama Karyawan".padRight(25) + ": $namaKaryawan");
  print("Jam kerja per minggu".padRight(25) + ": $jamKerja");
  print("Upah per jam".padRight(25) + ": Rp$upahPerJam");
  print("Status karyawan".padRight(25) + ": ${status ? "Tetap" : "Kontrak"} ");
  print("Gaji Kotor".padRight(25) + ": Rp$gajiKotor");
  print("Gaji Bersih (setelah pajak)".padRight(25) + ": Rp$gajiBersih");
  print("===============================");
}
