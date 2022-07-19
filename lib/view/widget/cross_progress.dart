import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/ColorManager.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:flutter/material.dart';

Container cross_progress({
  Color? background,
  Color? pregress,
}) {
  return Container(
    height: MediaQuerypage.screenHeight! * 0.12,
    width: MediaQuerypage.screenWidth! * 0.75,
    decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 5)),
    padding: EdgeInsets.symmetric(
        vertical: MediaQuerypage.safeBlockVertical! * 2,
        horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
    child: Column(
      children: [
        Text(
          '3D Essential - CenemaD ',
          style: TextStyleManager.jost15white,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '32 Lesson',
                style: TextStyleManager.jost14yellolite,
              ),
              Text(
                '20 Lesson',
                style: TextStyleManager.jost14yellolite,
              )
            ],
          ),
        ),
        LinearProgressIndicator(
          value: 0.5,
          color: ColorManager.black,
          backgroundColor: ColorManager.gray,
          valueColor: AlwaysStoppedAnimation<Color>(pregress!),
        )
      ],
    ),
  );
}
