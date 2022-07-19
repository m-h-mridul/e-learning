import 'package:e_learning/controller/loginController.dart';
import 'package:e_learning/controller/registation.dart';
import 'package:get/instance_manager.dart';

class Registationbuinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistationController>(() => RegistationController());
  }
}
