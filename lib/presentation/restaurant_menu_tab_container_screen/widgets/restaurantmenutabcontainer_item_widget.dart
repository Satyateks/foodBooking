import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class RestaurantmenutabcontainerItemWidget extends StatelessWidget {
  const RestaurantmenutabcontainerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 117.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Text(
          "Breakfast Menu",
          style: CustomTextStyles.bodyLargeBluegray20016,
        ),
      ),
    );
  }
}
