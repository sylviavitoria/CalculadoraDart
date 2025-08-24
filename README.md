# Calculadora em Dart

Este é um projeto simples de uma calculadora em Dart que realiza as quatro operações básicas: soma, subtração, multiplicação e divisão. 
O programa suporta múltiplos números e as quatro operações básicas, respeitando a precedência entre multiplicação/divisão e soma/subtração.  

## Funcionalidades

* **Soma (+)**
* **Subtração (-)**
* **Multiplicação (*)**
* **Divisão (/)** (com verificação para divisão por zero)
* Suporte a expressões com **mais de dois números**  
  Exemplo: `10 + 5 * 2 - 4 / 2`

## Como rodar

1. Certifique-se de ter o **Dart SDK** instalado. Você pode verificar com:

```bash
dart --version
```

2. Abra o terminal na pasta onde está o arquivo `.dart` e execute:

```bash
dart run nome_do_arquivo.dart
```

3. Digite a expressão desejada e pressione **Enter**.

---

## Exemplo de uso

```text
10 + 5 * 2 - 4 / 2
Resultado: 18.0
```

### Outro exemplo
```text
50 / 2 + 3 * 4
Resultado: 37.0
```

---

## Observações

* O programa **respeita a ordem das operações matemáticas**:
  * Multiplicação e divisão são resolvidas primeiro.
  * Soma e subtração são resolvidas depois.
* Caso o usuário tente **dividir por zero**, será exibida uma mensagem de erro.
* Se a entrada for inválida (vazia ou não numérica), o programa exibirá uma mensagem de erro apropriada.
* Espaços na expressão são ignorados (`10 + 2` funciona da mesma forma que `10+2`).
