import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rongcloud/flutter_rongcloud.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_rongcloud');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterRongcloud.platformVersion, '42');
  });
}
