import 'dart:io';

class Calculadora {
  double somar(List<double> numeros) {
    return numeros.reduce((acumulador, numeroAtual) => acumulador + numeroAtual);
  }

  double subtrair(List<double> numeros) {
    return numeros.reduce((acumulador, numeroAtual) => acumulador - numeroAtual);
  }

  double multiplicar(List<double> numeros) {
    return numeros.reduce((acumulador, numeroAtual) => acumulador * numeroAtual);
  }

  double dividir(List<double> numeros) {
    return numeros.reduce((acumulador, numeroAtual) {
      if (numeroAtual == 0) throw Exception("Não é possível dividir por zero!");
      return acumulador / numeroAtual;
    });
  }
}

void main() {
  final calc = Calculadora();

  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print("Entrada inválida!");
    return;
  }

  List<String> partes = entrada.split(" ");

  Set<String> operadoresEncontrados = partes
      .where((parte) => ["+", "-", "*", "/"].contains(parte))
      .toSet();

  if (operadoresEncontrados.length != 1) {
    print("Use apenas um tipo de operação por vez!");
    return;
  }

  String operador = operadoresEncontrados.first;

  List<double> numeros = partes
      .where((parte) => parte != operador)
      .map((parte) => double.parse(parte))
      .toList();

  if (numeros.length < 2) {
    print("É necessário pelo menos dois números!");
    return;
  }

  double resultado;

  try {
    switch (operador) {
      case "+":
        resultado = calc.somar(numeros);
        break;
      case "-":
        resultado = calc.subtrair(numeros);
        break;
      case "*":
        resultado = calc.multiplicar(numeros);
        break;
      case "/":
        resultado = calc.dividir(numeros);
        break;
      default:
        print("Operador inválido!");
        return;
    }
  } catch (erro) {
    print(erro);
    return;
  }

  print("Resultado: $resultado");
}
