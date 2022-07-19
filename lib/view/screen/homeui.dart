import 'package:e_learning/utils/helper/constant.dart';
import 'package:e_learning/utils/helper/imageName.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/ColorManager.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:e_learning/view/widget/crosslist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/helper/butttonName.dart';
import '../widget/appbar_button.dart';
import '../widget/cross_progress.dart';

class Homeui extends StatelessWidget {
  const Homeui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    // ignore: prefer_const_constructors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ColorManager.appbarBackgroud,
      statusBarColor: ColorManager.appbarBackgroud,
      statusBarIconBrightness: Brightness.light,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            //wrap with PreferredSize
            preferredSize: Size(MediaQuerypage.screenWidth!,
                MediaQuerypage.screenHeight! * 0.2), //height of appbar
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical!,
                  horizontal: MediaQuerypage.safeBlockHorizontal!),
              color: ColorManager.appbarBackgroud,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.05,
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
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: ColorManager.gray,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorManager.gray, width: 2),
                              ),
                              hintText: 'Search course',
                              hintStyle: TextStyle(color: ColorManager.gray),
                            ),
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
                  Text(
                    Constant.dashboardheader,
                    style: TextStyleManager.jost20white,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth! * 3,
                        ),
                        appbar_button(button_name: Buttonname.allcouse,color: ColorManager.gray),
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth! * 3,
                        ),
                        appbar_button(button_name: Buttonname.ui_uxdesigner,color: ColorManager.gray),
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth! * 3,
                        ),
                        appbar_button(button_name: Buttonname.development,color: ColorManager.gray),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
                //appbar background color
              ),
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical!,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Buttonname.Ongoing_Courses,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cross_progress(
                      pregress: ColorManager.yellolite,
                      background: Colors.brown,
                    ),
                    SizedBox(
                      width: MediaQuerypage.smallSizeWidth! * 2,
                    ),
                    cross_progress(
                      pregress: ColorManager.whiteblue,
                      background: ColorManager.lightgreendim,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuerypage.smallSizeHeight! * 1.5,
              ),
              Expanded(
                child: crossList_view(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
