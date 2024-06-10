import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
   SlidingText({
    super.key,
    required this.slidingAnimation
  });
  late Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
