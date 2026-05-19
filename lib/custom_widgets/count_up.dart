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
