import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(String this.url);
  String url;
  Future<dynamic> getData() async {
    http.Response respons = await http.get(Uri.parse(url));
    if (respons.statusCode == 200) {
      String data = respons.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(respons.statusCode);
    }
  }
}
