main() {
  Map<String, String> words = {
    "a": "Apple",
    "b": "Ball",
  };

  words.forEach((key, value) {
    print("The letter is $key");
    print("The word is $value");
  });
}
