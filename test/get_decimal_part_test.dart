import 'package:test/test.dart';
import 'package:flutterflow_dart_snippets/get_decimal_part.dart';

void main() {
  group('getDecimalPart', () {
    test('returns decimal part for en_US locale', () {
      expect(
        getDecimalPart(1234567.89, 'en_US'),
        '89',
      );
    });

    test('returns decimal part for id_ID locale', () {
      expect(
        getDecimalPart(1234567.89, 'id_ID'),
        '89',
      );
    });

    test('returns decimal part for negative number', () {
      expect(
        getDecimalPart(-1234.56, 'en_US'),
        '56',
      );
    });

    test('returns 00 for whole number', () {
      expect(
        getDecimalPart(1000, 'en_US'),
        '00',
      );
    });

    test('uses en_US when locale is null', () {
      expect(
        getDecimalPart(1234.78, null),
        '78',
      );
    });

    test('uses en_US when locale is empty', () {
      expect(
        getDecimalPart(1234.78, ''),
        '78',
      );
    });

    test('rounds correctly', () {
      expect(
        getDecimalPart(1234.567, 'en_US'),
        '57',
      );
    });
  });
}
