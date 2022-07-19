import 'package:e_learning/building/Appcontrollerbuilding.dart';
import 'package:e_learning/building/registationbuilding.dart';
import 'package:e_learning/view/screen/mainapp.dart';
import 'package:e_learning/view/screen/loginmbile.dart';
import 'package:e_learning/view/screen/registationui.dart';
import 'package:e_learning/view/screen/studyplan.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../building/buildingcontroller.dart';
import '../view/screen/level.dart';
import '../view/screen/welcomeui.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: WelcomeUI.Name,
      page: () => WelcomeUI(),
    ),
    GetPage(
      name: LoginUi.Name,
      page: () => LoginUi(),
      binding: AuthentcationBinding(),
    ),
    GetPage(
      name: RegistationUI.Name,
      page: () => RegistationUI(),
      binding: Registationbuinding(),
    ),
    GetPage(
      name: StudyPlan.Name,
      page: () => StudyPlan(),
    ),
     GetPage(
      name: Level.Name,
      page: () => Level(),
    ),
    GetPage(
      name: MainAppview.Name,
      page: () => MainAppview(),
      binding: AppcontrollerBinding()
    ),
  ];
}
