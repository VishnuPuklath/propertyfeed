import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices {
  final String baseUrl = "https://api.idxbroker.com";
  final String accessKey = "AIwiReh2-FGeJ3zeN@P4et";
  final Map<String, String> _headers = {
    'Content-Type': 'application/x-www-form-urlencoded',
    'accesskey': 'AIwiReh2-FGeJ3zeN@P4et',
    'outputtype': 'json',
  };
  //to get all properties
  Future<List<dynamic>> getPropertyFeeds() async {
    final url = Uri.parse('$baseUrl/clients/featured');
    try {
      final response = await http.get(url, headers: _headers);
      print(response.body);
      if (response.statusCode == 200) {
        return json.decode(response.body) as List<dynamic>;
      } else {
        throw Exception(
            "Failed to fetch property feeds. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Error fetching property feeds: $e");
    }
  }
}
