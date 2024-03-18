import 'dart:convert';

import 'package:http/http.dart' as http;

int calculate() {
  return 6 * 7;
}

Future<void> getAPI() async {
  try {
    final Uri uri = Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?q=London,uk&APPID=dd169bc21a42fb3c3bfbdb12a9ec0717");
    final res = await http.get(uri);
    final data = jsonDecode(res.body);

    if (data["cod"] != "200") {
      throw data["message"];
    } else {
      print(data["list"][0]["main"]["temp"]);
    }
  } catch (e) {
    print(e);
  }
}

void main() {
  getAPI();
}
