import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RestaurantMoreInfoBottomsheet extends StatelessWidget {
  const RestaurantMoreInfoBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 167.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Divider(
          color: appTheme.blueGray50,
        ),
      ),
    );
  }
}
