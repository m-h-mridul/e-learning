import 'package:e_learning/routes/routes.dart';
import 'package:e_learning/view/screen/mainapp.dart';
import 'package:e_learning/view/screen/welcomeui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'utils/resource/responsive.dart';
import 'utils/resource/themsdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      darkTheme: darkthem,
      title: 'Flutter Demo',
      theme: lighttheme,
      themeMode: ThemeManager.themeMode,
      initialRoute: 
      //Dashboard.Name,
      
      WelcomeUI.Name,
      //initialBinding: AuthentcationBinding(),
      home: Responsive(
        mobile: WelcomeUI(),
        tablet: Container(),
        desktop: Container(),
      ),
      getPages: AppPages.pages,
    );
  }
}
