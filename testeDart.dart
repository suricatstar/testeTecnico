int divisoes(int numero) {
  int somatorio = 0;

  for (int i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }
  return somatorio;
}

void main() {
  print(divisoes(10));
  print(divisoes(11));
}
