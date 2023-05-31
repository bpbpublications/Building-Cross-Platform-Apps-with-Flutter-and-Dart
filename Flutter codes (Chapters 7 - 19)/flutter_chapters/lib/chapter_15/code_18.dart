import 'package:flutter/material.dart';

class Code15_18 extends StatefulWidget {
  const Code15_18({Key? key}) : super(key: key);

  @override
  State<Code15_18> createState() => _Code15_18State();
}

class _Code15_18State extends State<Code15_18>
    with SingleTickerProviderStateMixin {
  var sizeTween = Tween<double>(begin: 10.0, end: 100.0);
  late AnimationController animationController;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    sizeAnimation = sizeTween.animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Demo'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: sizeAnimation,
          builder: (context, wid) {
            return Container(
              width: sizeAnimation.value,
              height: sizeAnimation.value,
              color: Colors.green,
            );
          },
        ),
      ),
    );
  }
}
