import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/custom_elevated_button.dart';
import 'widgets/illustration_item_widget.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends StatelessWidget {
  OnboardingThreeScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

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
                      _buildIllustration(context),
                      SizedBox(height: 30.v),
                      SizedBox(
                          height: 10.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: sliderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 5,
                                  activeDotColor: appTheme.deepOrange300,
                                  dotColor: appTheme.blueGray100,
                                  dotHeight: 10.v,
                                  dotWidth: 10.h))),
                      SizedBox(height: 29.v),
                      Container(
                          width: 319.h,
                          margin: EdgeInsets.only(right: 28.h),
                          child: Text("Get started on Ordering your Food",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.displaySmallMedium
                                  .copyWith(height: 1.28))),
                      SizedBox(height: 7.v),
                      Container(
                          width: 335.h,
                          margin: EdgeInsets.only(right: 12.h),
                          child: Text(
                              "Please create an account or sign in to your existing account to start browsing our selection of delicious meals from your favorite restaurants.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray500_1
                                  .copyWith(height: 1.35))),
                      SizedBox(height: 33.v),
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
                                        text: "Continue",
                                        buttonStyle: CustomButtonStyles.fillRed,
                                        onPressed: () {
                                          onTapContinue(context);
                                        })
                                  ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildIllustration(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 367.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              sliderIndex = index;
            }),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return IllustrationItemWidget();
        });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
