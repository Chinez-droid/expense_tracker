import 'package:flutter/material.dart';

// extended class for displaying the chart bar
class ChartBar extends StatelessWidget {
  const ChartBar({
    super.key,
    required this.fill,
  });

  // property to set our height used by the other class
  final double fill;

  @override
  Widget build(BuildContext context) {
    // dynamically derive whether we're in dark mode or not with the help of media query
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: FractionallySizedBox(
          heightFactor: fill, // 0<>1 between 0 & 1. 0 - nothing, 1 - 100%
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              color: isDarkMode
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.65),
            ),
          ),
        ),
      ),
    );
  }
}
