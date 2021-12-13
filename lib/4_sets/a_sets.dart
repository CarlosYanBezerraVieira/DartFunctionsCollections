void main() {
  var numeroListas = <int?>[];
  numeroListas.add(1);
  numeroListas.add(2);
  numeroListas.add(3);
  numeroListas.add(null);
  numeroListas.add(1);
  numeroListas.add(2);
  numeroListas.add(3);
  print(numeroListas);

  var numerosSets = <int?>{}; //ou {} var numerosSets = Set();
  numerosSets.add(1);
  numerosSets.add(2);
  numerosSets.add(3);
  numerosSets.add(null);
  numerosSets.add(1);
  numerosSets.add(2);
  numerosSets.add(3);
  print(numerosSets);
  print(".toSet");
  print(numeroListas.toSet());
  print("forEach com set");
  numerosSets.forEach(print);

  var numero1 = {1, 2, 3, 4, 5, 6};
  var numero2 = {1, 3, 4, 7};
  print(".difference");
  print(numero1.difference(numero2));
  print(numero2.difference(numero1));

  print(".union");
  print(numero1.union(numero2));

  print("intersection");
  print(numero1.intersection(numero2));

  var nomes1 = {"Carlos", "Maria", "João"};
  var nome2 = {"Carlos", "Pedro", "Ana"};
  print(nomes1.intersection(nome2));

  print(".lookup");
  print(numero1.lookup(99));
  print(nomes1.lookup("yan"));

  nomes1.elementAt(0);
}
