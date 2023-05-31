import 'package:flutter/material.dart';

class Code15_4_17 extends StatefulWidget {
  const Code15_4_17({Key? key}) : super(key: key);

  @override
  State<Code15_4_17> createState() => _Code15_4_17State();
}

class _Code15_4_17State extends State<Code15_4_17>
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
        child: Container(
          width: sizeAnimation.value,
          height: sizeAnimation.value,
          color: Colors.green,
        ),
      ),
    );
  }
}
