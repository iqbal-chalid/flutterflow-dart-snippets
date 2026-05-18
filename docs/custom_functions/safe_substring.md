# Custom Functions / safeSubstring

Safely extracts part of a string using start and end indexes without throwing range errors.

Compatible with FlutterFlow Custom Functions.

## Behavior

- Automatically clamps indexes to valid string range
- Returns empty string if:
  - input text is empty
  - `startIndex >= endIndex`
- Prevents substring range exceptions

## FlutterFlow Function Parameters

| Name       | Type   | Description                |
| ---------- | ------ | -------------------------- |
| text       | String | Source text                |
| startIndex | int    | Starting index (inclusive) |
| endIndex   | int    | Ending index (exclusive)   |

## Required Package

No additional package required.

## Required Import

No additional import required.

## Full Function

```dart
String safeSubstring(
  String text,
  int startIndex,
  int endIndex,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (text.isEmpty) return '';

  startIndex = startIndex.clamp(0, text.length);
  endIndex = endIndex.clamp(0, text.length);

  if (startIndex >= endIndex) return '';

  return text.substring(startIndex, endIndex);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```
