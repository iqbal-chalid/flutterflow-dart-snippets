import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/format_money.dart';

void main() {
  group('formatMoney', () {
    test('formats en_US correctly', () {
      expect(
        formatMoney(1234567.89, 'en_US'),
        '1,234,567.89',
      );
    });

    test('formats id_ID correctly', () {
      expect(
        formatMoney(1234567.89, 'id_ID'),
        '1.234.567,89',
      );
    });

    test('formats pl_PL correctly', () {
      final result = formatMoney(1234567.89, 'pl_PL');

      final expectedResult = '1 234 567,89'.replaceAll(' ', '\u00A0');

      expect(
        result,
        expectedResult,
      );
    });

    test('uses en_US when locale is null', () {
      expect(
        formatMoney(1000.5, null),
        '1,000.50',
      );
    });

    test('uses en_US when locale is empty', () {
      expect(
        formatMoney(1000.5, ''),
        '1,000.50',
      );
    });

    test('handles zero', () {
      expect(
        formatMoney(0, 'en_US'),
        '0.00',
      );
    });

    test('handles negative numbers', () {
      expect(
        formatMoney(-1234.56, 'en_US'),
        '-1,234.56',
      );
    });

    test('handles large numbers', () {
      expect(
        formatMoney(9999999999.99, 'en_US'),
        '9,999,999,999.99',
      );
    });

    test('always returns 2 decimal digits', () {
      expect(
        formatMoney(12, 'en_US'),
        '12.00',
      );
    });

    test('rounds decimal values correctly', () {
      expect(
        formatMoney(12.3456, 'en_US'),
        '12.35',
      );
    });
  });
}
