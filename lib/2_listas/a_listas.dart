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

//every
  print("Every");
  var listaBusca2 = ["Andréa", "Clara", "Carlos"];
  if (listaBusca2.every((nome) => nome.contains("a"))) {
    print("Todos nomes contem (a)");
  } else {
    print("nem todos nomes contem (a)");
  }

  //sort
  print(".sort");
  print("");
  print("listaParaOrdenacai");
  var listaParaOrdenacai = [1111, 0, 10, 1, 4, 5, 6];
  listaParaOrdenacai.sort();
  print(listaParaOrdenacai);
  print("");
  print("listaNomesOrdenacao ");
  var listaNomesOrdenacao = ["Andréa", "Clara", "Carlos"];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);
  print("");
  print("listaPacientes");
  var listaPacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Andressa|35|dentista|MG',
    'Carlos|55|jornalista|SP',
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split("|");
    final pacienteDados2 = paciente2.split("|");
    final idadePac1 = int.parse(pacienteDados1[1]);
    final idadePac2 = int.parse(pacienteDados2[1]);
    return idadePac1.compareTo(idadePac2);
  });
  listaPacientes.forEach(print);
  print("");
  print("lista ordenada");
  novaListaPacientes.forEach(print);
  var listaPacientes3 = [...listaPacientes];
//sort com função
  print("");
  print("lista3 antes do sort");
  listaPacientes3.forEach(print);
  print("");
  print("lista3 depois do sort");
  funcaoQualquer(listaPacientes3);
  listaPacientes3.forEach(print);
}

void minhaPrint(int text) {
  print(text);
}

void funcaoQualquer(List<String> pacientes) {
  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split("|");
    final pacienteDados2 = paciente2.split("|");
    final idadePac1 = int.parse(pacienteDados1[1]);
    final idadePac2 = int.parse(pacienteDados2[1]);
    return idadePac1.compareTo(idadePac2);
  });
}
