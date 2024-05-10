import 'dart:convert';
import 'package:http/http.dart' as http;


class GetData {
  
  Future<Map<String, dynamic>> getData({required String endpoint}) async {
    Uri url =
        Uri.parse('endpoint');
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
    var data  = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);

    return data;
  }
}