import 'dart:io';

class Calculadora {
  double somar(double a, double b) {
    return a + b;
  }

  double subtrair(double a, double b) {
    return a - b;
  }

  double multiplicar(double a, double b) {
    return a * b;
  }

  double dividir(double a, double b) {
    if (b == 0) {
      throw Exception("Não é possível dividir por zero!");
    }
    return a / b;
  }
}

void main() {
  final calc = Calculadora();

  print("Escolha a operação:");
  print("1 - Soma");
  print("2 - Subtração");
  print("3 - Multiplicação");
  print("4 - Divisão");
  stdout.write("Digite o número da operação: ");
  int opcao = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o primeiro número: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo número: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double resultado;

  switch (opcao) {
    case 1:
      resultado = calc.somar(num1, num2);
      break;
    case 2:
      resultado = calc.subtrair(num1, num2);
      break;
    case 3:
      resultado = calc.multiplicar(num1, num2);
      break;
    case 4:
      try {
        resultado = calc.dividir(num1, num2);
      } catch (e) {
        print(e);
        return;
      }
      break;
    default:
      print("Opção inválida!");
      return;
  }

  print("Resultado: $resultado");
}
