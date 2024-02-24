import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';
import '../homepage_page/widgets/quickfilters_item_widget.dart';
import 'widgets/burgerscomponent_item_widget.dart';
import 'widgets/offers_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 21.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search Food, Restaurants etc.",
                                  alignment: Alignment.center))),
                      SizedBox(height: 15.v),
                      _buildQuickFilters(context),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text("Categories",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 7.v),
                      _buildBurgersComponent(context),
                      SizedBox(height: 27.v),
                      Divider(indent: 3.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Offers Near you",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 10.v),
                      _buildOffers(context),
                      SizedBox(height: 21.v),
                      Divider(
                          color: theme.colorScheme.onErrorContainer,
                          indent: 3.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("New & Trending",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 10.v),
                      _buildUserProfile(context),
                      SizedBox(height: 31.v),
                      Divider(
                          color: theme.colorScheme.onErrorContainer,
                          indent: 3.h)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 74.v,
        title: AppbarTitle(
            text: "Good Evening Luisa", margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildQuickFilters(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: Wrap(
            runSpacing: 14.22.v,
            spacing: 14.22.h,
            children:
                List<Widget>.generate(2, (index) => QuickfiltersItemWidget())));
  }

  /// Section Widget
  Widget _buildBurgersComponent(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 120.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 19.h,
                    crossAxisSpacing: 19.h),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return BurgerscomponentItemWidget(onTapBurgersComponent: () {
                    onTapBurgersComponent(context);
                  });
                })));
  }

  /// Section Widget
  Widget _buildOffers(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 181.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 24.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 17.h);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return OffersItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 157.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 24.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 18.h);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                })));
  }

  /// Navigates to the categoryPageScreen when the action is triggered.
  onTapBurgersComponent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoryPageScreen);
  }
}
