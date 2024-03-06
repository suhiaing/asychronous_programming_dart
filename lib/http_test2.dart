import 'package:http/http.dart' as http;

void main() {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  print("Hello 1\n");
  http.get(url).then((value) {
    print(value);
  });
  print("\nHello 2");
}
