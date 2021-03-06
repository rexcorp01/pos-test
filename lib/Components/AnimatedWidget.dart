import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedWidgets extends StatelessWidget {
  final Widget widget;
  final double virticaloffset;
  final double horizontalOffset;
  final double duration;

  const AnimatedWidgets(
      {Key key, this.widget, this.virticaloffset, this.horizontalOffset, this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: 2,
      duration: Duration(seconds: duration != null ? duration.toInt() : 1),
      child: SlideAnimation(
        horizontalOffset: horizontalOffset ?? 20,
        verticalOffset: virticaloffset ?? 20,
        child: FadeInAnimation(
          child: widget,
        ),
      ),
    );
  }
}
