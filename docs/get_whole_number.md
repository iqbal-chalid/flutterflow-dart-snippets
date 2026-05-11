# Custom Functions / getWholeNumber

Extracts the whole number portion from a localized formatted number string.

Compatible with FlutterFlow Custom Functions.

## Tested Locales

- `en_US`
- `id_ID`
- `pl_PL`

If `locale` is null or empty, the function defaults to `en_US`.

## FlutterFlow Function Parameters

| Name | Type | Description |
|---|---|---|
| amount | double | Number to format |
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
String? getWholeNumber(
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

  return formatted.split(decimalSeparator).first;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```

## Example Outputs

| Locale | Input   | Result |
| ------ | ------- | ------ |
| en_US  | 1234.56 | 1,234  |
| id_ID  | 1234.56 | 1.234  |
| pl_PL  | 1234.56 | 1 234  |
