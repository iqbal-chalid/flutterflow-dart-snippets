# flutterflow-dart-snippets

Reusable Dart snippets, utilities, widgets, and implementation patterns primarily for FlutterFlow projects.

The repository contains:

- ready-to-copy Dart code
- FlutterFlow custom widgets
- FlutterFlow implementation patterns
- required imports and dependencies
- example outputs
- standalone test coverage (for supported pure Dart functions)

You can directly copy and paste the code from each `.md` documentation file into your FlutterFlow custom functions, custom actions, or custom widgets.

Standalone tests are also provided to individually test and validate supported functions outside FlutterFlow.

---

# Documentation Structure

```text
docs/
├── assets/
├── custom_functions/
├── custom_widgets/
└── patterns/
```

---

# Custom Functions

- [formatNumber](./docs/custom_functions/format_number.md)
- [getDecimalPart](./docs/custom_functions/get_decimal_part.md)
- [getWholeNumber](./docs/custom_functions/get_whole_number.md)
- [safeSubstring](./docs/custom_functions/safe_substring.md)
- [textLength](./docs/custom_functions/text_length.md)

---

# Custom Widgets

- [ScrollListener](./docs/custom_widgets/scroll_listener.md)
- [CustomVideoPlayer](./docs/custom_widgets/custom_video_player.md)

---

# Patterns

Implementation references and reusable FlutterFlow architecture patterns.

- [ExpandableChevron](./docs/patterns/expandable_chevron.md)

---

# Widget Highlights

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
