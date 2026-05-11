# Custom Functions / formatMoney

Formats numbers into locale-aware money strings.

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
String? formatMoney(
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

  return formatter.format(amount);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```

## Example Outputs

| Locale | Result       |
| ------ | ------------ |
| en_US  | 1,234,567.89 |
| id_ID  | 1.234.567,89 |
| pl_PL  | 1 234 567,89 |
