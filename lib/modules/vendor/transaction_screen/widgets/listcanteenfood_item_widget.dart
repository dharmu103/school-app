import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/transaction_controller.dart';

// ignore: must_be_immutable
class ListcanteenfoodItemWidget extends StatelessWidget {
  ListcanteenfoodItemWidget(
      // this.listcanteenfoodItemModelObj,
      {
    Key? key,
  }) : super(
          key: key,
        );

//   ListcanteenfoodItemModel listcanteenfoodItemModelObj;

  var controller = Get.find<TransactionController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgCalendarYellow900,
          height: 30.v,
          width: 28.h,
          margin: EdgeInsets.only(
            top: 16.v,
            bottom: 14.v,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 21.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_canteen_food".tr,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 95.h),
                      child: Text(
                        "lbl_28_10".tr,
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Text(
                  "msg_september_22_2023".tr,
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
                SizedBox(height: 1.v),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
