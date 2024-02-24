import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginKeyboardScreen extends StatelessWidget {
  LoginKeyboardScreen({Key? key}) : super(key: key);

  TextEditingController emailValueController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                                  Text("Login to your account.",
                                      style: CustomTextStyles
                                          .bodyLargeBluegray500_1),
                                  SizedBox(height: 38.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("Email Address",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 6.v),
                                  CustomTextFormField(
                                      controller: emailValueController,
                                      hintText: "johndoe@gm|",
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 14.v, 13.h, 14.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgClose,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 52.v),
                                      contentPadding: EdgeInsets.only(
                                          left: 12.h, top: 15.v, bottom: 15.v)),
                                  SizedBox(height: 26.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("Password",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 6.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Enter your Password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true),
                                  SizedBox(height: 13.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("forgot password?",
                                          style: CustomTextStyles
                                              .labelLargeBluegray500SemiBold)),
                                  SizedBox(height: 23.v),
                                  CustomElevatedButton(
                                      width: 232.h,
                                      text: "Login",
                                      buttonStyle:
                                          CustomButtonStyles.fillDeepOrangeTL18,
                                      onPressed: () {
                                        onTapLogin(context);
                                      },
                                      alignment: Alignment.center),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 79.v,
        title: Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Column(children: [
              AppbarSubtitleOne(
                  text: "Login",
                  margin: EdgeInsets.symmetric(horizontal: 60.h)),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      width: 165.h,
                      child: Divider(color: theme.colorScheme.primary)))
            ])),
        actions: [
          AppbarSubtitleTwo(
              text: "Sign Up",
              margin: EdgeInsets.fromLTRB(60.h, 16.v, 82.h, 21.v),
              onTap: () {
                onTapSignUp(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageContainerScreen);
  }
}
