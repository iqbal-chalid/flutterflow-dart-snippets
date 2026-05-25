# Custom Functions / removeLastChar

Removes the last character from a string.

Compatible with FlutterFlow Custom Functions.

## FlutterFlow Function Parameters

| Name  | Type   | Description             |
| ----- | ------ | ----------------------- |
| value | String | Input string to process |

## Full Function

```dart
String removeLastChar(String value) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (value.isEmpty) {
    return value;
  }

  return value.substring(0, value.length - 1);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```

## Example Outputs

| Input      | Result   |
| ---------- | -------- |
| Hello      | Hell     |
| A          |          |
| 12345      | 1234     |
| Hello!     | Hello    |
| Hello      | Hello    |
| こんにちは | こんにち |
| 1234       | 123      |
