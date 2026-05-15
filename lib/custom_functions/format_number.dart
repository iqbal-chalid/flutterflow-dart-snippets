import 'package:intl/intl.dart';

String? formatNumber(
  double number,
  String? locale,
  int digits,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final safeLocale = locale == null || locale.isEmpty ? 'en_US' : locale;

  final pattern = digits > 0 ? '#,##0.${'0' * digits}' : '#,##0';

  final formatter = NumberFormat(pattern, safeLocale);

  return formatter.format(number);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
