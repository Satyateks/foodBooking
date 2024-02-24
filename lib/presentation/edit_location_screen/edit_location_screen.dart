import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_outlined_button.dart';
import 'package:pru0234_s_application5/widgets/custom_text_form_field.dart';
import '../edit_location_screen/widgets/frameeightyeight_item_widget.dart';
import 'package:pru0234_s_application5/presentation/change_location_bottomsheet/change_location_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class EditLocationScreen extends StatelessWidget {
  EditLocationScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController typeSomethingHereOneEditTextController =
      TextEditingController();

  TextEditingController typeSomethingHereOneEditTextController1 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup9),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 54.v),
                            Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder30),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10.v),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 55.h,
                                                  child: Divider(
                                                      color: appTheme
                                                          .blueGray50))),
                                          SizedBox(height: 22.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 19.h),
                                              child: Row(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowDown,
                                                    height: 36.adaptSize,
                                                    width: 36.adaptSize,
                                                    onTap: () {
                                                      onTapImgArrowDown(
                                                          context);
                                                    }),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtBack(context);
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h,
                                                                top: 10.v,
                                                                bottom: 8.v),
                                                        child: Text("Back",
                                                            style: CustomTextStyles
                                                                .titleSmallMedium)))
                                              ])),
                                          SizedBox(height: 11.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 21.h),
                                              child: Text("Edit Address",
                                                  style: theme.textTheme
                                                      .headlineSmall)),
                                          SizedBox(height: 11.v),
                                          _buildPinLocation(context),
                                          SizedBox(height: 25.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 34.h),
                                              child: Text("Apt / Suite / Floor",
                                                  style: CustomTextStyles
                                                      .titleSmallBluegray90001Medium)),
                                          SizedBox(height: 6.v),
                                          _buildTypeSomethingHereOneEditText(
                                              context),
                                          SizedBox(height: 24.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 34.h),
                                              child: Text(
                                                  "Business / Building Name",
                                                  style: CustomTextStyles
                                                      .titleSmallBluegray90001Medium)),
                                          SizedBox(height: 6.v),
                                          _buildTypeSomethingHereOneEditText1(
                                              context),
                                          SizedBox(height: 21.v),
                                          Divider(),
                                          Spacer(),
                                          _buildSix(context)
                                        ])))
                          ]))),
                  _buildDeliveryDetailsColumn(context)
                ]))));
  }

  /// Section Widget
  Widget _buildPinLocationButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 194.h,
        text: "Pin Location",
        onPressed: () {
          onTapPinLocationButton(context);
        },
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildPinLocation(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 217.v,
            width: 348.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              SizedBox(
                  height: 193.v,
                  width: 348.h,
                  child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: CameraPosition(
                          target:
                              LatLng(37.43296265331129, -122.08832357078792),
                          zoom: 14.4746),
                      onMapCreated: (GoogleMapController controller) {
                        googleMapController.complete(controller);
                      },
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: false,
                      myLocationButtonEnabled: false,
                      myLocationEnabled: false)),
              _buildPinLocationButton(context)
            ])));
  }

  /// Section Widget
  Widget _buildTypeSomethingHereOneEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: CustomTextFormField(
            controller: typeSomethingHereOneEditTextController,
            hintText: "Type Something Here",
            hintStyle: CustomTextStyles.bodyLargeBluegray200,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildTypeSomethingHereOneEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: CustomTextFormField(
            controller: typeSomethingHereOneEditTextController1,
            hintText: "Type Something Here",
            hintStyle: CustomTextStyles.bodyLargeBluegray200,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        buttonStyle: CustomButtonStyles.fillTeal,
        buttonTextStyle: CustomTextStyles.titleMediumBold,
        onPressed: () {
          onTapSaveButton(context);
        });
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 18.v),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
            children: [SizedBox(height: 17.v), _buildSaveButton(context)]));
  }

  /// Section Widget
  Widget _buildDeliveryDetailsColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, bottom: 123.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery details",
                      style: CustomTextStyles.titleLargeSemiBold20),
                  SizedBox(height: 16.v),
                  Wrap(
                      runSpacing: 10.v,
                      spacing: 10.h,
                      children: List<Widget>.generate(
                          3, (index) => FrameeightyeightItemWidget()))
                ])));
  }

  /// Shows a modal bottom sheet with [ChangeLocationBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapImgArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChangeLocationBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [ChangeLocationBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapTxtBack(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChangeLocationBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [ChangeLocationBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapPinLocationButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChangeLocationBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [ChangeLocationBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSaveButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ChangeLocationBottomsheet(),
        isScrollControlled: true);
  }
}
