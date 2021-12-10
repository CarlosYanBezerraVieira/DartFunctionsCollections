void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(minhaPrint);

//expand
//array bidimencional
  var lista = [
    [2, 2],
    [1, 2]
  ];

//jeito melhor de fazer isso => //var novaList = [...lista[0],...lista[1]];
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

//any
  print("Any");
  var listaBusca = ["Rodrigo", "Clara", "Victor "];
  if (listaBusca.any((nome) => nome == "Clara")) {
    print("Tem clara");
  } else {
    print("não tem clara");
  }
}

void minhaPrint(int text) {
  print(text);
}
