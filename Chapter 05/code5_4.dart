main() {
  print(getLevel(70));
}

String getLevel(int level) {
  return level > 60 ? "Expert" : "Amateur";
}
