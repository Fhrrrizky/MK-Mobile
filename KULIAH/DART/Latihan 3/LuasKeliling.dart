import 'dart:io';

void main() {
  double? panjang;
  double? lebar;
  stdout.write("Masukkan Panjang: ");
  panjang = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Lebar: ");
  lebar = double.parse(stdin.readLineSync()!);
  double luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);
  print("Panjang = $panjang");
  print("Lebar = $lebar");
  print("Luas = $luas");
  print("Keliling = $keliling");
}
