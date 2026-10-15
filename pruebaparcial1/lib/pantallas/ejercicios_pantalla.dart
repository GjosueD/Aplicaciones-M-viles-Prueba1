import 'package:flutter/material.dart';
import '../logica/prueba1_logica.dart';

class EjerciciosPantalla extends StatefulWidget {
  const EjerciciosPantalla({super.key});

  @override
  State<EjerciciosPantalla> createState() => _EjerciciosPantallaState();
}

class _EjerciciosPantallaState extends State<EjerciciosPantalla> {
  final controlNumero = TextEditingController();
  final logica = Prueba1Logica();
  String resultado = '';

  void _resolver() {
    FocusScope.of(context).unfocus();
    try {
      final numero = logica.numeroEntero(controlNumero.text);
      final primo = logica.esPrimo(numero) ? 'sí' : 'no';
      final capicua = logica.esCapicua(numero) ? 'sí' : 'no';
      setState(() {
        resultado = [
          'Número primo: $primo',
          'Factorial: ${logica.factorial(numero)}',
          'Número capicúa: $capicua',
        ].join('\n\n');
      });
    } on FormatException catch (error) {
      setState(() => resultado = error.message);
    }
  }

  void _limpiar() {
    controlNumero.clear();
    setState(() => resultado = '');
  }

  @override
  void dispose() {
    controlNumero.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Ejercicios')),
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Ingresa un número entero para verificar los tres ejercicios.',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: controlNumero,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Número entero',
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => _resolver(),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _resolver,
            child: const Text('Resolver ejercicios'),
          ),
          OutlinedButton(
            onPressed: _limpiar,
            child: const Text('Limpiar número y resultados'),
          ),
          if (resultado.isNotEmpty) ...[
            const SizedBox(height: 24),
            const Text(
              'Resultados',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SelectableText(
                  resultado,
                  style: const TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ],
      ),
    ),
  );
}
