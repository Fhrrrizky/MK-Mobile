void main() {
  List<String> buah = ["Apel", "Pisang", "Jeruk", "Melon"];
  print("Buah: $buah");
  print(buah.first);
  buah.addAll(["Nanas", "Mangga"]);
  print("Buah: $buah");
  print(buah.length);
  print(buah.indexOf("Nanas"));
}
