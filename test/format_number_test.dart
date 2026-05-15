import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/custom_functions/format_number.dart';

void main() {
  group('formatNumber', () {
    test('formats en_US with 2 digits', () {
      expect(
        formatNumber(12345.6789, 'en_US', 2),
        '12,345.68',
      );
    });

    test('formats en_US with 0 digits', () {
      expect(
        formatNumber(12345.6789, 'en_US', 0),
        '12,346',
      );
    });

    test('formats id_ID with 2 digits', () {
      expect(
        formatNumber(12345.6789, 'id_ID', 2),
        '12.345,68',
      );
    });

    test('formats pl_PL with 3 digits', () {
      final result = formatNumber(12345.6789, 'pl_PL', 3);

      final expectedResult = '12 345,679'.replaceAll(' ', '\u00A0');

      expect(
        result,
        expectedResult,
      );
    });

    test('uses en_US when locale is null', () {
      expect(
        formatNumber(12345.6789, null, 2),
        '12,345.68',
      );
    });

    test('uses en_US when locale is empty', () {
      expect(
        formatNumber(12345.6789, '', 2),
        '12,345.68',
      );
    });

    test('formats negative number', () {
      expect(
        formatNumber(-9876.543, 'en_US', 2),
        '-9,876.54',
      );
    });

    test('handles zero', () {
      expect(
        formatNumber(0, 'en_US', 2),
        '0.00',
      );
    });

    test('rounds decimal values correctly', () {
      expect(
        formatNumber(12.3456, 'en_US', 2),
        '12.35',
      );
    });

    test('handles large numbers', () {
      expect(
        formatNumber(9999999999.99, 'en_US', 2),
        '9,999,999,999.99',
      );
    });
  });
}
