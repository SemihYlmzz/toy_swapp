import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RepeatlyFade extends StatefulWidget {
  const RepeatlyFade({
    required this.child,
    required this.repeat,
    required this.onEnd,
    super.key,
  });
  final Widget child;
  final bool repeat;
  final VoidCallback onEnd;

  @override
  State<RepeatlyFade> createState() => _RepeatlyFadeState();
}

class _RepeatlyFadeState extends State<RepeatlyFade>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this)
      ..addListener(() {
        if (_animationController.status == AnimationStatus.completed) {
          _animationController.reverse();
        }
        if (_animationController.status == AnimationStatus.dismissed) {
          widget.onEnd();
          if (widget.repeat) {
            _animationController.forward();
          }
        }
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
          delay: Durations.long1,
          duration: Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
        ),
      ],
      controller: _animationController,
      child: widget.child,
    );
  }
}
