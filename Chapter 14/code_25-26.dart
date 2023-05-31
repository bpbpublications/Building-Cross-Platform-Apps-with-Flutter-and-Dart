import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'code_24.dart';

final arithmeticProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class DemoPage extends ConsumerWidget {
  const DemoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // use ref to listen to a provider
    final value = ref.watch(arithmeticProvider);
    return Text('$value');
  }
}

class DemoPage2 extends ConsumerStatefulWidget {
  const DemoPage2({Key? key}) : super(key: key);
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends ConsumerState<DemoPage> {
  @override
  void initState() {
    super.initState();
    ref.read(arithmeticProvider);
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(arithmeticProvider);
    return Text('$value');
  }
}
