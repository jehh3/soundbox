import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soundbox/Principal.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    final fontDir = Platform.environment['FLUTTER_ROOT']!;
    final roboto = FontLoader('Roboto');
    for (final name in ['Roboto-Regular.ttf', 'Roboto-Bold.ttf']) {
      final bytes = await File('$fontDir/bin/cache/artifacts/material_fonts/$name').readAsBytes();
      roboto.addFont(Future.value(ByteData.sublistView(bytes)));
    }
    await roboto.load();
    final icons = FontLoader('MaterialIcons')
      ..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'));
    await icons.load();
  });

  testWidgets('Capturar a página principal do SoundBox', (tester) async {
    tester.view.physicalSize = const Size(390, 1320);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const Principal());
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    await expectLater(find.byType(Principal),
        matchesGoldenFile('screenshots/soundbox.png'));
  });
}
