# Custom Functions / getProgressValue

Calculates the current progress value between `0` and a target value based on the current step progression.

Useful for:

- animated counters
- progress-based animations
- dashboard statistics
- interpolation values
- percentage-based calculations
- custom widgets
- step-based animations

## Parameters

| Name        | Type   | Description                     |
| ----------- | ------ | ------------------------------- |
| targetValue | double | Final value to achieve          |
| currentStep | int    | Current animation step          |
| totalStep   | int    | Total number of animation steps |

## Return Value

```dart
double
```

## Formula

```dart
targetValue * (currentStep / totalStep)
```

## Example Usage

```dart
final currentValue = getProgressValue(
  1200,
  5,
  10,
);
```

Result:

```text
600.0
```

## Integer Conversion Example

Useful when paired with `asInt`:

```dart
final currentValue = asInt(
  getProgressValue(
    1200,
    5,
    10,
  ),
);
```

Result:

```text
600
```

## Full Custom Function

```dart
double getProgressValue(
  double targetValue,
  int currentStep,
  int totalStep,
) {
  return (
    targetValue *
    (currentStep / totalStep)
  );
}
```

## Notes

This function is particularly useful in FlutterFlow projects to reduce inline expression complexity inside visual builders.

Instead of repeatedly writing:

```dart
(targetValue * (currentStep / totalStep))
```

the logic can be reused through a dedicated custom function.
