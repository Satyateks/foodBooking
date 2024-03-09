import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/widgets/custom_radio_button.dart';
import 'widgets/sideitem_item_widget.dart';

// ignore_for_file: must_be_immutable
class MealFullScreen extends StatelessWidget {
  MealFullScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = ["lbl_soft_drinks", "lbl_juices"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildProductPicture(context),
                                SizedBox(height: 10.v),
                                _buildProductName(context),
                                SizedBox(height: 26.v),
                                _buildSideItem(context),
                                SizedBox(height: 32.v),
                                _buildDrinks(context),
                                SizedBox(height: 18.v),
                                _buildGroup251(context),
                                SizedBox(height: 17.v),
                                _buildFruitPunchJuice(context),
                                SizedBox(height: 20.v),
                                _buildEditCheeseburger(context),
                                SizedBox(height: 18.v),
                                _buildSesameSeedBun(context),
                                SizedBox(height: 28.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, right: 21.h),
                                    child: _buildChipotleSauce(context,
                                        chipotleSauce: "BBQ Sauce", one: "1")),
                                SizedBox(height: 30.v),
                                _buildBeefPatty(context),
                                SizedBox(height: 20.v),
                                _buildCheese(context),
                                SizedBox(height: 29.v),
                                _buildBananaPeppers(context),
                                SizedBox(height: 28.v),
                                _buildLettuce(context),
                                SizedBox(height: 28.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, right: 21.h),
                                    child: _buildChipotleSauce(context,
                                        chipotleSauce: "Chipotle Sauce",
                                        one: "1")),
                                SizedBox(height: 28.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 21.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle32x92,
                                              height: 32.v,
                                              width: 92.h),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h,
                                                  top: 5.v,
                                                  bottom: 5.v),
                                              child: Text("Sesame Seed Bun",
                                                  style: CustomTextStyles
                                                      .titleMediumInterPrimary17))
                                        ])))
                              ]))))
                ])),
            bottomNavigationBar: _buildAddToBag(context)));
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
  // Widget _buildProductInfo(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 15.h),
  //       child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             SizedBox(
  //               // width: 274.h,
  //               child: Text("Western BBQ \nCheeseburger Meal",
  //                   maxLines: 2,
  //                   overflow: TextOverflow.ellipsis,
  //                   style:
  //                       theme.textTheme.headlineMedium!.copyWith(height: 1.56)),
  //             ),
  //             Opacity(
  //                 opacity: 0.34,
  //                 child: Padding(
  //                   padding: EdgeInsets.only(top: 8.v, bottom: 58.v),
  //                   child: Text("340-400 Cals",
  //                       style: CustomTextStyles.titleSmallPrimary),
  //                 )),
  //             Opacity(
  //                 opacity: 0.34,
  //                 child: CustomImageView(
  //                     imagePath: ImageConstant.imgInbox,
  //                     height: 19.adaptSize,
  //                     width: 19.adaptSize,
  //                     margin:
  //                         EdgeInsets.only(left: 4.h, top: 7.v, bottom: 57.v)))
  //           ]));
  // }
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
  Widget _buildSideItem(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 18.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SideitemItemWidget(onTapBtnImageClass: () {
            onTapBtnImageClass(context);
          });
        });
  }

  /// Section Widget
  Widget _buildDrinks(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 13.v),
        decoration: AppDecoration.fillBluegray50,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child:
                  Text("Drinks", style: CustomTextStyles.bodyLargeOnPrimary)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 6.v),
              child: Text("Required", style: theme.textTheme.labelLarge)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  decoration: IconButtonStyleHelper.fillBlueGrayTL14,
                  onTap: () {
                    onTapBtnUpload(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgUpload)))
        ]));
  }

  /// Section Widget
  Widget _buildGroup251(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Column(children: [
          CustomRadioButton(
              width: 348.h,
              text: "Soft Drinks",
              value: radioList[0],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              }),
          Padding(
              padding: EdgeInsets.only(top: 31.v),
              child: CustomRadioButton(
                  width: 348.h,
                  text: "Juices",
                  value: radioList[1],
                  groupValue: radioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFruitPunchJuice(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFruitPunchJuice(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 19.v),
            decoration: AppDecoration.outlineBluegray200
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame,
                      height: 33.v,
                      width: 38.h,
                      margin: EdgeInsets.only(left: 7.h)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 2.h, top: 6.v, bottom: 5.v),
                      child: Text("Fruit Punch Juice",
                          style: theme.textTheme.bodyLarge)),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                      child: Text("Edit",
                          style: CustomTextStyles.titleSmallMedium_1)),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 4.v))
                ])));
  }

  /// Section Widget
  Widget _buildEditCheeseburger(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 14.v),
        decoration: AppDecoration.fillBluegray50,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
              child: Text("Edit Cheeseburger",
                  style: CustomTextStyles.bodyLargeOnPrimary)),
          CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL14,
              onTap: () {
                onTapBtnUpload1(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgUpload))
        ]));
  }

  /// Section Widget
  Widget _buildSesameSeedBun(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle30x86,
              height: 30.v,
              width: 86.h),
          Padding(
              padding: EdgeInsets.only(left: 2.h, top: 4.v, bottom: 5.v),
              child: Text("Sesame Seed Bun",
                  style: CustomTextStyles.titleMediumInterPrimary)),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: Text("Edit", style: CustomTextStyles.titleSmallMedium_1)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildBeefPatty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle33x88,
              height: 33.v,
              width: 88.h,
              margin: EdgeInsets.only(bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Beef Patty",
                        style: CustomTextStyles.titleMediumInterPrimary),
                    SizedBox(height: 1.v),
                    Text("1.59 ea",
                        style: CustomTextStyles.bodyMediumDeeporange300)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUpload))),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 8.v),
              child: Text("1", style: CustomTextStyles.bodyLarge_1)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 2.v, bottom: 3.v),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildCheese(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle16x79,
              height: 16.v,
              width: 79.h,
              margin: EdgeInsets.symmetric(vertical: 11.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text("Cheese",
                            style: CustomTextStyles.titleMediumInterPrimary)),
                    SizedBox(height: 3.v),
                    Text("0.59 ea",
                        style: CustomTextStyles.bodyMediumDeeporange300)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgUpload))),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v),
              child: Text("1", style: CustomTextStyles.bodyLarge_1)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 3.v, bottom: 3.v),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildBananaPeppers(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle20x70,
              height: 20.v,
              width: 70.h,
              margin: EdgeInsets.symmetric(vertical: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 3.v),
              child: Text("Banana Peppers",
                  style: CustomTextStyles.titleMediumInterPrimary17)),
          Spacer(),
          CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(imagePath: ImageConstant.imgUpload)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 5.v),
              child: Text("1", style: CustomTextStyles.bodyLarge_1)),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildLettuce(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle14x85,
              height: 14.v,
              width: 85.h,
              margin: EdgeInsets.symmetric(vertical: 9.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 5.v),
              child: Text("Lettuce",
                  style: CustomTextStyles.titleMediumInterPrimary17)),
          Spacer(),
          CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(imagePath: ImageConstant.imgUpload)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 5.v),
              child: Text("1", style: CustomTextStyles.bodyLarge_1)),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildAddToBag(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 49.v),
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
                              width: 21.adaptSize)))),
              Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: CustomIconButton(
                      height: 62.adaptSize,
                      width: 62.adaptSize,
                      padding: EdgeInsets.all(19.h),
                      decoration: IconButtonStyleHelper.fillRedTL181,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFavoriteRed300)))
            ]));
  }

  /// Common widget
  Widget _buildChipotleSauce(
    BuildContext context, {
    required String chipotleSauce,
    required String one,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgRectangle18x82,
          height: 18.v,
          width: 82.h,
          margin: EdgeInsets.only(top: 8.v, bottom: 6.v)),
      Padding(
          padding: EdgeInsets.only(left: 7.h, top: 7.v, bottom: 3.v),
          child: Text(chipotleSauce,
              style: CustomTextStyles.titleMediumInterPrimary17
                  .copyWith(color: theme.colorScheme.primary))),
      Spacer(),
      CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          padding: EdgeInsets.all(6.h),
          child: CustomImageView(imagePath: ImageConstant.imgUpload)),
      Padding(
          padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 5.v),
          child: Text(one,
              style: CustomTextStyles.bodyLarge_1
                  .copyWith(color: theme.colorScheme.primary))),
      Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(imagePath: ImageConstant.imgPlus)))
    ]);
  }

  /// Navigates to the mealCollapsedScreen when the action is triggered.
  onTapBtnImageClass(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealCollapsedScreen);
  }

  /// Navigates to the mealCollapsedScreen when the action is triggered.
  onTapBtnUpload(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealCollapsedScreen);
  }

  /// Navigates to the editAddOnScreen when the action is triggered.
  onTapFruitPunchJuice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editAddOnScreen);
  }

  /// Navigates to the mealCollapsedScreen when the action is triggered.
  onTapBtnUpload1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealCollapsedScreen);
  }
}
