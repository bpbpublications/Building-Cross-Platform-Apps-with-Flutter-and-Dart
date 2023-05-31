main() {
  print(getLevel(70));
}

String getLevel(int level) {
  // Compiler error since return statement is used wrong
  level > 60 ? return "Expert" : return "Amateur";
}