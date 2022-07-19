import 'package:e_learning/controller/loginController.dart';
import 'package:get/instance_manager.dart';

class AuthentcationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
