import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class OffersItemWidget extends StatelessWidget {
  const OffersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle1166,
          height: 181.v,
          width: 315.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
      ),
    );
  }
}
