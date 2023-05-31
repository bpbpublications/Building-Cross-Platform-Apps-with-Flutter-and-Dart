void main() {
  doA() ?? doB();
}

doA() {
  return null;
}

doB() {
  print("Backup function");
}
