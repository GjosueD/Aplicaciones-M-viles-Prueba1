class Prueba1Logica {
  bool esPrimo(int numero) {
    if (numero < 2) {
      return false;
    }
    if (numero == 2) {
      return true;
    }
    if (numero.isEven) {
      return false;
    }
    for (int divisor = 3; divisor <= numero ~/ divisor; divisor += 2) {
      if (numero % divisor == 0) {
        return false;
      }
    }
    return true;
  }

  String factorial(int numero) {
    if (numero < 0) {
      throw const FormatException('El número debe ser positivo o cero.');
    }
    var resultado = BigInt.one;
    final pasos = <String>[];
    for (int valor = numero; valor >= 1; valor--) {
      resultado *= BigInt.from(valor);
      pasos.add(valor.toString());
    }
    final expresion = pasos.isEmpty ? '1' : pasos.join(' × ');
    return '$numero! = $expresion = $resultado';
  }

  bool esCapicua(int numero) {
    final texto = numero.toString();
    return texto == texto.split('').reversed.join();
  }

  int numeroEntero(String texto) {
    final valor = int.tryParse(texto.trim());
    if (valor == null || valor < 0) {
      throw const FormatException(
        'Ingresa un número entero positivo o cero.',
      );
    }
    return valor;
  }
}
