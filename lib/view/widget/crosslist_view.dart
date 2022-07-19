import 'package:e_learning/model/crosslist.dart';
import 'package:e_learning/utils/helper/imageName.dart';
import 'package:e_learning/utils/helper/media.dart';
import 'package:e_learning/utils/resource/ColorManager.dart';
import 'package:e_learning/utils/resource/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

GridView crossList_view(BuildContext context) {
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height * .7),
      ),
      itemCount: crosslist.length,
      itemBuilder: (BuildContext ctx, index) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical!,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
          ),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                crosslist[index].imagename,
                semanticsLabel: 'A red up arrow',
                fit: BoxFit.fill,
                width: MediaQuerypage.screenWidth! * 0.25,
                height: MediaQuerypage.screenHeight! * 0.18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    crosslist[index].name,
                    style: TextStyleManager.jost17black,
                  ),
                  Text(
                    crosslist[index].price + "\$",
                    style: TextStyleManager.jost17black,
                  ),
                ],
              ),
              Text(
                'Created By: ' + crosslist[index].creator,
                style: TextStyleManager.jost14black,
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    crosslist[index].lession + ' Lession',
                    style: TextStyleManager.jost14black,
                  ),
                  Spacer(),
                  Text(
                    crosslist[index].rating,
                    style: TextStyleManager.jost14black,
                  ),
                  Icon(Icons.star, size: MediaQuerypage.pixel! * 9,color: ColorManager.yellolite,),
                ],
              ),
            ],
          ),
        );
      });
}
