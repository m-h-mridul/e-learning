import 'package:e_learning/utils/helper/butttonName.dart';
import 'package:e_learning/utils/helper/constant.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:e_learning/view/widget/appbar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/helper/imageName.dart';
import '../../utils/resource/ColorManager.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        //wrap with PreferredSize
        preferredSize: Size(MediaQuerypage.screenWidth!,
            MediaQuerypage.screenHeight! * 0.25), //height of appbar
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical!,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          color: ColorManager.appbarBackgroud,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  ImageName.menuicon,
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.fill,
                  width: MediaQuerypage.smallSizeWidth! * 10,
                  height: MediaQuerypage.smallSizeHeight! * 5,
                  alignment: Alignment.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.yellolite,
                  radius: MediaQuerypage.pixel! * 25,
                  child: SizedBox(),
                ),
                SizedBox(
                  width: MediaQuerypage.screenWidth! * 0.073,
                ),
                Column(
                  children: [
                    Text('Rakibul Hasan', style: TextStyleManager.jost22white),
                    Text('rakibulhasan@gmail.com',
                        style: TextStyleManager.jost15white),
                  ],
                ),
              ],
            ),
          ]),
          //appbar background color
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical!,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
        child: Column(
          children: [
            Container(
              width: MediaQuerypage.screenWidth!,
              height: MediaQuerypage.screenHeight! * 0.25,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuerypage.safeBlockVertical!,
                horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
              ),
              decoration: BoxDecoration(
                  color: ColorManager.svgmerketimage,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Complate Course',
                          style: TextStyleManager.jost20white),
                      Container(
                        width: MediaQuerypage.smallSizeWidth! * 20,
                        height: MediaQuerypage.smallSizeHeight! * 4,
                        //color: ColorManager.white,
                        decoration: BoxDecoration(
                            color: ColorManager.gray,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'Upgrade',
                            style: TextStyleManager.jost15white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuerypage.screenHeight! * 0.17,
                    width: MediaQuerypage.screenWidth! * 0.9,
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical!,
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: MediaQuerypage.screenHeight! * 0.14,
                              width: MediaQuerypage.screenWidth! * 0.3,
                              //padding: ,
                              color: Color.fromARGB(255, 236, 215, 207),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    ImageName.cross_Marketing2,
                                    semanticsLabel: 'A red up arrow',
                                    fit: BoxFit.fill,
                                    // width: MediaQuerypage.screenWidth! * 0.55,
                                    width: MediaQuerypage.smallSizeWidth! * 16,
                                    height: MediaQuerypage.smallSizeHeight! * 9,
                                    alignment: Alignment.center,
                                  ),
                                  Text('Marketing',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  Text('By:Mridul',
                                      style: TextStyleManager.jost14grey),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuerypage.screenWidth!,
              height: MediaQuerypage.screenHeight! * 0.37,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuerypage.safeBlockVertical!,
                horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
              ),
              decoration: BoxDecoration(
                  color: ColorManager.gray,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Suggested for you',
                    style: TextStyleManager.jost15white,
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: MediaQuerypage.screenHeight! * 0.14,
                              width: MediaQuerypage.screenWidth! * 0.3,
                              //padding: ,
                              decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    ImageName.cross_Marketing2,
                                    semanticsLabel: 'A red up arrow',
                                    fit: BoxFit.fill,
                                    width: MediaQuerypage.smallSizeWidth! * 17,
                                    height: MediaQuerypage.smallSizeHeight! * 8,
                                    alignment: Alignment.center,
                                  ),
                                  Text('Marketing',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  Text('By:Mridul',
                                      style: TextStyleManager.jost14grey),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Text(
                    'Top rated',
                    style: TextStyleManager.jost15white,
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: MediaQuerypage.screenHeight! * 0.14,
                              width: MediaQuerypage.screenWidth! * 0.3,
                              decoration: BoxDecoration(
                                  color: ColorManager.whiteblue,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    ImageName.cross_Marketing2,
                                    semanticsLabel: 'A red up arrow',
                                    fit: BoxFit.fill,
                                    // width: MediaQuerypage.screenWidth! * 0.55,
                                    width: MediaQuerypage.smallSizeWidth! * 17,
                                    height: MediaQuerypage.smallSizeHeight! * 8,
                                    alignment: Alignment.center,
                                  ),
                                  Text('Marketing',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  Text('By:Mridul',
                                      style: TextStyleManager.jost14grey),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
