// ignore_for_file: unnecessary_null_comparison

import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/view/screen/loginmbile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import '../../utils/helper/imageName.dart';
import '../../utils/helper/constant.dart';

class WelcomeUI extends StatelessWidget {
  const WelcomeUI({Key? key}) : super(key: key);
  static const Name = '/WelcomeUI';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    MediaQuerypage.init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical!,
              horizontal: MediaQuerypage.safeBlockHorizontal!),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  ImageName.welcomeuipic,
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.fill,
                  width: MediaQuerypage.screenWidth! * 0.9,
                  height: MediaQuerypage.screenHeight! * 0.5,
                ),
                Text(Constant.welcometext, style: textTheme.labelLarge),
                Text(Constant.welcometext2, style: textTheme.displaySmall),
              ]),
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            Get.toNamed(LoginUi.Name);
          },
          child: const Text('Continue'),
        ),
      ),
    );
  }
}
