import 'dart:io';
import 'dart:convert';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getInstance() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  var path = join(documentsDirectory.path, "DemoDB.db");
  return await openDatabase(path, version: 1, onOpen: (db) {
    // Any operation on open
  }, onCreate: (Database db, int version) async {
    await db.execute("CREATE TABLE Person ("
        "id INTEGER PRIMARY KEY,"
        "name TEXT,"
        "age INTEGER"
        ")");
  }, onUpgrade: (Database db, int oldVersion, int newVersion) {
    // Write code to deal with upgrades here
  }, onDowngrade: (Database db, int oldVersion, int newVersion) {
    // Write code to deal with downgrades here
  });
}

Future<int> createValue(Person person) async {
  var db = await getInstance();
  var result = await db.insert('Person', person.toJson());
  return result;
}

Future<List<Person>> readValue(String id) async {
  var db = await getInstance();
  var result = await db.query("Person", where: "id = ?", whereArgs: [id]);
  return result.map((e) => Person.fromJson(e)).toList();
}

Future<int> updateValue(Person person) async {
  var db = await getInstance();
  var result = await db.update("Person", person.toJson(),
      where: "id = ?", whereArgs: [person.id]);
  return result;
}

Future<int> deleteValue(String id) async {
  var db = await getInstance();
  var result = db.delete("Person", where: "id = ?", whereArgs: [id]);
  return result;
}

// To parse this JSON data, do
//
//     final person = personFromJson(jsonString);

Person personFromJson(String str) => Person.fromJson(json.decode(str));

String personToJson(Person data) => json.encode(data.toJson());

class Person {
  String id;
  String name;
  int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        id: json["id"],
        name: json["name"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
      };
}
