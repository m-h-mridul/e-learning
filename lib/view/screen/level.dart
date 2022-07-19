import 'package:e_learning/utils/helper/constant.dart';
import 'package:e_learning/utils/helper/imageName.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/ColorManager.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:e_learning/view/screen/mainapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class Level extends StatelessWidget {
  Level({Key? key}) : super(key: key);
  static const Name = '/Level';
  RxInt levelselect = 1.obs;
  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical! * 2,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
        child: Obx(
          () => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(Constant.levelheader,
                style: Theme.of(context).textTheme.displaySmall),
            Text(Constant.levelheader2,
                style: Theme.of(context).textTheme.titleSmall),
            SizedBox(
              width: MediaQuerypage.screenWidth!,
              height: MediaQuerypage.screenHeight! * 0.7,
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                InkWell(
                  onTap: () {
                    levelselect.value = 1;
                  },
                  child: Levelview_one(),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    levelselect.value = 2;
                  },
                  child: Levelview_two(),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    levelselect.value = 3;
                  },
                  child: levelview_three(),
                ),
              ]),
              //decoration: BoxDecoration(),
            ),
            Spacer(),
            CircleAvatar(
              child:
                  Text('Skip', style: Theme.of(context).textTheme.labelSmall),
              radius: MediaQuerypage.pixel! * 15,
            ),
            // SizedBox(
            //   height: MediaQuerypage.smallSizeHeight! * 4,
            // )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Get.toNamed(MainAppview.Name);
        },
        child: const Text('Continue'),
      ),
    ));
  }

  Container levelview_three() {
    return Container(
                  width: MediaQuerypage.screenWidth! * 0.3,
                  height: MediaQuerypage.screenHeight! * 0.65,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuerypage.screenWidth! * 0.3,
                        height: MediaQuerypage.screenHeight! * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: levelselect.value == 3
                                ? ColorManager.greenactive
                                : ColorManager.gray,
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Text(
                          'Level',
                          style: levelselect.value == 3
                              ? TextStyleManager.jost15white
                              : TextStyleManager.jost15black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        ImageName.imageman,
                        semanticsLabel: 'A red up arrow',
                        fit: BoxFit.fill,
                        width: MediaQuerypage.screenWidth! * 0.25,
                        height: MediaQuerypage.screenHeight! * 0.5,
                      ),
                      SizedBox(
                        height: MediaQuerypage.smallSizeHeight! * 2,
                      )
                    ],
                  ),
                );
  }

  Container Levelview_two() {
    return Container(
                  width: MediaQuerypage.screenWidth! * 0.3,
                  height: MediaQuerypage.screenHeight! * 0.55,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuerypage.screenWidth! * 0.3,
                        height: MediaQuerypage.screenHeight! * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: levelselect.value == 2
                                ? ColorManager.greenactive
                                : ColorManager.gray,
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Text(
                          'Level',
                          style: levelselect.value == 2
                              ? TextStyleManager.jost15white
                              : TextStyleManager.jost15black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        ImageName.imageman,
                        semanticsLabel: 'A red up arrow',
                        fit: BoxFit.fill,
                        width: MediaQuerypage.screenWidth! * 0.28,
                        height: MediaQuerypage.screenHeight! * 0.4,
                      ),
                       SizedBox(
                        height: MediaQuerypage.smallSizeHeight! * 2,
                      )
                    ],
                  ),
                );
  }

  Container Levelview_one() {
    return Container(
                  width: MediaQuerypage.screenWidth! * 0.3,
                  height: MediaQuerypage.screenHeight! * 0.45,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuerypage.screenWidth! * 0.3,
                        height: MediaQuerypage.screenHeight! * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: levelselect.value == 1
                                ? ColorManager.greenactive
                                : ColorManager.gray,
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Text(
                          'Level',
                          style: levelselect.value == 1
                              ? TextStyleManager.jost15white
                              : TextStyleManager.jost15black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                       Spacer(),
                      SvgPicture.asset(
                        ImageName.imageman,
                        semanticsLabel: 'A red up arrow',
                        fit: BoxFit.fill,
                        width: MediaQuerypage.screenWidth! * 0.25,
                        height: MediaQuerypage.screenHeight! * 0.35,
                      ),
                       SizedBox(
                        height: MediaQuerypage.smallSizeHeight! * 2,
                      )
                    ],
                  ),
                );
  }
}
