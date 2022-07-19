import 'package:e_learning/utils/helper/constant.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/view/screen/level.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class StudyPlan extends StatelessWidget {
  const StudyPlan({Key? key}) : super(key: key);
  static const Name = '/StudyPlan';
  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical!,
            horizontal: MediaQuerypage.safeBlockHorizontal!),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(Constant.studyplaneheader,
              style: Theme.of(context).textTheme.displaySmall),
          Text(Constant.studyplaneheader2,
              style: Theme.of(context).textTheme.titleSmall),
          Container(
            width: MediaQuerypage.screenWidth!,
            height: MediaQuerypage.screenHeight! * 0.5,
            color: Colors.red,
          ),
          Spacer(),
          CircleAvatar(
            child: Text('Skip', style: Theme.of(context).textTheme.labelSmall),
            radius: MediaQuerypage.pixel! * 15,
          ),
          SizedBox(
            height: MediaQuerypage.smallSizeHeight! * 4,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Get.toNamed(Level.Name);
        },
        child: const Text('Continue'),
      ),
    ));
  }
}
