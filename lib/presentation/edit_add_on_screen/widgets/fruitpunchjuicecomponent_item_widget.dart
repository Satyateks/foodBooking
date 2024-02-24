import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class FruitpunchjuicecomponentItemWidget extends StatelessWidget {
  const FruitpunchjuicecomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame,
          height: 33.v,
          width: 43.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            top: 6.v,
            bottom: 5.v,
          ),
          child: Text(
            "Fruit Punch Juice",
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4.v),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Container(
            height: 14.adaptSize,
            width: 14.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                7.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
