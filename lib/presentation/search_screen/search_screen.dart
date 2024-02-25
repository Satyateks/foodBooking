import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 389.h,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              _buildSearchRow(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 20.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  autofocus: false,
                  hintText: "Search Food, Restaurants etc.",
                ),
              ),
              SizedBox(height: 21.v),
              _buildRecentlySearchedRow(context),
              SizedBox(height: 30.v),
              _buildBurgerSection(context),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 24.v),
              _buildKfcSection(context),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 24.v),
              _buildMcdonaldsSection(context),
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

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search",
            style: theme.textTheme.displaySmall,
          ),
          CustomIconButton(
            height: 44.v,
            width: 48.h,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillDeepOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserDeepOrange300,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentlySearchedRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 26.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recently Searched",
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 7.v,
            ),
            child: Text(
              "CLEAR ALL",
              style: CustomTextStyles.labelLargeRed300,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBurgerSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
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
                  "BBQ Veg Burger ",
                  style: theme.textTheme.bodyLarge,
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
                        "KFC",
                        style: theme.textTheme.bodyMedium,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildKfcSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KFC",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 4.v),
                Text(
                  "10565 Bramlea Road, Brampton, ON",
                  style: theme.textTheme.bodyMedium,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildMcdonaldsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
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
                  "McDonald’s",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 4.v),
                Text(
                  "18915 Queens Road, Brampton, ON",
                  style: theme.textTheme.bodyMedium,
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
      ),
    );
  }
}
