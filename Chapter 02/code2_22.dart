main() {
  Set<int> demoSet = {1, 2, 3};
  demoSet.add(4);
// Result: {1,2,3,4}
  demoSet.add(1);
// Result: {1,2,3,4} (No extra 1)
}
