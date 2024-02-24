import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/widgets/custom_phone_number.dart';
import 'package:pru0234_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController createPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 6.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Welcome!",
                                      style: CustomTextStyles.displaySmall_1),
                                  SizedBox(height: 5.v),
                                  Text("Sign up to your account.",
                                      style: CustomTextStyles
                                          .bodyLargeBluegray500_1),
                                  SizedBox(height: 25.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("Full Name",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 6.v),
                                  _buildFullName(context),
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
                                  _buildCreatePassword(context),
                                  SizedBox(height: 27.v),
                                  _buildConnectAccountsText(context),
                                  SizedBox(height: 33.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 26.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomIconButton(
                                                    height: 58.adaptSize,
                                                    width: 58.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(16.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .outlineBlueGray,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGoogle)),
                                                CustomIconButton(
                                                    height: 58.v,
                                                    width: 57.h,
                                                    padding:
                                                        EdgeInsets.all(12.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .outlineBlueGray,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgApple)),
                                                CustomIconButton(
                                                    height: 58.adaptSize,
                                                    width: 58.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(14.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .outlineBlueGray,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFacebook))
                                              ]))),
                                  SizedBox(height: 51.v),
                                  _buildSignUp(context),
                                  SizedBox(height: 5.v)
                                ])))))));
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
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController, hintText: "Enter your Name");
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
  Widget _buildCreatePassword(BuildContext context) {
    return CustomTextFormField(
        controller: createPasswordController,
        hintText: "Enter your Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConnectAccountsText(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
              child: SizedBox(width: 60.h, child: Divider())),
          Text("hungry? let's continue with these",
              style: CustomTextStyles.labelLargeBluegray500),
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
              child: SizedBox(width: 60.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        width: 232.h,
        text: "Sign Up",
        buttonStyle: CustomButtonStyles.fillDeepOrange,
        onPressed: () {
          onTapSignUp(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signUpFilledScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpFilledScreen);
  }
}
