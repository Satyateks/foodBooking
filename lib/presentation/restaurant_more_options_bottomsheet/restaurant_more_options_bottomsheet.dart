import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

class RestaurantMoreOptionsBottomsheet extends StatelessWidget {
  const RestaurantMoreOptionsBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapRestaurantMoreOptions(context);
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: 55.h,
                          child: Divider(color: appTheme.blueGray50))),
                  SizedBox(height: 46.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Order with Friends",
                                style: theme.textTheme.bodyLarge))
                      ])),
                  SizedBox(height: 21.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUserPrimary,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Add to Favourites",
                                style: theme.textTheme.bodyLarge))
                      ])),
                  SizedBox(height: 21.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSave,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Share to...",
                                style: theme.textTheme.bodyLarge))
                      ])),
                  SizedBox(height: 21.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVideoCamera,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 3.v),
                            child: Text("Report Store",
                                style: theme.textTheme.bodyLarge))
                      ])),
                  SizedBox(height: 47.v)
                ])));
  }

  /// Navigates to the restaurantTabContainerScreen when the action is triggered.
  onTapRestaurantMoreOptions(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantTabContainerScreen);
  }
}
