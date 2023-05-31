import 'package:flutter/material.dart';

class DemoWidget extends InheritedWidget {
  const DemoWidget({
    Key? key,
    required this.value,
    required Widget child,
  }) : super(key: key, child: child);

  final String value;

  static DemoWidget of(BuildContext context) {
    final DemoWidget? result =
        context.dependOnInheritedWidgetOfExactType<DemoWidget>();
    assert(result != null, 'No DemoWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(DemoWidget old) => value != old.value;
}
