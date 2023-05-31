import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> getInstance() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs;
}

void createValue() async {
  var prefs = await getInstance();
  String key = 'key1';
  int value = 3;
  prefs.setInt(key, value);
}

void readValue() async {
  var prefs = await getInstance();
  String key = 'key1';
  int? value = prefs.getInt(key);
}

void updateValue() async {
  var prefs = await getInstance();
  String key = 'key1';
  int updatedValue = 3;
  prefs.setInt(key, updatedValue);
}

void deleteValue() async {
  var prefs = await getInstance();
  String key = 'key1';
  prefs.remove(key);
}
