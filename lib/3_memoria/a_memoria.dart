void main() {
  var lista = ["Carlos"];
  print(lista.hashCode);
  print(lista);
  funcao(lista);
  print(lista);
  print(lista.hashCode);
  print("");
  print("var");
  print("");
  String nome = "Carlos Yan";

  print(nome);
  print(nome.hashCode);

  funcao2(nome);
}

void funcao(List<String> nomes) {
  nomes.add("Kelvin");
}

void funcao2(String nome) {
  nome += " B. Vieira";
  print(nome);
  print(nome.hashCode);
}
