double hitungBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100;
  return beratKg / (tinggiM * tinggiM);
}

String kategoriBMI(double bmi) {
  if (bmi < 18.5) {
    return "Kurus";
  } else if (bmi < 25) {
    return "Normal";
  } else if (bmi < 30) {
    return "Gemuk";
  } else {
    return "Obesitas";
  }
}

void main() {
  double bmi = hitungBMI(170, 65);
  print("BMI: ${bmi.toStringAsFixed(2)} → ${kategoriBMI(bmi)}");
}
