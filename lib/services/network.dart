import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking {
  Networking(this.url);
  final String? url;

  Future convertingURL() async {
    http.Response response = await http.get(Uri.parse(url!));
    if (response.statusCode == 200) {
      String data = response.body;
      return json.decode(data);
    } else {
      print(response.statusCode);
    }
  }
}
