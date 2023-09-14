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
      resultado = numero1 + numero2;
      break;
    case "-":
      resultado = numero1 - numero2;
      break;
    case "*":
      resultado = numero1 * numero2;
      break;
    case "/":
      resultado = numero1 / numero2;
      break;
    default:
  // if (operacao == "+") {
  //   resultado = numero1 + numero2;
  // } else if (operacao == "-") {
  //   resultado = numero1 - numero2;
  // } else if (operacao == "*") {
  //   resultado = numero1 * numero2; 
  // } else if (operacao == "/") {
  //   resultado = numero1 / numero2;
  // } else {
    print("Operação inválida!");
    exit(0);
  }
  print("O calculo solicitado é: $numero1 $operacao $numero2 = $resultado");
}
  // print(numero1);
  // print(numero2);
  // print(operacao);

  // var media = (prova1 + prova2) / 2;
  // if (media >= 7) {
  //   print("O aluno passou com a nota: $media");
  // } else  if (media >= 5) {
  //   print("O aluno esta de recuperação com a nota: $media");
  // } else {
  //   print("O aluno reprovou com a nota: $media");
  // }

  // var resultado = (prova1 >= 7)  ? "O aluno passou" : "O aluno reprovou";

  // print(resultado);
