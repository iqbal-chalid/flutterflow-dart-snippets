# flutterflow-dart-snippets

Reusable Dart snippets, utilities, and helpers primarily for FlutterFlow projects.

Each snippet includes:

- ready-to-copy Dart code
- required imports and dependencies
- example outputs
- standalone test coverage (for supported pure Dart functions)

You can directly copy and paste the code from each `.md` documentation file into your FlutterFlow custom functions or custom widgets.

Standalone tests are also provided to individually test and validate supported functions outside FlutterFlow.

## Custom Functions

- [formatNumber](./docs/format_number.md)
- [getDecimalPart](./docs/get_decimal_part.md)
- [getWholeNumber](./docs/get_whole_number.md)

## Custom Widgets

- [ScrollListener](./docs/scroll_listener.md)
- [CustomVideoPlayer](./docs/custom_video_player.md)

## Widget Highlights

### ScrollListener

Utility widget for detecting:

- scroll direction
- top/bottom boundaries
- overscroll behavior
- infinite loading triggers
- scroll-based animations

### CustomVideoPlayer

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

![CustomVideoPlayer Demo](./docs//assets/demo_custom_video_player.gif)
