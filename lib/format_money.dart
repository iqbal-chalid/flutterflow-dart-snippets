import 'package:intl/intl.dart';

String? formatMoney(double amount, String? locale) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final safeLocale = locale == null || locale.isEmpty ? 'en_US' : locale;

  final formatter = NumberFormat('#,##0.00', safeLocale);

  return formatter.format(amount);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

void main() {
  print(formatMoney(1234567.89, 'en_US'));
  print(formatMoney(1234567.89, 'id_ID'));
  print(formatMoney(1234567.89, 'pl_PL'));
}
