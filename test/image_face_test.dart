import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_face/image_face.dart';

void main() {
  const MethodChannel channel = MethodChannel('image_face');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return false;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('hasFace', () async {
    expect(await ImageFace.hasFace(null), false);
  });
}
