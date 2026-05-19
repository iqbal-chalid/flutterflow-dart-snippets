# Custom Widgets / CountUp

Headless count up animation widget for FlutterFlow.

Unlike traditional animated counter widgets, `CountUp` does not render any visible UI.

Instead, it emits animated values through a callback, allowing you to fully control:

- text styling
- number formatting
- layout
- localization
- custom UI rendering
- multiple synchronized widgets

This approach keeps presentation completely separated from animation logic.

Useful for:

- animated statistics
- dashboard counters
- KPI cards
- animated balances
- progress animations
- custom text rendering
- synchronized UI updates

---

# Demo

![CountUp Demo](../assets/demo_count_up.gif)

---

# Features

- Headless logic widget
- No visual rendering
- Lightweight animation engine
- Callback-based updates
- Fully customizable external UI
- Works with any FlutterFlow Text widget
- Supports integer and double values
- Reusable animation logic

---

# FlutterFlow Widget Parameters

| Name          | Type   | Description                              |
| ------------- | ------ | ---------------------------------------- |
| targetValue   | double | Final value to achieve                   |
| totalStep     | int    | Total number of counting steps           |
| countInterval | int    | Delay between updates in milliseconds    |
| onChanged     | Action | Callback triggered on every value change |

---

# onChanged Callback Parameters

The `onChanged` callback automatically provides the current animated value.

| Name  | Type   | Description                     |
| ----- | ------ | ------------------------------- |
| value | double | Current animated progress value |

---

# Typical FlutterFlow Usage

Inside the `onChanged` callback action:

1. Receive the `value` callback parameter
2. Store into:
   - App State
   - Page State
   - Component State
3. Display using standard FlutterFlow widgets

Example flow:

```text
CountUp
    ↓
onChanged(value)
    ↓
Update State
    ↓
Display Using Text Widget
```

---

# Recommended Size

Since this widget has no visual output:

```text
Width: 0
Height: 0
```

---

# Full Widget

```dart
// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class CountUp extends StatefulWidget {
  const CountUp({
    super.key,
    this.width,
    this.height,
    required this.targetValue,
    required this.totalStep,
    required this.countInterval,
    required this.onChanged,
  });

  final double? width;
  final double? height;

  final double targetValue;
  final int totalStep;
  final int countInterval;

  final Future Function(double value) onChanged;

  @override
  State<CountUp> createState() => _CountUpState();
}

class _CountUpState extends State<CountUp> {
  int currentStep = 0;

  Timer? timer;

  @override
  void initState() {
    super.initState();

    startCounting();
  }

  void startCounting() {
    timer = Timer.periodic(
      Duration(milliseconds: widget.countInterval),
      (timer) async {
        currentStep++;

        double currentValue = getProgressValue(
          widget.targetValue,
          currentStep,
          widget.totalStep,
        );

        await widget.onChanged(currentValue);

        if (currentStep >= widget.totalStep) {
          timer.cancel();
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
```
