// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ScrollListener extends StatefulWidget {
  const ScrollListener({
    super.key,
    this.width,
    this.height,
    this.child,
    this.name,
    this.onScroll,
  });

  final double? width;
  final double? height;

  final Widget Function()? child;

  final String? name;

  final Future Function(
    double? offset,
    String? direction,
    String? position,
    double? distance,
    String? name,
  )? onScroll;

  @override
  State<ScrollListener> createState() => _ScrollListenerState();
}

class _ScrollListenerState extends State<ScrollListener> {
  double scrollOffset = 0;

  double previousOffset = 0;

  String scrollDirection = 'down';

  final double directionThreshold = 2.0;

  @override
  Widget build(BuildContext context) {
    final childWidget = widget.child != null ? widget.child!() : null;

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification.metrics.axis != Axis.vertical) {
          return false;
        }

        final newOffset = scrollNotification.metrics.pixels;

        final delta = newOffset - previousOffset;

        String position = '-';

        double distance = newOffset;

        if (newOffset <= scrollNotification.metrics.minScrollExtent) {
          position = 'top';

          distance = newOffset;
        } else if (newOffset >= scrollNotification.metrics.maxScrollExtent) {
          position = 'bottom';

          distance = newOffset - scrollNotification.metrics.maxScrollExtent;
        }

        if (scrollNotification is OverscrollNotification) {
          if (scrollNotification.overscroll < 0) {
            position = 'overscroll-top';

            distance = scrollNotification.overscroll;
          } else if (scrollNotification.overscroll > 0) {
            position = 'overscroll-bottom';

            distance = scrollNotification.overscroll;
          }
        }

        if (delta.abs() >= directionThreshold ||
            scrollNotification is OverscrollNotification) {
          final newDirection = delta > 0 ? 'down' : 'up';

          setState(() {
            scrollOffset = newOffset;

            scrollDirection = newDirection;

            previousOffset = newOffset;
          });

          if (widget.onScroll != null) {
            widget.onScroll!(
              scrollOffset,
              scrollDirection,
              position,
              distance,
              widget.name,
            );
          }
        }

        return false;
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        child: childWidget,
      ),
    );
  }
}
