import 'dart:convert';

import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.urlString);
  final String urlString;

  Future getData() async {
    var url = Uri.parse(urlString);
    Response response = await get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      String actualData = jsonDecode(data);
      return actualData;
    } else {
      return 'invalid';
    }
  }
}
