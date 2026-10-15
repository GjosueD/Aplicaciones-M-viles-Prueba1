import 'package:flutter/material.dart';
import 'pantallas/bienvenida_pantalla.dart';
import 'pantallas/ejercicios_pantalla.dart';

void main() => runApp(const Prueba1App());

class Prueba1App extends StatelessWidget {
  const Prueba1App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Prueba 1 Josué G',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      useMaterial3: true,
    ),
    initialRoute: '/',
    routes: {
      '/': (_) => const BienvenidaPantalla(),
      '/ejercicios': (_) => const EjerciciosPantalla(),
    },
  );
}
