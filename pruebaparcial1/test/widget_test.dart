import 'package:flutter_test/flutter_test.dart';

import 'package:pruebaparcial1/main.dart';

void main() {
  testWidgets('muestra la bienvenida y permite acceder a ejercicios', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const Prueba1App());

    expect(find.text('Prueba 1 Josué G'), findsOneWidget);
    expect(find.text('Bienvenido a la prueba 1 de Josué G'), findsOneWidget);

    await tester.tap(find.text('Acceder a los ejercicios'));
    await tester.pumpAndSettle();

    expect(find.text('Ejercicios'), findsOneWidget);
    expect(find.text('Número entero'), findsOneWidget);
  });
}
