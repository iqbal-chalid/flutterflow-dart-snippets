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

//
import 'dart:async';

class TypingText extends StatefulWidget {
  const TypingText({
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
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
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
