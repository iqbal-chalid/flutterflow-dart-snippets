# Custom Functions / getDecimalPart

Extracts the decimal portion from a localized formatted number string.

Compatible with FlutterFlow Custom Functions.

## Tested Locales

- `en_US`
- `id_ID`
- `pl_PL`

If `locale` is null or empty, the function defaults to `en_US`.

## FlutterFlow Function Parameters

| Name   | Type    | Description                     |
| ------ | ------- | ------------------------------- |
| amount | double  | Number to format                |
| locale | String? | Locale code (e.g. en_US, id_ID) |

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
String? getDecimalPart(
  double amount,
  String? locale,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final safeLocale =
      locale == null || locale.isEmpty
          ? 'en_US'
          : locale;

  final formatter =
      NumberFormat('#,##0.00', safeLocale);

  final formatted =
      formatter.format(amount);

  final decimalSeparator =
      NumberFormat.decimalPattern(safeLocale)
          .symbols
          .DECIMAL_SEP;

  final parts =
      formatted.split(decimalSeparator);

  if (parts.length < 2) {
    return null;
  }

  return parts.last;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```

## Example Outputs

| Locale | Input    | Result |
| ------ | -------- | ------ |
| en_US  | 1234.56  | 56     |
| id_ID  | 1234.56  | 56     |
| pl_PL  | 1234.56  | 56     |
| en_US  | 1000     | 00     |
| en_US  | -9876.54 | 54     |
