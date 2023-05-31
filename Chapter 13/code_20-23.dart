import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Code13_21_23 extends StatelessWidget {
  const Code13_21_23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box = Hive.box<Person>('personBox');
    return ValueListenableBuilder<Box<Person>>(
      valueListenable: box.listenable(),
      builder: (context, Box<Person> box, _) {
        return ListView.builder(
          itemBuilder: (_, index) {
            return Text(box.getAt(index)!.name);
          },
        );
      },
    );
  }
}

@HiveType(typeId: 1)
class Person extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int age;
  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
