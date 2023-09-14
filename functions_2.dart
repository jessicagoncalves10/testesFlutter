import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora!");

  print("Informe o primeiro numero:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo numero:");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação matematica (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "0";

  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = soma(numero1, numero2);
      break;
    case "-":
      resultado = subtracao(numero1, numero2);
      break;
    case "*":
      resultado = multiplicacao(numero1, numero2);
      break;
    case "/":
      resultado = divisao(numero1, numero2);
      break;
    default:
    print("Operação inválida!");
    exit(0);
  }
  print("O calculo solicitado é: $numero1 $operacao $numero2 = $resultado");
}
  double soma(double numero1, double numero2) {
    return numero1 + numero2;
  }
  double subtracao(double numero1, double numero2) {
    return numero1 - numero2;
  }
  double multiplicacao(double numero1, double numero2) {
    return numero1 * numero2;
  }
  double divisao(double numero1, double numero2) {
    return numero1 / numero2;
  }