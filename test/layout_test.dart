import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soundbox/Principal.dart';

void main() {
  for (final largura in [320.0, 390.0, 1024.0]) {
    testWidgets('Página principal com largura $largura', (tester) async {
      tester.view.physicalSize = Size(largura, 800);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(const Principal());
      expect(find.text('SoundBox'), findsOneWidget);
      expect(find.text('Minhas playlists'), findsOneWidget);
      expect(find.text('Artistas favoritos'), findsOneWidget);
      expect(find.text('Ouvidas recentemente'), findsOneWidget);
      expect(tester.takeException(), isNull);

      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -2000));
      await tester.pumpAndSettle();
      expect(find.text('Dê o play no seu dia.').hitTestable(), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
