import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIllustration,
                          height: 367.v,
                          width: 346.h,
                          radius: BorderRadius.circular(20.h)),
                      SizedBox(height: 30.v),
                      SizedBox(
                          height: 10.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                  spacing: 5,
                                  activeDotColor: appTheme.deepOrange300,
                                  dotColor: appTheme.blueGray100,
                                  dotHeight: 10.v,
                                  dotWidth: 10.h))),
                      SizedBox(height: 28.v),
                      Container(
                          width: 323.h,
                          margin: EdgeInsets.only(right: 24.h),
                          child: Text("Wide range of Food Categories & more",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.displaySmallMedium
                                  .copyWith(height: 1.28))),
                      SizedBox(height: 7.v),
                      Container(
                          width: 318.h,
                          margin: EdgeInsets.only(right: 29.h),
                          child: Text(
                              "Browse through our extensive list of restaurants and dishes, and when you're ready to order, simply add your desired items to your cart and checkout. It's that easy!",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray500_1
                                  .copyWith(height: 1.35))),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(left: 58.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSkip(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 18.v, bottom: 17.v),
                                            child: Text("Skip",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray700))),
                                    CustomElevatedButton(
                                        width: 183.h,
                                        text: "Next",
                                        buttonStyle: CustomButtonStyles.fillRed,
                                        onPressed: () {
                                          onTapNext(context);
                                        })
                                  ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
  }
}
