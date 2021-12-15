void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  var novaLista = removeDuplicados(pessoas);
  final condicao = 4;
  switch (condicao) {
    case 1:
      novaLista.forEach(print);
      break;
    case 2:
      selecGenero(novaLista);
      break;
    case 3:
      maiorQue18(novaLista);

      break;
    case 4:
      pessoasMaisVelha(novaLista);
      break;
  }
}

List removeDuplicados(List pessoas) {
  var lista = pessoas.toSet();
  var novaLista = lista.toList();

  return novaLista;
}

void selecGenero(List pessoas) {
  final masculino = [];
  final feminino = [];
  for (var i = 0; i < pessoas.length; i++) {
    final dados = pessoas[i].split("|");
    final genero = dados[2];
    final nomes = dados[0];

    if (genero == "Masculino") {
      masculino.add(nomes);
    } else {
      feminino.add(nomes);
    }
  }
  print("Há ${masculino.length} homens sendo eles:");
  masculino.forEach(print);
  print("Há ${feminino.length} mulheres sendo elas:");
  feminino.forEach(print);
}

void maiorQue18(List pessoas) {
  final listaDeMaior = [];
  for (var i = 0; i < pessoas.length; i++) {
    final dados = pessoas[i].split("|");
    final nomes = dados[0];
    final int? idade = int.tryParse(dados[1]);
    if (idade != null) {
      if (idade > 18) {
        listaDeMaior.add(nomes);
      }
    }
  }
  print("A lista de pessoas com idade maior a 18 anos é");
  listaDeMaior.forEach(print);
}

void pessoasMaisVelha(List pessoas) {
  var idadeMaisVelho = 0;
  var nomeMaisVelho;
  for (var i = 0; i < pessoas.length; i++) {
    final dados = pessoas[i].split("|");
    final nome = dados[0];
    final int? idade = int.tryParse(dados[1]);
    if (idade! > idadeMaisVelho) {
      idadeMaisVelho = idade;
      nomeMaisVelho = nome;
    } else {
      continue;
    }
  }
  print("A pessoas mais velha é $nomeMaisVelho e tem $idadeMaisVelho anos");
}
