void main() {
  final valorCalulador = somaInteiros(0, 1);
  print("a soma dos inteiros é  $valorCalulador");
}

int somaInteiros(int num1, int num2) {
  print("Executando a soma de dois inteiros, ($num1, $num2)");

  return num1 + num2;
}
