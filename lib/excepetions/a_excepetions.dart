void main() {
  var idade = "38";
  String? nome;

  try {
    var idadeParse = int.parse(idade);

    //nome!.toLowerCase();

    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    //print(s); //StackTrace

    // print(erro);
    print("erro ao converte idade");
  } on TypeError {
    //caso não precise das variaveis e for erro específico pode tirar o catch erro para não fica alocando variavel na memoria
    print("erro ao converte idade");
  } on Exception {
    print("Errro idade =  38");
  } catch (e) {
    //print(erro);
    print("erro ao executar o programa");
  } finally {
    print("finally");
  }
}
