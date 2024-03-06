import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  print("Hello 1\n");
  final response = await http.get(url);
  print("\nHello 2");

  print(response.body);
}
