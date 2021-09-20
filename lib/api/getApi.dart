import 'dart:convert';

import 'package:http/http.dart' as http;

class datagetter {

  Future<List<dynamic>> getData(String seacrhing) async {
    Uri link = Uri.parse(
        "https://api.edamam.com/api/recipes/v2?type=public&q=$seacrhing&app_id=a03c43af&app_key=e5d79dffe2b66474ff75017f1e0f357d");
    var connecting = await http.get(link);
    if (connecting.statusCode == 200)
      print("connected");
    else
      print("eror");
    return jsonDecode(connecting.body)['hits'];
  }
}
