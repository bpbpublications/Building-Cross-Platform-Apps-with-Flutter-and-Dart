import 'package:hive/hive.dart';

Future<Box> getInstance() async {
  Box box = await Hive.openBox('demoBox');
  return box;
}

void createValue() async {
  var box = await getInstance();
  box.put('demoKey', 'Demo Value');
  box.put('demoList', [1, 2, 3, 4, 5]);
  box.put('demoInteger', 3);
}

void openLazyBox() async {
  var lazyBox = await Hive.openLazyBox('demoBox');
  var value = await lazyBox.get('demoLazyKey');
}

void useEncryptedBox() async {
  var encryptionKey = Hive.generateSecureKey();
  // Please store this encryption key somewhere, for example using a
  // package like flutter_secure_storage since this will be required to
  // unencrypt the values in the box.
  var encryptedBox = await Hive.openBox(
    'demoEncrypedBox',
    encryptionCipher: HiveAesCipher(encryptionKey),
  );
  encryptedBox.put('encryptedKey', 'encryptedValue');
}
