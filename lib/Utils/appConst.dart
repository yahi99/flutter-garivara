
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class AppConst{
  static final Color appRed = Color(0xff0C8102E);
  static final Color themeRed = Color(0xff0C8102E);
  static final Color themeGrey = Color(0xff707070);
  static final Color textBlue = Color(0xff0C0A3E);
  static final Color appGreen = Color(0xff2ECC71);
  static final Color greenColor = Color(0xff2ECC71);
  static final Color appBlue = Color(0xff2699FB);
  static final Color iconColor = Color(0xff2699FB);
  static final Color textFieldBg = Color(0xffF6F7F8);
  static final Color textLight = Color(0xff54545E);
  static final Color containerBg = Color(0xffEFF4FF);
  static final Color txtBg = Color(0xffF6F7F8);
  static final Color titleColor = Colors.grey.shade800;
  static final Color greyColor = Color(0xffCFCFD0);
  static final Duration duration = Duration(milliseconds: 300);

  static final BoxShadow shadow = BoxShadow(
      color: Colors.grey,
      spreadRadius: 5,
      blurRadius: 15
  );

  static final Widget couponIcon = SvgPicture.asset(
    'assets/images/svg/coupon.svg',
    color: appBlue
  );

  static final stagListTile = [
    StaggeredTile.count(2,1),
    StaggeredTile.count(1,1),
    StaggeredTile.count(1,.5),
    StaggeredTile.count(1,.5),
    StaggeredTile.count(2,1),
    StaggeredTile.count(1,1),
    StaggeredTile.count(1,1),
    StaggeredTile.count(1,.5),
    StaggeredTile.count(1,1),
    StaggeredTile.count(1,.5),
  ];
}