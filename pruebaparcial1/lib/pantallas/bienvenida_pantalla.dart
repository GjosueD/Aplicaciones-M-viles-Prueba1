import 'package:flutter/material.dart';

class BienvenidaPantalla extends StatelessWidget {
  const BienvenidaPantalla({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Prueba 1 Josué G')),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.calculate_outlined, size: 80),
            const SizedBox(height: 24),
            const Text(
              'Bienvenido a la prueba 1 de ejercicios de Josué G',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Resuelve ejercicios de números primos, factoriales y números capicúa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/ejercicios'),
              icon: const Icon(Icons.play_arrow),
              label: const Text('Acceder a los ejercicios'),
            ),
          ],
        ),
      ),
    ),
  );
}
