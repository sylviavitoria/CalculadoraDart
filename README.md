# Calculadora em Dart

Este é um projeto simples de uma **calculadora em Dart** que realiza as quatro operações básicas: soma, subtração, multiplicação e divisão. O programa é executado via terminal e permite que o usuário escolha a operação e informe os números.

## Funcionalidades

* Soma
* Subtração
* Multiplicação
* Divisão (com verificação para divisão por zero)

## Como rodar

1. Certifique-se de ter o **Dart SDK** instalado. Você pode verificar com:

```bash
dart --version
```

2. Abra o terminal na pasta onde está o arquivo e execute:

```bash
dart run 
```

4. Siga as instruções no terminal:

   * Escolha a operação (1 a 4)
   * Digite o primeiro número
   * Digite o segundo número
   * O resultado será exibido no terminal

## Exemplo de uso

```text
Escolha a operação:
1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão
Digite o número da operação: 1
Digite o primeiro número: 10
Digite o segundo número: 5
Resultado: 15.0
```

## Observações

* Se o usuário tentar dividir por zero, o programa exibirá uma mensagem de erro.
* Apenas números válidos devem ser digitados, caso contrário, o programa pode lançar uma exceção.
