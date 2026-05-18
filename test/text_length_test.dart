import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/custom_functions/text_length.dart';

void main() {
  group('textLength', () {
    test('returns correct length for normal text', () {
      expect(
        textLength('Welcome to dart test'),
        20,
      );
    });

    test('returns zero for empty string', () {
      expect(
        textLength(''),
        0,
      );
    });

    test('counts spaces correctly', () {
      expect(
        textLength('Hello World'),
        11,
      );
    });

    test('counts single character correctly', () {
      expect(
        textLength('A'),
        1,
      );
    });

    test('counts numbers correctly', () {
      expect(
        textLength('123456'),
        6,
      );
    });

    test('counts special characters correctly', () {
      expect(
        textLength('!@#\$%^&*'),
        8,
      );
    });

    test('counts unicode characters correctly', () {
      expect(
        textLength('こんにちは'),
        5,
      );
    });

    test('counts emojis correctly', () {
      expect(
        textLength('😀😀😀'),
        6,
      );
    });

    test('works with multiline text', () {
      expect(
        textLength('Hello\nWorld'),
        11,
      );
    });
  });
}
