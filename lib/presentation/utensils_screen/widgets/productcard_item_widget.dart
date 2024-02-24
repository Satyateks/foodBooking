import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget({
    Key? key,
    this.onTapProductCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProductCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductCard!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 96.v),
            SizedBox(
              width: 115.h,
              child: Text(
                "Le Creuset Dark Blue 500ml Cup",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmall15.copyWith(
                  height: 1.47,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              "30.59",
              style: CustomTextStyles.titleSmallSFProTeal400,
            ),
          ],
        ),
      ),
    );
  }
}
