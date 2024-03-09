import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/presentation/restaurant_menu_tab_container_screen/restaurant_menu_tab_container_screen.dart';
import 'package:pru0234_s_application5/presentation/search_utensils_screen/search_utensils_screen.dart';
import 'package:pru0234_s_application5/presentation/utensils_product_screen/utensils_product_screen.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                                horizontal: 21.h, vertical: 20.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SearchUtensilsScreen())),
                                    child: Text("Welcome!",
                                        style: CustomTextStyles.displaySmall_1),
                                  ),
                                  SizedBox(height: 5.v),
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RestaurantMenuTabContainerScreen())),
                                    child: Text("Login to your account.",
                                        style: CustomTextStyles
                                            .bodyLargeBluegray500_1),
                                  ),
                                  SizedBox(height: 38.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("Email Address",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 6.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Enter your Email",
                                      textInputType:
                                          TextInputType.emailAddress),
                                  SizedBox(height: 27.v),
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
                                  SizedBox(height: 50.v),
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
                                  SizedBox(height: 78.v),
                                  CustomElevatedButton(
                                      width: 232.h,
                                      text: "Login",
                                      buttonStyle:
                                          CustomButtonStyles.fillDeepOrange,
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
              AppbarSubtitleThree(
                  text: "Login",
                  margin: EdgeInsets.only(left: 60.h, right: 61.h)),
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
              margin: EdgeInsets.fromLTRB(60.h, 16.v, 82.h, 21.v))
        ],
        styleType: Style.bgFill);
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

  /// Navigates to the loginKeyboardScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginKeyboardScreen);
  }
}
