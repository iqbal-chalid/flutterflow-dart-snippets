String safeSubstring(
  String text,
  int startIndex,
  int endIndex,
) {
  if (text.isEmpty) return '';

  startIndex = startIndex.clamp(0, text.length);
  endIndex = endIndex.clamp(0, text.length);

  if (startIndex >= endIndex) return '';

  return text.substring(startIndex, endIndex);
}
