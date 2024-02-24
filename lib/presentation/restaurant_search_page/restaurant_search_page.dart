import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'widgets/feedphotos_item_widget.dart';

// ignore_for_file: must_be_immutable
class RestaurantSearchPage extends StatefulWidget {
  const RestaurantSearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  RestaurantSearchPageState createState() => RestaurantSearchPageState();
}

class RestaurantSearchPageState extends State<RestaurantSearchPage>
    with AutomaticKeepAliveClientMixin<RestaurantSearchPage> {
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
              SizedBox(height: 31.v),
              _buildFeedPhotos(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedPhotos(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 181.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 21.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return FeedphotosItemWidget();
          },
        ),
      ),
    );
  }
}
