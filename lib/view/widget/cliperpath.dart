import 'package:flutter/cupertino.dart';

class Customcliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    Path path = Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(0, 15, size.width / 2, 30);
    // path.quadraticBezierTo(30, size.height / 2, 10, size.height - 30);
    // path.quadraticBezierTo(0, size.height - 15, 0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return false;
  }
}
