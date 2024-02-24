import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SideitemItemWidget extends StatelessWidget {
  SideitemItemWidget({
    Key? key,
    this.onTapBtnImageClass,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnImageClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBluegray50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "Side Item",
              style: CustomTextStyles.bodyLargeOnPrimary,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "Required",
              style: theme.textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL14,
              onTap: () {
                onTapBtnImageClass!.call();
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgUpload,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
