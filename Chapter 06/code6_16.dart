import 'dart:isolate';

main() async {
  // Spawning an isolate
  var isolate = await Isolate.spawn(heavyFunction, 'id');
  // Killing an isolate
  isolate.kill(priority: Isolate.immediate);
}

void heavyFunction(String input) {

}