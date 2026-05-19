# flutterflow-dart-snippets

Reusable Dart snippets, utilities, widgets, and implementation patterns primarily for FlutterFlow projects.

The repository contains:

- ready-to-copy Dart code
- FlutterFlow custom functions
- FlutterFlow custom actions
- FlutterFlow custom widgets
- FlutterFlow implementation patterns
- required imports and dependencies
- example outputs
- standalone test coverage (for supported pure Dart functions)

You can directly copy and paste the code from each `.md` documentation file into your FlutterFlow custom functions, custom actions, or custom widgets.

Standalone tests are also provided to individually test and validate supported pure Dart functions outside FlutterFlow.

---

# Documentation Structure

```text
docs/
├── assets/
├── custom_actions/
├── custom_functions/
├── custom_widgets/
└── patterns/
```

---

# Custom Actions

- [postLog](./docs/custom_actions/post_log.md)

---

# Custom Functions

- [asInt](./docs/custom_functions/as_int.md)
- [formatNumber](./docs/custom_functions/format_number.md)
- [getDecimalPart](./docs/custom_functions/get_decimal_part.md)
- [getProgressValue](./docs/custom_functions/get_progress_value.md)
- [getWholeNumber](./docs/custom_functions/get_whole_number.md)
- [safeSubstring](./docs/custom_functions/safe_substring.md)
- [textLength](./docs/custom_functions/text_length.md)

---

# Custom Widgets

## Headless Widgets

- [CountUp](./docs/custom_widgets/count_up.md)
- [TypingEffect](./docs/custom_widgets/typing_effect.md)

## Utility Widgets

- [ScrollListener](./docs/custom_widgets/scroll_listener.md)

## Visual Widgets

- [CustomVideoPlayer](./docs/custom_widgets/custom_video_player.md)

---

# Patterns

Implementation references and reusable FlutterFlow architecture patterns.

- [ExpandableChevron](./docs/patterns/expandable_chevron.md)

---

# Action Highlights

## postLog

Simple remote logging custom action for FlutterFlow.

Useful for:

- debugging API flows
- debugging authentication
- debugging app state
- inspecting runtime values
- debugging physical devices
- lightweight remote logging

Supports:

- simple plain text logging
- local FastAPI logging server
- emulator debugging
- physical device debugging
- lightweight HTTP logging workflows

---

# Function Highlights

## asInt

Helper function for converting `double` values into `int`.

Useful for reducing inline expression complexity inside FlutterFlow visual builders.

Commonly used together with:

- animation calculations
- interpolation values
- progress calculations
- dashboard counters
- percentage-based calculations

---

## getProgressValue

Calculates the current progress value between `0` and a target value based on step progression.

Useful for:

- animated counters
- progress-based animations
- interpolation values
- dashboard statistics
- custom widgets
- step-based animations

---

# Widget Highlights

## CountUp

Headless count up animation widget for FlutterFlow.

Unlike traditional animated counter widgets, `CountUp` does not render any visible UI.

Instead, it emits animated values through a callback, allowing complete control over:

- text styling
- number formatting
- layout
- localization
- custom UI rendering
- synchronized widgets

Demo:

![CountUp Demo](./docs/assets/demo_count_up.gif)

---

## TypingEffect

Headless typing animation widget for FlutterFlow.

Unlike traditional typing text widgets, `TypingEffect` does not render any visible UI.

Instead, it progressively emits text through callbacks, allowing complete control over:

- text styling
- layout
- localization
- RichText rendering
- custom UI rendering
- synchronized widgets

---

## ScrollListener

Utility widget for detecting:

- scroll direction
- top/bottom boundaries
- overscroll behavior
- infinite loading triggers
- scroll-based animations

---

## CustomVideoPlayer

Customizable video player foundation for FlutterFlow.

Supports:

- custom progress bars
- custom play/pause buttons
- buffering callbacks
- completed callbacks
- seek support
- externally controlled playback
- custom autoplay behavior

Demo:

![CustomVideoPlayer Demo](./docs/assets/demo_custom_video_player.gif)
