import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/widgets/custom_pin_code_text_field.dart';
import 'package:pru0234_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PhoneVerificationFilledScreen extends StatefulWidget {
  const PhoneVerificationFilledScreen({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationFilledScreen> createState() =>
      _PhoneVerificationFilledScreenState();
}

class _PhoneVerificationFilledScreenState
    extends State<PhoneVerificationFilledScreen> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Verify Phone Number",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 1.v),
                      Container(
                          width: 314.h,
                          margin: EdgeInsets.only(left: 3.h, right: 36.h),
                          child: Text(
                              "We have sent you a 6 digit code. \nPlease enter here to verify your number.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray500_1
                                  .copyWith(height: 1.35))),
                      SizedBox(height: 19.v),
                      Row(children: [
                        CustomTextFormField(
                            width: 171.h,
                            controller: phoneNumberController,
                            hintText: "+91 737632 0878",
                            hintStyle: CustomTextStyles.bodyLargeBluegray700,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 9.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGrayTL19),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                decoration: IconButtonStyleHelper.fillRed,
                                onTap: () {
                                  onTapBtnUser(context);
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUser)))
                      ]),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 48.v),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtDidntreceivecode(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Didn’t Receive Code? ",
                                        style: CustomTextStyles
                                            .bodyMediumff6a788a
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text: "Get a New one",
                                        style: CustomTextStyles
                                            .bodyMediumfff3739e
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                          width: 183.h,
                          text: "Verify",
                          buttonStyle: CustomButtonStyles.fillDeepOrangeTL18,
                          onPressed: () {
                            onTapVerify(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
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
        styleType: Style.bgFill_1);
  }

  /// Navigates to the signUpFilledScreen when the action is triggered.
  onTapBtnUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpFilledScreen);
  }

  /// Navigates to the phoneVerificationScreen when the action is triggered.
  onTapTxtDidntreceivecode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.phoneVerificationScreen);
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageContainerScreen);
  }
}
