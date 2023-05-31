main() {
  print(demoFunction('ALLCAPS'));
  print(demo2Function('ALLCAPS'));
}

String demoFunction (String s) {
  return s.toLowerCase();
}

String demo2Function(String s) => s.toLowerCase();