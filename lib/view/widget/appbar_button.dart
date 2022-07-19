// ignore_for_file: non_constant_identifier_names

import 'package:e_learning/controller/cross_contoller.dart';
import 'package:flutter/material.dart';
import '../../utils/helper/media.dart';

CrossController crossController = CrossController.to();
ElevatedButton appbar_button(
    {String? button_name,
    Color? color,
    void Function(int)? functioncall,
    int? value}) {
  return ElevatedButton(
    onPressed: () {
      functioncall!(value!);
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical! * 1.5,
          horizontal: MediaQuerypage.safeBlockHorizontal! * 4),
      primary: color,
    ),
    child: Text(button_name!),
  );
}
