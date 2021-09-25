import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fooder_lich_2/data_from_edamame.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class datagetter {

  Future <Food> getData(String seacrhing) async {
    var dio = Dio();
    dio.interceptors.add(PrettyDioLogger(requestBody: true,responseHeader: true,maxWidth: 100));
    final response = await dio.get('https://api.edamam.com/api/recipes/v2?type=public&q=$seacrhing&app_id=a03c43af&app_key=e5d79dffe2b66474ff75017f1e0f357d');
    if(response.statusCode == 200){
      print("connect");
      return Food.fromMap(jsonDecode(jsonEncode(response.data)));
    }else{
      print("Not Connect");
      throw Exception();
    }
  }
}
