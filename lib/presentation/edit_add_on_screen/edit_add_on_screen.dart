import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'widgets/fruitpunchjuicecomponent_item_widget.dart';

class EditAddOnScreen extends StatelessWidget {
  const EditAddOnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildDrinks(context),
                  SizedBox(height: 24.v),
                  _buildFruitPunchJuiceComponent(context),
                  Spacer(),
                  _buildSave(context)
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
            text: "Western BBQ ... Meal", margin: EdgeInsets.only(left: 1.h)),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildDrinks(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 14.v),
        decoration: AppDecoration.fillBluegray50,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Drinks", style: theme.textTheme.titleLarge),
                        SizedBox(height: 2.v),
                        Text("Edit Juice",
                            style: CustomTextStyles.bodyLargeBluegray500)
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 19.v, bottom: 18.v),
                  child: Text("Required", style: CustomTextStyles.labelLarge_1))
            ]));
  }

  /// Section Widget
  Widget _buildFruitPunchJuiceComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 34.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return FruitpunchjuicecomponentItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return SizedBox(
        height: 137.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 112.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.4)))),
          CustomElevatedButton(
              height: 50.v,
              width: 348.h,
              text: "Save",
              buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
              onPressed: () {
                onTapSave(context);
              },
              alignment: Alignment.topCenter)
        ]));
  }

  /// Navigates to the mealFullScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealFullScreen);
  }
}
