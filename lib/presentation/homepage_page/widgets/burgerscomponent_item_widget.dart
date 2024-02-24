import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class BurgerscomponentItemWidget extends StatelessWidget {
  BurgerscomponentItemWidget({
    Key? key,
    this.onTapBurgersComponent,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBurgersComponent;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapBurgersComponent!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillDeepOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle,
                height: 30.v,
                width: 84.h,
              ),
              SizedBox(height: 22.v),
              Text(
                "Burgers",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
