import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiController extends GetxController {
  Dio _dio = Dio();

  Future<List> get2wMakes() async {
    var response = await _dio
        .get("https://test.turbocare.app/turbo/care/v1/makes?class=4w");
    if (response.statusCode == 200) {
      print(response.data);
      return response.data.toList();
    } else {
      return [];
    }
  }

  Future<List> getHondaModels() async {
    var response = await _dio
        .get("https://test.turbocare.app/turbo/care/v1/models?class=2w&make=honda");
    if (response.statusCode == 200) {
      print(response.data);
      return response.data.toList();
    } else {
      return [];
    }
  }
}
