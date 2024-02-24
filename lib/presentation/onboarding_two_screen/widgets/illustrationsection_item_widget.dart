import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class IllustrationsectionItemWidget extends StatelessWidget {
  const IllustrationsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgIllustration367x348,
      height: 367.v,
      width: 348.h,
      radius: BorderRadius.circular(
        20.h,
      ),
    );
  }
}
