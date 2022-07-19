import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/resource/ColorManager.dart';

ListTile otherlogin({String? imgaename, String? buttonName, Color? color}) {
  return ListTile(
    shape: RoundedRectangleBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(MediaQuerypage.pixel! * 11)),
    ),
    tileColor: color!,
    leading: SvgPicture.asset(
      imgaename!,
      semanticsLabel: 'A red up arrow',
      fit: BoxFit.fill,
      width: MediaQuerypage.smallSizeWidth! * 8,
      height: MediaQuerypage.smallSizeHeight! * 3.5,
    ),
    title: Text(
      buttonName!,
      style: TextStyleManager.jost15white,
      textAlign: TextAlign.center,
    ),
  );
}
