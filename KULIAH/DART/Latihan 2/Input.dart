import 'dart:io';

void main(List<String> args) {
  String? name;
  int? usia;
  stdout.write("Masukkan Nama: ");
  stdout.write("Masukkan Usia: ");
  name = stdin.readLineSync();
  usia = int.parse(stdin.readLineSync()!);
  print(name);
  print(usia);
}
