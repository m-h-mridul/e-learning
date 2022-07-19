// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class CrossController extends GetxController {
  static CrossController to() => Get.find<CrossController>();

  RxInt croossui_view = 0.obs;
  viewChnage(int viewscrenn) {
    croossui_view.value = viewscrenn;
  }
}
