import 'somas/soma.dart' as soma;
import 'somas_novas/soma copy.dart' as nova_soma;
//import 'package:dart_functions_collections/8_imports/somas/soma.dart';

void main() {
  var resultado = soma.somaInteiros(1, 2);
  var resultadoDouble = nova_soma.somaDoubles(5.5, 10);
  print("total da soma de inteiros é: $resultado");
  print("o total da soma de doubles é $resultadoDouble");
}
