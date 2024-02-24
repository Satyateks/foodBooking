import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/presentation/restaurant_menu_page/restaurant_menu_page.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'widgets/restaurantmenutabcontainer_item_widget.dart';
import 'package:pru0234_s_application5/presentation/restaurant_more_options_bottomsheet/restaurant_more_options_bottomsheet.dart';

class RestaurantMenuTabContainerScreen extends StatefulWidget {
  const RestaurantMenuTabContainerScreen({Key? key}) : super(key: key);

  @override
  RestaurantMenuTabContainerScreenState createState() =>
      RestaurantMenuTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class RestaurantMenuTabContainerScreenState
    extends State<RestaurantMenuTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 12.v),
                  _buildMcdonaldsLogo(context),
                  SizedBox(height: 19.v),
                  _buildLunchDinnerEtc(context),
                  SizedBox(height: 18.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 546.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            RestaurantMenuPage(),
                            RestaurantMenuPage(),
                            RestaurantMenuPage()
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 21.h, top: 1.v, bottom: 12.v)),
        title: AppbarSubtitleFour(
            text: "Back", margin: EdgeInsets.only(left: 1.h)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserPrimary36x36,
              margin: EdgeInsets.only(left: 27.h, top: 1.v, right: 12.h),
              onTap: () {
                onTapUser(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgContrastPrimary,
              margin: EdgeInsets.fromLTRB(22.h, 7.v, 12.h, 6.v)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBag,
              margin: EdgeInsets.fromLTRB(28.h, 7.v, 39.h, 6.v))
        ],
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildMcdonaldsLogo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.fillRedTL25,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLogo36x36))),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mc Donald’s",
                            style: CustomTextStyles.headlineSmallRegular),
                        SizedBox(height: 3.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLinkedinPrimary19x19,
                              height: 13.adaptSize,
                              width: 13.adaptSize,
                              margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text("Bramlea & Sandalwood",
                                  style: CustomTextStyles.bodyMediumPrimary))
                        ])
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 7.v),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgContrastBlueGray200)))
            ]));
  }

  /// Section Widget
  Widget _buildLunchDinnerEtc(BuildContext context) {
    return SizedBox(
        height: 59.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 59.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.blueGray50))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 21.v,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 28.h);
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return RestaurantmenutabcontainerItemWidget();
                            })),
                    SizedBox(height: 16.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            width: 228.h,
                            child: Divider(
                                color: theme.colorScheme.primary,
                                endIndent: 102.h)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 40.v,
        width: 368.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.blueGray90001,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: appTheme.blueGray700,
                borderRadius: BorderRadius.circular(20.h)),
            tabs: [
              Tab(child: Text("Today’s Deals")),
              Tab(child: Text("Burger Meals")),
              Tab(child: Text("Chicken & Fish"))
            ]));
  }

  /// Shows a modal bottom sheet with [RestaurantMoreOptionsBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapUser(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => RestaurantMoreOptionsBottomsheet(),
        isScrollControlled: true);
  }
}
