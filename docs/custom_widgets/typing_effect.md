# Custom Widgets / TypingEffect

Headless typing animation widget for FlutterFlow.

Unlike traditional typing text widgets, `TypingEffect` does not render any visible UI.

Instead, it progressively emits text through callbacks, allowing you to fully control:

- text styling
- layout
- localization
- RichText rendering
- custom UI rendering
- synchronized widgets

This approach keeps presentation completely separated from typing animation logic.

Useful for:

- typing animations
- AI chat simulations
- terminal effects
- onboarding screens
- animated hero text
- progressive text reveal
- storytelling UI

---

## Demo

![ScrollListener Demo](../assets/demo_typing_effect.gif)

---

# FlutterFlow Widget Parameters

| Name           | Type   | Description                               |
| -------------- | ------ | ----------------------------------------- |
| text           | String | Full text to animate                      |
| characterDelay | int    | Delay between characters in milliseconds  |
| startDelay     | int    | Initial delay before typing starts        |
| showCursor     | bool   | Show typing cursor                        |
| onChanged      | Action | Triggered whenever visible text changes   |
| onCompleted    | Action | Triggered when typing animation completes |

---

# onChanged Callback Parameters

The `onChanged` callback automatically provides the current visible text.

| Name | Type   | Description                 |
| ---- | ------ | --------------------------- |
| text | String | Current visible typing text |

---

# Typical FlutterFlow Usage

Inside the `onChanged` callback action:

1. Receive the `text` callback parameter
2. Store into:
   - App State
   - Page State
   - Component State
3. Display using standard FlutterFlow widgets

Example flow:

```text
TypingEffect
    ↓
onChanged(text)
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
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class TypingEffect extends StatefulWidget {
  const TypingEffect({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.characterDelay,
    required this.startDelay,
    required this.showCursor,
    this.onChanged,
    this.onCompleted,
  });

  final double? width;
  final double? height;

  final String text;

  final int characterDelay;
  final int startDelay;

  final bool showCursor;

  final Future Function(String? text)? onChanged;

  final Future Function()? onCompleted;

  @override
  State<TypingEffect> createState() => _TypingEffectState();
}

class _TypingEffectState extends State<TypingEffect> {
  int currentIndex = 0;

  Timer? typingTimer;

  bool showCursorState = true;

  @override
  void initState() {
    super.initState();

    startTyping();
  }

  Future<void> startTyping() async {
    if (widget.startDelay > 0) {
      await Future.delayed(
        Duration(milliseconds: widget.startDelay),
      );
    }

    typingTimer = Timer.periodic(
      Duration(milliseconds: widget.characterDelay),
      (timer) async {
        currentIndex++;

        if (currentIndex > widget.text.length) {
          timer.cancel();

          if (widget.onCompleted != null) {
            await widget.onCompleted!();
          }

          return;
        }

        String currentText = widget.text.substring(
          0,
          currentIndex,
        );

        if (widget.showCursor) {
          currentText += showCursorState ? '|' : '';
          showCursorState = !showCursorState;
        }

        await widget.onChanged?.call(currentText);
      },
    );
  }

  @override
  void dispose() {
    typingTimer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
```

---

# Notes

## Headless Widget Pattern

`TypingEffect` is implemented as a headless widget.

It performs typing animation logic only and does not render any visible UI.

This architecture keeps styling and presentation fully controlled by FlutterFlow widgets.

---

## FlutterFlow Integration

Typical workflow:

1. Add `TypingEffect`
2. Set width and height to `0`
3. Update App/Page/Component state in `onChanged`
4. Display values using standard FlutterFlow widgets

---

## Advantages Over Traditional Typing Widgets

- No styling limitations
- No text parameter complexity
- Fully reusable typing engine
- Can drive multiple widgets simultaneously
- Works with any existing FlutterFlow UI
