import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_phone_number.dart';
import 'package:pru0234_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpFilledScreen extends StatelessWidget {
  SignUpFilledScreen({Key? key}) : super(key: key);

  TextEditingController fullNameValueController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('90');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordEnterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 6.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome!", style: CustomTextStyles.displaySmall_1),
                      SizedBox(height: 5.v),
                      Text("Sign up to your account.",
                          style: CustomTextStyles.bodyLargeBluegray500_1),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text("Full Name",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 6.v),
                      _buildFullNameValue(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text("Phone Number",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 6.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text("Create Password",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 6.v),
                      _buildPasswordEnter(context),
                      Spacer(flex: 58),
                      _buildSignUp(context),
                      Spacer(flex: 41)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 79.v,
        title: Padding(
            padding: EdgeInsets.only(left: 81.h),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(right: 51.h),
                  child: Row(children: [
                    AppbarSubtitle(
                        text: "Login",
                        onTap: () {
                          onTapLogin(context);
                        }),
                    AppbarSubtitleOne(
                        text: "Sign Up", margin: EdgeInsets.only(left: 121.h))
                  ])),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      width: 278.h,
                      child: Divider(
                          color: theme.colorScheme.primary, indent: 113.h)))
            ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFullNameValue(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameValueController, hintText: "Sercan Efe KARAMAN");
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country value) {
          selectedCountry = value;
        });
  }

  /// Section Widget
  Widget _buildPasswordEnter(BuildContext context) {
    return CustomTextFormField(
        controller: passwordEnterController,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(13.h, 14.v, 30.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame106,
                height: 23.v,
                width: 15.h)),
        prefixConstraints: BoxConstraints(maxHeight: 51.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        width: 232.h,
        text: "Sign Up",
        buttonStyle: CustomButtonStyles.fillDeepOrangeTL18,
        onPressed: () {
          onTapSignUp(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the phoneVerificationScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.phoneVerificationScreen);
  }
}
