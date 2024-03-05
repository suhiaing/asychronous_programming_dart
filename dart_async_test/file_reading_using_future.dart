import 'dart:io';

Future<void> main() async {
  try {
    var file = File('readme1.txt');
    var contents = await file.readAsString();
    print(contents);
  } on FileSystemException catch (e) {
    print(e);
  }
  print("Hi");
}
