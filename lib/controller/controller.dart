import 'dart:developer';

import 'package:get/get.dart';
import 'package:igmi_task/model/model.dart';
import 'package:igmi_task/service/service.dart';

class HomeController extends GetxController {
  List<Listed> list = [];
  bool isLoading = false;

  @override
  void onInit() {
    super.onInit();
    createUser();
  }

  createUser() async {
    isLoading = true;
    // print("123456");

    // print(value.toString());
    Time? timeRespoModel = await TimeSerivce.instance.slot();
    // log(timeRespoModel!.message);
    if (timeRespoModel!.message == "Data found") {
      print(timeRespoModel.status.toString());
      list.clear();
      list.addAll(timeRespoModel.listed);
      log(timeRespoModel.listed.toString());
      update();
    }
    update();
    isLoading = false;
  }
}
