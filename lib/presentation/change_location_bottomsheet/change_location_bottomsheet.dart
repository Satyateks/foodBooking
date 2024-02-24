import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';
import 'widgets/addresscomponent_item_widget.dart';

// ignore_for_file: must_be_immutable
class ChangeLocationBottomsheet extends StatelessWidget {
  ChangeLocationBottomsheet({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 55.h, child: Divider(color: appTheme.blueGray50))),
              SizedBox(height: 40.v),
              Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text("Edit Address",
                      style: theme.textTheme.headlineSmall)),
              SizedBox(height: 11.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Look for an Address",
                          alignment: Alignment.center))),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text("Saved Locations",
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 23.v),
              _buildAddressComponent(context),
              SizedBox(height: 19.v),
              _buildThirtySix(context),
              SizedBox(height: 31.v),
              _buildFrameSeventyFive(context),
              SizedBox(height: 23.v),
              Divider(),
              SizedBox(height: 197.v),
              _buildUseCurrentLocation(context)
            ]));
  }

  /// Section Widget
  Widget _buildAddressComponent(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.5.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.blueGray100)));
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return AddresscomponentItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, right: 26.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recents", style: theme.textTheme.titleLarge),
                  Padding(
                      padding: EdgeInsets.only(top: 4.v, bottom: 6.v),
                      child: Text("CLEAR ALL",
                          style: CustomTextStyles.labelLargeRed300))
                ])));
  }

  /// Section Widget
  Widget _buildFrameSeventyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 56.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgLinkedinPrimary,
              height: 28.adaptSize,
              width: 28.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 5.v),
              child: Text("56, George Avenue, Brampton, ON",
                  style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildUseCurrentLocation(BuildContext context) {
    return SizedBox(
        height: 114.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 112.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.4)))),
          CustomElevatedButton(
              width: 348.h,
              text: "Use Current Location",
              buttonStyle: CustomButtonStyles.fillTeal,
              buttonTextStyle: CustomTextStyles.titleMediumBold,
              onPressed: () {
                onTapUseCurrentLocation(context);
              },
              alignment: Alignment.topCenter)
        ]));
  }

  /// Navigates to the editLocationScreen when the action is triggered.
  onTapUseCurrentLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editLocationScreen);
  }
}
