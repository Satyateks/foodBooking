import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class QuickfiltersItemWidget extends StatelessWidget {
  const QuickfiltersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 10.v,
        right: 15.h,
        bottom: 10.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "32, Kingston Ln.",
        style: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgLinkedin,
        height: 19.adaptSize,
        width: 19.adaptSize,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: false,
      backgroundColor: appTheme.red10001.withOpacity(0.5),
      selectedColor: appTheme.red10001.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
