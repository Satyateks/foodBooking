import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class AddresscomponentItemWidget extends StatelessWidget {
  const AddresscomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgNavHome,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 9.v,
            bottom: 12.v,
          ),
        ),
        Expanded(
          child: Container(
            width: 241.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Text(
              "34, George Avenue, Brampton,\nON L6T 8H6",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
