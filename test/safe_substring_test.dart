import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/custom_functions/safe_substring.dart';

void main() {
  group('safeSubstring', () {
    test('returns normal substring', () {
      expect(
        safeSubstring('Selamat datang', 0, 3),
        'Sel',
      );
    });

    test('returns middle substring', () {
      expect(
        safeSubstring('Selamat datang', 8, 14),
        'datang',
      );
    });

    test('returns full string when endIndex exceeds length', () {
      expect(
        safeSubstring('Selamat datang', 0, 999),
        'Selamat datang',
      );
    });

    test('returns empty string when text is empty', () {
      expect(
        safeSubstring('', 0, 3),
        '',
      );
    });

    test('clamps negative startIndex to 0', () {
      expect(
        safeSubstring('Selamat datang', -5, 3),
        'Sel',
      );
    });

    test('clamps negative endIndex to 0', () {
      expect(
        safeSubstring('Selamat datang', 0, -3),
        '',
      );
    });

    test('returns empty string when startIndex is greater than endIndex', () {
      expect(
        safeSubstring('Selamat datang', 5, 3),
        '',
      );
    });

    test('returns empty string when startIndex equals endIndex', () {
      expect(
        safeSubstring('Selamat datang', 3, 3),
        '',
      );
    });

    test('returns empty string when startIndex exceeds text length', () {
      expect(
        safeSubstring('Selamat datang', 999, 1000),
        '',
      );
    });

    test('works with full string range', () {
      expect(
        safeSubstring('Selamat datang', 0, 15),
        'Selamat datang',
      );
    });

    test('works with single character', () {
      expect(
        safeSubstring('Selamat datang', 0, 1),
        'S',
      );
    });
  });
}