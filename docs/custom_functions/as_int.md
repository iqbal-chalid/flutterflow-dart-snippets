# Custom Functions / asInt

Converts a `double` value into `int`.

Useful for reducing inline expression complexity inside FlutterFlow expression builders.

Especially useful when working with:

- animation progress values
- percentage calculations
- division results
- interpolated values
- custom widgets
- dashboard counters

## Parameters

| Name  | Type   | Description             |
| ----- | ------ | ----------------------- |
| value | double | Value to convert to int |

## Return Value

```dart
int
```

## Example Usage

```dart
asInt(
  getProgressValue(
    targetValue,
    currentStep,
    totalStep,
  ),
)
```

## Full Custom Function

```dart
int asInt(
  double value,
) {
  return value.toInt();
}
```

## Notes

This function exists primarily to simplify FlutterFlow inline expression workflows.

In standard Dart or Flutter projects, `.toInt()` is usually sufficient:

```dart
value.toInt()
```

However, in FlutterFlow visual builders, helper functions can reduce expression editing friction and improve readability.
