import 'package:e_learning/utils/helper/imageName.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/ColorManager.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:e_learning/view/screen/courseui.dart';
import 'package:e_learning/view/screen/homeui.dart';
import 'package:e_learning/view/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'message.dart';

class MainAppview extends StatelessWidget {
  const MainAppview({Key? key}) : super(key: key);
  static const Name = '/MainAppview';

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    // ignore: prefer_const_constructors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ColorManager.appbarBackgroud,
      statusBarColor: ColorManager.appbarBackgroud,
      statusBarIconBrightness: Brightness.light,
    ));
    RxInt view = 0.obs;
    List <Widget>screenui = [Homeui(), CourseUI(), Message(), Profile()];
    return SafeArea(
      child: Scaffold(
        body: Obx(() => screenui[view.value]),
        bottomNavigationBar: GNav(
            // rippleColor: Colors.grey[300]!,
            // hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: ColorManager.yellolite,
            iconSize: MediaQuerypage.pixel! * 22,
            backgroundColor: ColorManager.appbarBackgroud,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            //tabBackgroundColor: Colors.grey[100]!,
            textStyle: TextStyleManager.jost14yellolite,
            //color: ColorManager.greenhover,
            selectedIndex: view.value,
            onTabChange: (index) {
              view.value = index;
            },
            tabs: [
              GButton(
                icon: Icons.home,
                leading: SvgPicture.asset(
                  ImageName.homeicon,
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.fill,
                  width: MediaQuerypage.smallSizeWidth! * 3,
                  height: MediaQuerypage.smallSizeHeight! * 3,
                ),
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                leading: SvgPicture.asset(
                  ImageName.courseicon,
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.fill,
                  width: MediaQuerypage.smallSizeWidth! * 3,
                  height: MediaQuerypage.smallSizeHeight! * 3,
                ),
                text: 'Course',
              ),
              GButton(
                icon: Icons.u_turn_right_sharp,
                leading: SvgPicture.asset(
                  ImageName.messageicon,
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.fill,
                  width: MediaQuerypage.smallSizeWidth! * 3,
                  height: MediaQuerypage.smallSizeHeight! * 3,
                ),
                text: 'Message',
              ),
              GButton(
                icon: Icons.u_turn_right_sharp,
                leading: SvgPicture.asset(
                  ImageName.profileicon,
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.fill,
                  width: MediaQuerypage.smallSizeWidth! * 3,
                  height: MediaQuerypage.smallSizeHeight! * 3,
                ),
                text: 'Profile',
              ),
            ],
          ),
        
      ),
    );
  }
}
