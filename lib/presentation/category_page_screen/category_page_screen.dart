import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';

class CategoryPageScreen extends StatelessWidget {
  const CategoryPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "Burgers",
                    style: theme.textTheme.displaySmall,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildFrameFiftyTwo(
                  context,
                  text: "BBQ Chicken Burger ",
                  restaurantName: "KFC",
                ),
              ),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildFrameFiftyTwo(
                  context,
                  text: "BBQ Chicken Burger ",
                  restaurantName: "KFC",
                ),
              ),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildFrameFiftyTwo1(
                  context,
                  restaurantName: "McDonald’s",
                  restaurantAddress: "18915 Queens Road, Brampton, ON",
                ),
              ),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildFrameFiftyTwo1(
                  context,
                  restaurantName: "McDonald’s",
                  restaurantAddress: "18915 Queens Road, Brampton, ON",
                ),
              ),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildFrameFiftyTwo1(
                  context,
                  restaurantName: "McDonald’s",
                  restaurantAddress: "18915 Queens Road, Brampton, ON",
                ),
              ),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 1.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarSubtitleFour(
        text: "Back",
        margin: EdgeInsets.only(left: 1.h),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Common widget
  Widget _buildFrameFiftyTwo(
    BuildContext context, {
    required String text,
    required String restaurantName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle48x106,
          height: 48.v,
          width: 106.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 2.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogo21x20,
                    height: 21.v,
                    width: 20.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      restaurantName,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.primary.withOpacity(0.6),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 12.v,
            bottom: 11.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameFiftyTwo1(
    BuildContext context, {
    required String restaurantName,
    required String restaurantAddress,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 3.v,
          ),
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillRedTL18,
            child: CustomImageView(
              imagePath: ImageConstant.imgLogo36x36,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurantName,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                restaurantAddress,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }
}
