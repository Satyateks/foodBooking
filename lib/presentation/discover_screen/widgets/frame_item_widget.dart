import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.v,
      width: 68.h,
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle48x106,
        height: 34.v,
        width: 59.h,
        alignment: Alignment.topLeft,
      ),
    );
  }
}
