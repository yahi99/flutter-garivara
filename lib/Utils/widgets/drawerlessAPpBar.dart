import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerlessAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double height;
  final double width;
  DrawerlessAppBar({
    @required this.height,
    @required this.width,
  });
  final String assetName = 'assets/svg/back.svg';

  @override
  Widget build(BuildContext context) {
    final Widget svgIcon = SvgPicture.asset(
      assetName,
      color: Color(0xffC8102E),width: width*60,
    );
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: svgIcon
      ),
    );
  }

  @override
  Size get preferredSize => Size(width*1000, height*70);
}