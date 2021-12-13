void main() {
  final paciente = <String, String>{"nome": "Carlos", "Estudando": "Dart"};
//o map pode ser nulo mas se for criado a chave e os valores não podem ser nulos
  Map<String, String>? pacienteNullSafe = null;
  Map<String, String> pacienteNullSafe2 = {};
//chave null, map e valor não
  Map<String?, String> pacienteNullSafeChaveNull = {null: "maria"};

  ///valor null, map e chave não
  Map<String, String?> pacienteNullSafeValoresNull = {"nome": null};

  var produtos = <String, String>{};
  print("Adicionar produto em Map");
  produtos.putIfAbsent("nome", () => "Maçã");
  //só adiciona se não existir a chave
  produtos.putIfAbsent("nome", () => "Suco");
  print(produtos);
  print("Alterar produto do Map");
  produtos.update("nome", (nome) => "suco");
  //caso não exista só atribui valor a chave com ifAbsent para cria-lá com um valor
  produtos.update("preço", (nome) => "10,", ifAbsent: () => "10");
  print(produtos);

  print("Recuperando o valor do map");
  print("Produto: ${produtos['nome']}");
  print("Valor: ${produtos['preço']}");

  print("forEach com Map");
  produtos.forEach((key, value) {
    print("Chave: $key: $value");
  });
//usado para fazer algum processo assyncrono
  print("for in com map");
  for (var entry in produtos.entries) {
    print("Chave: ${entry.key}: ${entry.value}");
  }
  print("for in com keys do Map");
  for (var key in produtos.keys) {
    print("Chave $key");
  }
  print("for in com valores do Map");
  for (var value in produtos.values) {
    print("Valores $value");
  }

  print("map do Map");
  var novoMapProdutos = produtos.map((key, value) {
    return MapEntry(key + "-novo", value.toUpperCase());
  });
  print(novoMapProdutos);

  print("");
  print("map dentro de map");
  var mapa = <String, dynamic>{
    "nome": "Carlos",
    "Curso": [
      {"nomeCurso": "Dart", "descrição": "Melhor curso de Flutter do Brasil"},
      {
        "nomeCurso": "Flutter",
        "descrição": "Melhor curso de Flutter do Brasil"
      },
    ]
  };
  print(mapa["Curso"]);

  print(mapa["Curso"][0]);
  print(mapa["Curso"][1]);
}
