void main(List<String> arguments) {
  var numeros = [1,5,9,50,85];
  var acumulador = 0;
  for (var numero in numeros) {
    acumulador = acumulador + numero;
    print(numero);
  }
  print(acumulador);

  var letras = ["B", "A", "C"];
  for (var letra in letras) {
    print(letra);
  }

  letras.forEach((element) {
    print(element);
  });
}