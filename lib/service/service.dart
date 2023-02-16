import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:igmi_task/model/model.dart';

class TimeSerivce {
  TimeSerivce._instans();
  static TimeSerivce instance = TimeSerivce._instans();
  factory TimeSerivce() {
    return instance;
  }
  final dio = Dio();
  Future<Time?> slot() async {
    FormData formData = FormData.fromMap({
      'date': "2023-02-07",
      'time': "10.30",
      'person': 2,
      'latitude': "53.798407",
      'longitude': "-1.548248",
    });

    try {
      
      Response response = await dio.post(
        "https://igmiweb.com/gladdenhub/Api/search_table",
        data: formData,
        options: Options(headers: {"x-api-key": "NB10SKS20AS30"}),
      );
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        // print(response.data);
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return Time.fromJson(response.data);
      }
      // } on DioError catch (e) {
      //   return errorCode.status401(e);
    } catch (e) {
      const SnackBar(
        content: Text('Error Founded'),
        backgroundColor: Color.fromARGB(255, 47, 47, 48),
      );
    }
    return null;
  }
}
