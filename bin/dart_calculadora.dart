import 'dart:io';

class Calculadora {
  double calcularExpressao(String expressao) {
    expressao = expressao.replaceAll(" ", "");

    List<String> partes = [];
    String numero = "";
    for (int i = 0; i < expressao.length; i++) {
      String char = expressao[i];
      if ("+-*/".contains(char)) {
        if (numero.isNotEmpty) {
          partes.add(numero);
          numero = "";
        }
        partes.add(char);
      } else {
        numero += char;
      }
    }
    if (numero.isNotEmpty) partes.add(numero);

    for (int i = 0; i < partes.length; i++) {
      if (partes[i] == "*" || partes[i] == "/") {
        double a = double.parse(partes[i - 1]);
        double b = double.parse(partes[i + 1]);
        double resultado =
            (partes[i] == "*") ? a * b : (b == 0 ? throw Exception("Divisão por zero!") : a / b);

        partes.replaceRange(i - 1, i + 2, [resultado.toString()]);
        i--; 
      }
    }

    double resultado = double.parse(partes[0]);
    for (int i = 1; i < partes.length; i += 2) {
      String op = partes[i];
      double valor = double.parse(partes[i + 1]);

      if (op == "+") {
        resultado += valor;
      } else if (op == "-") {
        resultado -= valor;
      }
    }

    return resultado;
  }
}

void main() {
  final calc = Calculadora();

  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print("Entrada inválida!");
    return;
  }

  try {
    double resultado = calc.calcularExpressao(entrada);
    print("Resultado: $resultado");
  } catch (e) {
    print("Erro: $e");
  }
}
