import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProps>()
      ..add(
        AniProps.opacity,
        Tween(begin: 0.0, end: 1.0),
        const Duration(milliseconds: 500),
      )
      ..add(
        AniProps.translateY,
        Tween(begin: -130.0, end: 0.0),
        const Duration(milliseconds: 500),
        Curves.easeOut,
      );

    return PlayAnimation(
      tween: tween,
      child: child,
      duration: tween.duration,
      delay: Duration(milliseconds: (500 * delay).round()),
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0, animation.get(AniProps.translateY)),
          child: child,
        ),
      ),
    );
  }
}
