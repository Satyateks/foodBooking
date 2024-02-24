import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ColorsgridItemWidget extends StatelessWidget {
  const ColorsgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 68.adaptSize,
          width: 68.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.blueGray200,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        Container(
          height: 68.adaptSize,
          width: 68.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.blueGray500,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        Container(
          height: 68.adaptSize,
          width: 68.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.blueGray700,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        Container(
          height: 68.adaptSize,
          width: 68.adaptSize,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        Container(
          height: 68.adaptSize,
          width: 68.adaptSize,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
      ],
    );
  }
}
