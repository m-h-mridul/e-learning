import 'package:e_learning/controller/cross_contoller.dart';
import 'package:e_learning/utils/helper/butttonName.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:e_learning/view/screen/courseui_savedcross.dart';
import 'package:e_learning/view/screen/cross_sedule.dart';
import 'package:e_learning/view/screen/Crossui_studyui.dart';
import 'package:e_learning/view/widget/appbar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../utils/helper/imageName.dart';
import '../../utils/resource/ColorManager.dart';

class CourseUI extends GetView<CrossController> {
  CourseUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> crossViewWidget = [
      CrossUi_CrossShedule(),
      Crossui_StudyUi(),
      Crossui_SavedCourse(),
    ];
    MediaQuerypage.init(context);
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuerypage.screenWidth!,
                MediaQuerypage.screenHeight! * 0.16), //height of appbar
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical!,
                  horizontal: MediaQuerypage.safeBlockHorizontal!),
              color: ColorManager.appbarBackgroud,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.065,
                    width: MediaQuerypage.screenWidth!,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImageName.menuicon,
                          semanticsLabel: 'A red up arrow',
                          fit: BoxFit.fill,
                          width: MediaQuerypage.smallSizeWidth! * 10,
                          height: MediaQuerypage.smallSizeHeight! * 5,
                        ),
                        Expanded(
                          child: Text(
                            'Your learning Process',
                            style: TextStyleManager.jost20white,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SvgPicture.asset(
                          ImageName.notificationicon,
                          semanticsLabel: 'A red up arrow',
                          fit: BoxFit.fill,
                          width: MediaQuerypage.smallSizeWidth! * 10,
                          height: MediaQuerypage.smallSizeHeight! * 5,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: MediaQuerypage.screenHeight! * 0.07,
                      width: MediaQuerypage.screenWidth! * 0.95,
                      decoration: BoxDecoration(
                          color: ColorManager.gray,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          const Spacer(),
                          appbar_button(
                              button_name: Buttonname.Class_Schedule,
                              color: ColorManager.greenactive,
                              functioncall: controller.viewChnage,
                              value: 0),
                          const Spacer(),
                          appbar_button(
                              button_name: Buttonname.Studying,
                              color: ColorManager.greenactive,
                              functioncall: controller.viewChnage,
                              value: 1),
                          const Spacer(),
                          appbar_button(
                              button_name: Buttonname.Saved,
                              color: ColorManager.greenactive,
                              functioncall: controller.viewChnage,
                              value: 2),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
                //appbar background color
              ),
            ),
          ),
          body: Obx(() => crossViewWidget[controller.croossui_view.value])),
    );
  }
}
