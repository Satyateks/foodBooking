import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';

class MealCollapsedScreen extends StatelessWidget {
  const MealCollapsedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 19.v),
                  _buildProductPicture(context),
                  SizedBox(height: 30.v),
                  _buildProductName(context),
                  SizedBox(height: 16.v),
                  _buildDrinks(context,
                      drinksText: "Side Item",
                      required: "Required", onTapPlus: () {
                    onTapPlus(context);
                  }),
                  SizedBox(height: 5.v),
                  _buildDrinks(context,
                      drinksText: "Drinks",
                      required: "Required", onTapPlus: () {
                    onTapPlus1(context);
                  }),
                  SizedBox(height: 5.v),
                  _buildDrinks(context,
                      drinksText: "Edit Cheeseburger",
                      required: "Optional", onTapPlus: () {
                    onTapPlus2(context);
                  }),
                  SizedBox(height: 91.v),
                  _buildAddToBag(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 21.h, top: 1.v, bottom: 12.v)),
        title: AppbarSubtitleFour(
            text: "Back", margin: EdgeInsets.only(left: 1.h)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserPrimary36x36,
              margin: EdgeInsets.only(left: 27.h, top: 1.v, right: 12.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBag,
              margin: EdgeInsets.fromLTRB(27.h, 7.v, 39.h, 6.v))
        ],
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildProductPicture(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 198.v,
            width: 368.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle191x179,
                  height: 191.v,
                  width: 179.h,
                  alignment: Alignment.topRight),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle38x103,
                  height: 134.v,
                  width: 365.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 11.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle27x80,
                  height: 74.v,
                  width: 220.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 33.h))
            ])));
  }

  /// Section Widget
  Widget _buildProductName(BuildContext context) {
    return SizedBox(
        height: 74.v,
        width: 346.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 234.h,
                  child: Text("Western BBQ Cheeseburger Meal",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium!
                          .copyWith(height: 1.33)))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("340-400 Cals",
                                style: CustomTextStyles.titleSmallBluegray200)),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: CustomIconButton(
                                height: 19.adaptSize,
                                width: 19.adaptSize,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgInboxBlueGray200)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildAddToBag(BuildContext context) {
    return SizedBox(
        height: 143.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 112.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.4)))),
          Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: CustomIconButton(
                  height: 62.adaptSize,
                  width: 62.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: IconButtonStyleHelper.fillBlueGrayTL181,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgContrastBlueGray200))),
          CustomElevatedButton(
              height: 62.v,
              width: 268.h,
              text: "Add to Bag",
              margin: EdgeInsets.only(left: 22.h),
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 7.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsup,
                      height: 21.adaptSize,
                      width: 21.adaptSize)),
              alignment: Alignment.topLeft)
        ]));
  }

  /// Common widget
  Widget _buildDrinks(
    BuildContext context, {
    required String drinksText,
    required String required,
    Function? onTapPlus,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 13.v),
        decoration: AppDecoration.fillBluegray50,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text(drinksText,
                  style: CustomTextStyles.bodyLargeBluegray700
                      .copyWith(color: appTheme.blueGray700))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 6.v),
              child: Text(required,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.teal400))),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  decoration: IconButtonStyleHelper.fillBlueGrayTL14,
                  onTap: () {
                    onTapPlus!.call();
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Navigates to the mealFullScreen when the action is triggered.
  onTapPlus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealFullScreen);
  }

  /// Navigates to the mealFullScreen when the action is triggered.
  onTapPlus1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealFullScreen);
  }

  /// Navigates to the mealFullScreen when the action is triggered.
  onTapPlus2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealFullScreen);
  }
}
