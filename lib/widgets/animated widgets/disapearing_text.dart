import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';

class DisapearingText extends StatefulWidget {
  final String s;
  const DisapearingText({Key? key, required this.s}) : super(key: key);

  @override
  State<DisapearingText> createState() => _DisapearingTextState();
}

class _DisapearingTextState extends State<DisapearingText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = IntTween(begin: 0, end: widget.s.length).animate(controller);
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: ((context, child) {
        return Text(
          '${widget.s.substring(0, animation.value)} |',
          style: textStyleOrange2,
        );
      }),
    );
  }
}
