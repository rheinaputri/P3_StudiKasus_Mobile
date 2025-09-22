import 'dart:io';

void main() {
  stdout.write("Masukkan tinggi (cm): ");
  String? inputTinggi = stdin.readLineSync();
  stdout.write("Masukkan berat (kg): ");
  String? inputBerat = stdin.readLineSync();

  if (inputTinggi == null || inputBerat == null) {
    print("Input tidak boleh kosong!");
    return;
  }

  double tinggi = double.tryParse(inputTinggi) ?? 0;
  double berat = double.tryParse(inputBerat) ?? 0;

  if (tinggi <= 0 || berat <= 0) {
    print("Input harus berupa angka lebih dari 0.");
    return;
  }

  print("Input valid. Tinggi: $tinggi cm, Berat: $berat kg");
}
