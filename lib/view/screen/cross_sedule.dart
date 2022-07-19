import 'package:dotted_border/dotted_border.dart';
import 'package:e_learning/utils/helper/constant.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../utils/resource/ColorManager.dart';

class CrossUi_CrossShedule extends StatelessWidget {
  const CrossUi_CrossShedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical!,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
        child: Column(
          children: [
            Text(Constant.Today_Class_Schedule,
                style: Theme.of(context).textTheme.displaySmall),
            Spacer(),
            Center(
                child: DottedBorder(
              color: ColorManager.greenactive,
              borderType: BorderType.RRect,
              radius: Radius.circular(MediaQuerypage.pixel!),
              padding: EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.05,
                  width: MediaQuerypage.screenWidth! * 0.85,
                  child: Center(
                    child: Text(
                      '+  Add New Schedule',
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
