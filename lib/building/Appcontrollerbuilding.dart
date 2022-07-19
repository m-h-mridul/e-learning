import 'package:e_learning/controller/AppContoller.dart';
import 'package:e_learning/controller/cross_contoller.dart';
import 'package:get/instance_manager.dart';

class AppcontrollerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
    Get.lazyPut<CrossController>(() => CrossController());
  }
}
