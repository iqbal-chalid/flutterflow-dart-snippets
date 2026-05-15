import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/custom_functions/get_whole_number.dart';

void main() {
  group('getWholeNumber', () {
    test('formats en_US correctly', () {
      expect(
        getWholeNumber(1234567.89, 'en_US'),
        '1,234,567',
      );
    });

    test('formats id_ID correctly', () {
      expect(
        getWholeNumber(1234567.89, 'id_ID'),
        '1.234.567',
      );
    });

    test('formats pl_PL correctly', () {
      final result = getWholeNumber(1234567.89, 'pl_PL');

      String expectedResult = '1 234 567'.replaceAll(' ', '\u00A0');

      expect(
        result,
        expectedResult,
      );
    });

    test('uses en_US when locale is null', () {
      expect(
        getWholeNumber(1000.50, null),
        '1,000',
      );
    });

    test('uses en_US when locale is empty', () {
      expect(
        getWholeNumber(1000.50, ''),
        '1,000',
      );
    });

    test('handles zero', () {
      expect(
        getWholeNumber(0, 'en_US'),
        '0',
      );
    });

    test('handles negative numbers', () {
      expect(
        getWholeNumber(-1234.56, 'en_US'),
        '-1,234',
      );
    });

    test('handles large numbers', () {
      expect(
        getWholeNumber(9999999999.99, 'en_US'),
        '9,999,999,999',
      );
    });

    test('removes decimal part completely', () {
      expect(
        getWholeNumber(1234.01, 'en_US'),
        '1,234',
      );
    });

    test('works with whole numbers', () {
      expect(
        getWholeNumber(5000, 'en_US'),
        '5,000',
      );
    });
  });
}
