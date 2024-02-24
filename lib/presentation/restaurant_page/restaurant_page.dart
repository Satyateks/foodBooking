import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'widgets/restaurant_item_widget.dart';

// ignore_for_file: must_be_immutable
class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key})
      : super(
          key: key,
        );

  @override
  RestaurantPageState createState() => RestaurantPageState();
}

class RestaurantPageState extends State<RestaurantPage>
    with AutomaticKeepAliveClientMixin<RestaurantPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildRestaurantList(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRestaurantList(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 18.v),
          Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 40.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 21.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 15.h,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return RestaurantItemWidget();
                    },
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              SizedBox(
                height: 74.v,
                width: 352.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle48x106,
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
                                  width: 194.h,
                                  child: Text(
                                    "Classic Cheese Hamburger (400 Cals)",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.titleSmall15.copyWith(
                                      height: 1.53,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 1.v),
                                      child: Text(
                                        "5.89",
                                        style: CustomTextStyles
                                            .bodyMediumSFProBluegray500
                                            .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text(
                                        "4.59",
                                        style:
                                            CustomTextStyles.titleMediumTeal400,
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
                              left: 22.h,
                              top: 18.v,
                              bottom: 21.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: 64.v,
                        width: 122.h,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle59x77,
                              height: 59.v,
                              width: 77.h,
                              alignment: Alignment.topRight,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle38x103,
                              height: 38.v,
                              width: 103.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(bottom: 5.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle27x80,
                              height: 27.v,
                              width: 80.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(right: 12.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Divider(),
              SizedBox(height: 24.v),
              Padding(
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                child: Text(
                                  "4.89",
                                  style: CustomTextStyles
                                      .bodyMediumSFProBluegray500
                                      .copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "3.59",
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
                        left: 15.h,
                        top: 18.v,
                        bottom: 21.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Divider(),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle26x108,
                      height: 26.v,
                      width: 108.h,
                      margin: EdgeInsets.only(
                        top: 19.v,
                        bottom: 20.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 196.h,
                            child: Text(
                              "Veggie & Bacon Hot Sauce Sandwich ",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.35,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Row(
                            children: [
                              Text(
                                "6.89",
                                style: CustomTextStyles.bodyLargeSFPro.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "5.59",
                                  style: CustomTextStyles
                                      .titleMediumPrimaryContainer,
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
                        left: 10.h,
                        top: 19.v,
                        bottom: 20.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Divider(
                color: theme.colorScheme.onErrorContainer,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 21.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle38x97,
                      height: 38.v,
                      width: 97.h,
                      margin: EdgeInsets.only(
                        top: 24.v,
                        bottom: 26.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 196.h,
                            child: Text(
                              "Western BBQ Cheeseburger (400 Cals)",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.35,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Row(
                            children: [
                              Text(
                                "5.89",
                                style: CustomTextStyles.bodyLargeSFPro.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "4.59",
                                  style: CustomTextStyles
                                      .titleMediumPrimaryContainer,
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
                        left: 10.h,
                        top: 32.v,
                        bottom: 32.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Divider(
                color: theme.colorScheme.onErrorContainer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
