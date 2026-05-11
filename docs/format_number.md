# Custom Functions / formatNumber

Formats numbers into locale-aware formatted strings with configurable decimal digits.

Compatible with FlutterFlow Custom Functions.

## Tested Locales

- `en_US`
- `id_ID`
- `pl_PL`

If `locale` is null or empty, the function defaults to `en_US`.

## FlutterFlow Function Parameters

| Name   | Type    | Description                     |
| ------ | ------- | ------------------------------- |
| number | double  | Number to format                |
| locale | String? | Locale code (e.g. en_US, id_ID) |
| digits | int     | Number of decimal digits        |

## Required Package

```yaml
dependencies:
  intl: ^0.19.0
```

## Required Import

```dart
import 'package:intl/intl.dart';
```

## Full Function

```dart
import 'package:intl/intl.dart';

String? formatNumber(
  double number,
  String? locale,
  int digits,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final safeLocale =
      locale == null || locale.isEmpty
          ? 'en_US'
          : locale;

  final pattern =
      digits > 0
          ? '#,##0.${'0' * digits}'
          : '#,##0';

  final formatter =
      NumberFormat(pattern, safeLocale);

  return formatter.format(number);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```

## Example Outputs

| Locale | Digits | Result        |
| ------ | ------ | ------------- |
| en_US  | 2      | 1,234,567.89  |
| en_US  | 0      | 1,234,568     |
| id_ID  | 2      | 1.234.567,89  |
| pl_PL  | 3      | 1 234 567,890 |
