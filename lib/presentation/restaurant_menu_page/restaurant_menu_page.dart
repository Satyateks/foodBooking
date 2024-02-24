import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RestaurantMenuPage extends StatefulWidget {
  const RestaurantMenuPage({Key? key})
      : super(
          key: key,
        );

  @override
  RestaurantMenuPageState createState() => RestaurantMenuPageState();
}

class RestaurantMenuPageState extends State<RestaurantMenuPage>
    with AutomaticKeepAliveClientMixin<RestaurantMenuPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Column(
                children: [
                  _buildClassicCheeseBurgerSection(context),
                  SizedBox(height: 17.v),
                  Divider(
                    color: appTheme.blueGray50,
                  ),
                  SizedBox(height: 24.v),
                  _buildSimplyCheeseWithSection(context),
                  SizedBox(height: 17.v),
                  Divider(
                    color: appTheme.blueGray50,
                  ),
                  SizedBox(height: 24.v),
                  _buildFrameFiftyTwoSection(context),
                  SizedBox(height: 17.v),
                  Divider(
                    color: appTheme.blueGray50,
                  ),
                  SizedBox(height: 25.v),
                  _buildWesternBBQCheeseburgerSection(context),
                  SizedBox(height: 16.v),
                  Divider(
                    color: appTheme.blueGray50,
                  ),
                  SizedBox(height: 26.v),
                  _buildFrameFiftyTwo(context),
                  SizedBox(height: 17.v),
                  Divider(
                    color: appTheme.blueGray50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClassicCheeseBurgerSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle48x106,
            height: 40.v,
            width: 98.h,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 13.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200.h,
                  child: Text(
                    "Classic Cheese Burger (400 Cals)",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmall15.copyWith(
                      height: 1.53,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      child: Text(
                        "5.89",
                        style: CustomTextStyles.bodyMediumSFProBluegray500
                            .copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "4.59",
                        style: CustomTextStyles.titleMediumTeal400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 19.v,
              bottom: 21.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSimplyCheeseWithSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle40x98,
            height: 40.v,
            width: 98.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 13.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 201.h,
                  child: Text(
                    "Simply Cheese with Sesame Seed buns",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmall15.copyWith(
                      height: 1.53,
                    ),
                  ),
                ),
                _buildVeggieBaconHotSection(
                  context,
                  price1: "4.89",
                  price2: "3.59",
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 18.v,
              bottom: 21.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiftyTwoSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle26x108,
            height: 26.v,
            width: 108.h,
            margin: EdgeInsets.only(
              top: 17.v,
              bottom: 20.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 188.h,
                  child: Text(
                    "Veggie & Bacon Hot Sauce Sandwich ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmall15.copyWith(
                      height: 1.53,
                    ),
                  ),
                ),
                _buildVeggieBaconHotSection(
                  context,
                  price1: "6.89",
                  price2: "5.59",
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 17.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWesternBBQCheeseburgerSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 21.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle38x97,
            height: 38.v,
            width: 97.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 15.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              children: [
                SizedBox(
                  width: 102.h,
                  child: Text(
                    "Western BBQ Cheeseburger",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmall15.copyWith(
                      height: 1.53,
                    ),
                  ),
                ),
                _buildBaconAndVeggiesSection(
                  context,
                  price1: "5.89",
                  price2: "4.59",
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
              top: 18.v,
              bottom: 21.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiftyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23x108,
            height: 23.v,
            width: 108.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 9.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bacon and Veggies Salad",
                  style: CustomTextStyles.titleSmall15,
                ),
                _buildBaconAndVeggiesSection(
                  context,
                  price1: "5.89",
                  price2: "4.59",
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 5.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVeggieBaconHotSection(
    BuildContext context, {
    required String price1,
    required String price2,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            price1,
            style: CustomTextStyles.bodyMediumSFProBluegray500.copyWith(
              decoration: TextDecoration.lineThrough,
              color: appTheme.blueGray500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            price2,
            style: CustomTextStyles.titleMediumTeal400.copyWith(
              color: appTheme.teal400,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBaconAndVeggiesSection(
    BuildContext context, {
    required String price1,
    required String price2,
  }) {
    return Row(
      children: [
        Text(
          price1,
          style: CustomTextStyles.bodyLargeSFPro.copyWith(
            decoration: TextDecoration.lineThrough,
            color: theme.colorScheme.primary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            price2,
            style: CustomTextStyles.titleMediumTeal400.copyWith(
              color: appTheme.teal400,
            ),
          ),
        ),
      ],
    );
  }
}
