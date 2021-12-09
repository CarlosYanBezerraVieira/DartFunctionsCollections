void main() {
  //Parametros Obrigatórios por default
  print("A soma de 10 + 10 é ${somaInteiros(10, 10)}");

  // Parametros Nomeados
  //Parametros Nomeados são nulables por default
  //Parametros Nomeados podem ser promovidos para non-null com checagem de null
  print("A soma de 10.2  + 10.2 é ${somaDouble(num1: null, num2: 10.2)}");
  somaDoubleObrigatorios(num1: 10.5, num2: 10.0);
  somaDoubleObrigatoriosNull(num1: null, num2: 1);
  print("a soma com parametros defaut é ${somaDoubleDefault()}");
  print("a soma com parametros defaut é ${somaDoubleDefault(num1: 10)}");

  //Parametro opcional
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 2);

  parametrosNormaisComNomeados(1, nome: "Carlos", idade: 18);
}

int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

double somaDouble({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  } else {
    return 0.0;
  }
}

double somaDoubleObrigatorios({required double num1, required double num2}) {
  return num1 + num2;
}

double somaDoubleObrigatoriosNull(
    {required double? num1, required double num2}) {
  num1 ??= 0;
  return num1 + num2;
}

double somaDoubleDefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

int somaIntOpcional([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}
