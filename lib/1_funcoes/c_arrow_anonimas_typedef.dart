void main() {
  //não chama a função
  somaInteiro;

  var funcaoQualquer = () {
    print("Chamou função qualquer");
    return "deu certo";
  };

//não chama
// print(funcaoQualquer);
  print(funcaoQualquer());

  //funções arrow
  print("somaInteiro => ${somaInteiro(1, 1)}");

//chamando função que recebe uma função por parametros
  print("iniciando chamada");
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print("nome vazio");
    }
    print("chamarUmaFuncaoDeUmParametro =   $nome");
  });
  print("finalizando chamada");

  //funções anonimas
  () {
    print("Função anonima");
  }();

  //funções typedef

  fun2((nome, endereco, {x = "", y = ""}) => "null");
}

// 3 partes
//1 tipo de retorno
// 2 nome
//3 parametros (normais, nomeados, opcionais)

//funções arrow
int somaInteiro(int num1, int num2) => num1 + num2;

//receber função por parametro
void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeUmNome) {
  var nomeCompleto = "Carlos Yan";
  print("finalizando a função chamarUmaFuncaoDeUmParametro ");
  print("invocando função funcaoQueRecebeUmNome ");
  funcaoQueRecebeUmNome(nomeCompleto);
}

// usando typedef
void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeUmNome) {
  var nomeCompleto = "Carlos Yan";
  print("finalizando a função chamarUmaFuncaoDeUmParametro ");
  print("invocando função funcaoQueRecebeUmNome ");
  funcaoQueRecebeUmNome(nomeCompleto);
}

//funções typedef

void fun(
    String Function(
  String nome,
  String endereco, {
  required String x,
  required String y,
})
        nome) {}

void fun2(FuncaoQueRecebeNomeComplexo nome) {}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
  String nome,
  String endereco, {
  required String x,
  required String y,
});
