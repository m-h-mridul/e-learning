// ignore_for_file: camel_case_types

import 'package:e_learning/utils/helper/constant.dart';
import 'package:e_learning/utils/helper/imageName.dart';
import 'package:e_learning/utils/resource/ColorManager.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/helper/media.dart';

class Crossui_StudyUi extends StatelessWidget {
  const Crossui_StudyUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Step> stepList() => [
          Step(
            isActive: true,
            state: StepState.complete,
            title: Text(
              Constant.All_Lesson_of_Marketing,
              style: TextStyleManager.jost17black,
            ),
            content: Text(
              Constant.Here_52_Lesson_and_complete_32_lesson,
              style: TextStyleManager.jost14black,
            ),
            //content: SizedBox()),
          ),
          const Step(
            isActive: true,
            state: StepState.complete,
            title: Text('what is marketing? 56 Minutes'),
            content: Text('Address'),
          ),
          const Step(
              isActive: true,
              state: StepState.complete,
              title: Text('What is your definition of marketing?'),
              content: Center(
                child: Text('Confirm'),
              )),
          const Step(
              isActive: true,
              state: StepState.complete,
              title: Text('What are 3 Definitions of marketing?'),
              content: Text('Confirm')),
          const Step(
              isActive: true,
              state: StepState.complete,
              title: Text('What is your definition of marketing?'),
              content: Center(
                child: Text('Confirm'),
              )),
          const Step(
              isActive: true,
              state: StepState.editing,
              title: Text('What are 3 Definitions of marketing?'),
              content: Text('Confirm')),
          const Step(
              isActive: true,
              state: StepState.disabled,
              title: Text('What is your definition of marketing?'),
              content: Center(
                child: Text('Confirm'),
              )),
          const Step(
              isActive: true,
              state: StepState.disabled,
              title: Text('What are 3 Definitions of marketing?'),
              content: Text('Confirm')),
          const Step(
              isActive: true,
              state: StepState.disabled,
              title: Text('What is your definition of marketing?'),
              content: Center(
                child: Text('Confirm'),
              )),
          const Step(
              isActive: true,
              state: StepState.disabled,
              title: Text('What are 3 Definitions of marketing?'),
              content: Text('Confirm'))
        ];
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical!,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuerypage.screenHeight! * 0.23,
              width: MediaQuerypage.screenWidth!,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: crossui_studyui_crosslisted(context),
                    );
                  }),
            ),
            Spacer(),
            Container(
              height: MediaQuerypage.screenHeight! * 0.48,
              width: MediaQuerypage.screenWidth!,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical!,
                  horizontal: MediaQuerypage.safeBlockHorizontal!),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown),
                borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuerypage.pixel! * 5)),
              ),
              child: Stepper(
                elevation: 1,
                currentStep: 0,
                steps: stepList(),
                controlsBuilder: (context, con) {
                  return const SizedBox();
                },
              ),
            ),
          ],
        ));
  }

  Container crossui_studyui_crosslisted(BuildContext context) {
    return Container(
      height: MediaQuerypage.screenHeight! * 0.23,
      width: MediaQuerypage.screenWidth! * 0.55,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical!,
          horizontal: MediaQuerypage.safeBlockHorizontal!),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(MediaQuerypage.pixel! * 9),
            topRight: Radius.circular(MediaQuerypage.pixel! * 9)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: MediaQuerypage.screenWidth! * 0.5,
              height: MediaQuerypage.smallSizeHeight! * 13,
              decoration: BoxDecoration(
                color: ColorManager.svgmerketimage,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(MediaQuerypage.pixel! * 9),
                    topRight: Radius.circular(MediaQuerypage.pixel! * 9)),
              ),
              child: SvgPicture.asset(
                ImageName.cross_Marketing2,
                semanticsLabel: 'A red up arrow',
                fit: BoxFit.fill,
                width: MediaQuerypage.screenWidth! * 0.55,
                //  width: MediaQuerypage.smallSizeWidth! * 16,
                height: MediaQuerypage.smallSizeHeight! * 10,
                alignment: Alignment.center,
              ),
            ),
          ),
          Text('Marketing', style: Theme.of(context).textTheme.labelMedium),
          // Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '32 Lesson',
                style: TextStyleManager.jost15black,
              ),
              Text(
                '20 Lesson',
                style: TextStyleManager.jost14grey,
              )
            ],
          ),
          const LinearProgressIndicator(
            value: 0.5,
            color: ColorManager.black,
            backgroundColor: ColorManager.gray,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.brown),
          ),
          // Center(
          //   child: ClipPath(
          //       clipper: Customcliper(),
          //       child: Container(
          //         height: MediaQuerypage.smallSizeHeight! * 5,
          //         width: MediaQuerypage.smallSizeWidth! * 5,
          //         color: Colors.red,
          //       )),
          // )
        ],
      ),
    );
  }
}
