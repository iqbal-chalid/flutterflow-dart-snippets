import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/custom_functions/remove_last_char.dart';

void main() {
  group('removeLastChar', () {
    test('removes last character from normal text', () {
      expect(
        removeLastChar('Hello'),
        'Hell',
      );
    });

    test('returns empty string for single character', () {
      expect(
        removeLastChar('A'),
        '',
      );
    });

    test('returns empty string for empty text', () {
      expect(
        removeLastChar(''),
        '',
      );
    });

    test('removes last number correctly', () {
      expect(
        removeLastChar('12345'),
        '1234',
      );
    });

    test('removes last whitespace correctly', () {
      expect(
        removeLastChar('Hello '),
        'Hello',
      );
    });

    test('removes last special character correctly', () {
      expect(
        removeLastChar('Hello!'),
        'Hello',
      );
    });

    test('works with unicode characters', () {
      expect(
        removeLastChar('こんにちは'),
        'こんにち',
      );
    });

    test('works with multiline text', () {
      expect(
        removeLastChar('Hello\n'),
        'Hello',
      );
    });

    test('works with trailing newline', () {
      expect(
        removeLastChar('Line 1\nLine 2\n'),
        'Line 1\nLine 2',
      );
    });

    test('works with PIN input', () {
      expect(
        removeLastChar('1234'),
        '123',
      );
    });
  });
}
