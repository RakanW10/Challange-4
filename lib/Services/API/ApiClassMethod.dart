import 'dart:convert';

import 'package:challenge_4/Const/URLApi.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClassApi {
  static Future<Map<String, dynamic>> MethodGet(
      {required String endPoint}) async {
    try {
      var url = Uri.https(apiURL, endPoint.toString());
      var response = await http.get(url);

      Map<String, dynamic> jsonData = json.decode(response.body);
      print("The respons : ${response.toString()}");
      return jsonData;
    } catch (error) {
      print(error);
      Get.snackbar("title", "message");
      return {};
    }
  }
}
