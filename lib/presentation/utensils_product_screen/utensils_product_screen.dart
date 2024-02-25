import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/presentation/utensils_product_one_bottomsheet/utensils_product_one_bottomsheet.dart';

class UtensilsProductScreen extends StatefulWidget {
  const UtensilsProductScreen({Key? key}) : super(key: key);

  @override
  State<UtensilsProductScreen> createState() => _UtensilsProductScreenState();
}

class _UtensilsProductScreenState extends State<UtensilsProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle57x105,
                      height: 162.v,
                      width: 365.h),
                  SizedBox(height: 17.v),
                  Container(
                      width: 338.h,
                      margin: EdgeInsets.only(left: 21.h, right: 30.h),
                      child: Text("Chopping Board from Ikea",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall!
                              .copyWith(height: 1.17))),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                                child: Text("Brand:",
                                    style:
                                        CustomTextStyles.bodyLargeBluegray700)),
                            CustomImageView(
                                imagePath: ImageConstant.imgIkeaLogo,
                                height: 25.v,
                                width: 58.h,
                                margin: EdgeInsets.only(left: 8.h))
                          ]))),
                  SizedBox(height: 21.v),
                  _buildProductDescription(context),
                  SizedBox(height: 20.v),
                  Container(
                      width: 341.h,
                      margin: EdgeInsets.only(left: 21.h, right: 27.h),
                      child: Text(
                          "You can easily turn the chopping board and use both sides when you prepare food, because it has easy-to-grip slanted edges. You can also use the chopping board as a serving ...",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeBluegray500_1
                              .copyWith(height: 1.53))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSixteen(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 21.h, top: 1.v, bottom: 12.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarSubtitleFour(
            text: "Back",
            margin: EdgeInsets.only(left: 1.h),
            onTap: () {
              onTapBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.only(left: 21.h, top: 1.v, right: 12.h)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserPrimary36x36,
              margin: EdgeInsets.only(left: 16.h, top: 1.v, right: 33.h),
              onTap: () {
                onTapUser(context);
              })
        ],
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildProductDescription(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 14.v),
        decoration: AppDecoration.fillBluegray50,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text("Product Description",
                  style: CustomTextStyles.bodyLargeOnPrimary19)),
          CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL14,
              child: CustomImageView(imagePath: ImageConstant.imgUpload))
        ]));
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 50.v),
        decoration: AppDecoration.fillWhiteA700,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: CustomElevatedButton(
                      height: 62.v,
                      text: "Add to Bag",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 7.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsup,
                              height: 21.adaptSize,
                              width: 21.adaptSize)),
                      onPressed: () {
                        onTapAddToBag(context);
                      })),
              Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: CustomIconButton(
                      height: 62.adaptSize,
                      width: 62.adaptSize,
                      padding: EdgeInsets.all(17.h),
                      decoration: IconButtonStyleHelper.fillBlueGrayTL18,
                      onTap: () {
                        onTapBtnFavorite(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFavorite)))
            ]));
  }

  /// Navigates to the utensilsScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.utensilsScreen);
  }

  /// Navigates to the utensilsScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.utensilsScreen);
  }

  /// Shows a modal bottom sheet with [UtensilsProductOneBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapUser(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => UtensilsProductOneBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the mealFullScreen when the action is triggered.
  onTapAddToBag(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealFullScreen);
  }

  /// Navigates to the utensilsProductFavedScreen when the action is triggered.
  onTapBtnFavorite(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.utensilsProductFavedScreen);
  }
}
