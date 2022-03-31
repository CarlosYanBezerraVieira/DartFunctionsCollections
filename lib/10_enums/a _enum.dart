void main(List<String> args) {
  var cor = Cores.azul;
  if (cor == Cores.azul) {}

  //Transformando a String azul em um enum Cores.azul
  //Antes da versão 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  //2.15

  print(Cores.azul.name);
  var corAzul_215 = Cores.values.byName(azul);
  print(corAzul_215);

  var coresMap = Cores.values.asMap();
  print(coresMap);
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAazulPeloMap = coresNameMap[azul];
  print(corAazulPeloMap);
}

enum Cores { azul, vermelho, preto, branco }
