import 'package:intl/intl.dart';

import 'package:intl/intl.dart';

String? getDecimalPart(
  double amount,
  String? locale,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final safeLocale = locale == null || locale.isEmpty ? 'en_US' : locale;

  final formatter = NumberFormat('#,##0.00', safeLocale);

  final formatted = formatter.format(amount);

  final decimalSeparator =
      NumberFormat.decimalPattern(safeLocale).symbols.DECIMAL_SEP;

  final parts = formatted.split(decimalSeparator);

  if (parts.length < 2) {
    return null;
  }

  return parts.last;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
