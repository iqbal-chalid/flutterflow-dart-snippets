import 'package:intl/intl.dart';

String? getWholeNumber(
  double amount,
  String? locale,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final safeLocale = locale == null || locale.isEmpty ? 'en_US' : locale;

  final formatter = NumberFormat('#,##0.00', safeLocale);

  final formatted = formatter.format(amount);

  final decimalSeparator =
      NumberFormat.decimalPattern(safeLocale).symbols.DECIMAL_SEP;

  return formatted.split(decimalSeparator).first;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
