import 'package:e_learning/utils/helper/butttonName.dart';
import 'package:e_learning/utils/helper/constantheading.dart';
import 'package:e_learning/utils/helper/imageName.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:e_learning/view/screen/registationui.dart';
import 'package:e_learning/view/screen/studyplan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

import '../../controller/loginController.dart';
import '../../utils/resource/ColorManager.dart';
import '../../utils/helper/constant.dart';
import '../widget/otherlogin.dart';

class LoginUi extends GetView<LoginController> {
  LoginUi({Key? key}) : super(key: key);
  static const Name = '/LoginUI';

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical!,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
          ),
          child: Obx(
            () => Form(
              key: controller.fromkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical! * 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(RegistationUI.Name);
                          },
                          child: Text(
                            'Sign Up',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    Constant.loginheader,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    Constant.loginheader2,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: MediaQuerypage.smallSizeHeight! * 6,
                  ),
                  emaileditor(),
                  SizedBox(
                    height: MediaQuerypage.smallSizeHeight! * 2,
                  ),
                  passwordeditor(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical! * 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuerypage.smallSizeHeight! * 2,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed(StudyPlan.Name);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuerypage.screenWidth!,
                            MediaQuerypage.screenHeight! * 0.06),
                      ),
                      child: const Text('Sign in')),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 3),
                    child: Text('Or'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuerypage.safeBlockVertical! * 2),
                    child: Text(
                      Constant.loginheader3,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  otherlogin(
                    imgaename: ImageName.appleicon,
                    buttonName: Buttonname.applebutton,
                    color: ColorManager.blackgrey,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 1),
                    child: otherlogin(
                      imgaename: ImageName.gooleicon,
                      buttonName: Buttonname.google,
                      color: ColorManager.softpink,
                    ),
                  ),
                  otherlogin(
                    imgaename: ImageName.facebookicon,
                    buttonName: Buttonname.facebook,
                    color: ColorManager.bluelight,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField emaileditor() {
    return TextFormField(
      controller: controller.email,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderRadius:
              BorderRadius.all(Radius.circular(MediaQuerypage.pixel! * 9)),
        ),
        filled: true,
        fillColor: ColorManager.white,
        prefixIcon: const Icon(
          Icons.email,
          //color: AppColor.red_appcolor,
        ),
        hintText: ConstantHeading.email,
      ),
    );
  }

  TextFormField passwordeditor() {
    return TextFormField(
      controller: controller.password,
      obscureText: controller.obsequirecview.value,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderRadius:
              BorderRadius.all(Radius.circular(MediaQuerypage.pixel! * 9)),
        ),
        filled: true,
        fillColor: ColorManager.white,
        prefixIcon: const Icon(
          Icons.lock,
          //color: AppColor.red_appcolor,
        ),
        hintText: ConstantHeading.password,
        suffixIcon: IconButton(
          onPressed: () {
            controller.obsequirecview.value = !controller.obsequirecview.value;
          },
          icon: controller.obsequirecview.value
              ? const Icon(
                  Icons.visibility_off,
                )
              : const Icon(
                  Icons.visibility,
                ),
        ),
      ),
    );
  }
}
