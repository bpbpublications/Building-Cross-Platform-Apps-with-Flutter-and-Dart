main() async {
  print('Before sleep');
  await Future.delayed(Duration(seconds: 1));
  print('After sleep');
}