import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/presentation/restaurant_search_page/restaurant_search_page.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';

class RestaurantSearchTabContainerScreen extends StatefulWidget {
  const RestaurantSearchTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RestaurantSearchTabContainerScreenState createState() =>
      RestaurantSearchTabContainerScreenState();
}

class RestaurantSearchTabContainerScreenState
    extends State<RestaurantSearchTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "Search McDonald’s",
                  style: CustomTextStyles.headlineLarge30,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinPrimary19x19,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Bramlea & Sandalwood",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search Food, Restaurants etc.",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "Popular Keywords",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 12.v),
              _buildTabview(context),
              SizedBox(
                height: 510.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    RestaurantSearchPage(),
                    RestaurantSearchPage(),
                    RestaurantSearchPage(),
                    RestaurantSearchPage(),
                  ],
                ),
              ),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 370.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Text(
              "Big Mac",
            ),
          ),
          Tab(
            child: Text(
              "Large Fries",
            ),
          ),
          Tab(
            child: Text(
              "Hash Browns",
            ),
          ),
          Tab(
            child: Text(
              "Happy Meal",
            ),
          ),
        ],
      ),
    );
  }
}
