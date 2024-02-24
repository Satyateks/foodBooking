import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import '../widgets/frame_item_widget.dart';

// ignore: must_be_immutable
class RestaurantcardItemWidget extends StatelessWidget {
  const RestaurantcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.v),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 44.adaptSize,
                width: 44.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillRedTL22,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLogo36x36,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "McDonald’s",
                      style: theme.textTheme.bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedinBlueGray200,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Text(
                          "Bramlea & Sandalwood",
                          style: CustomTextStyles.labelLargeBluegray200_1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 62.h),
                child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillBlueGrayTL181,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrastBlueGray200,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 21.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserPrimarycontainer,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "200m",
                  style: CustomTextStyles.labelLargeBluegray700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: SizedBox(
                  height: 22.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignalBlueGray100,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "(1,293)",
                  style: CustomTextStyles.labelLargeBluegray200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 60.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "OPEN",
                  textAlign: TextAlign.right,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 67.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 11.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return FrameItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
