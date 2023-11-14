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
          height: 30,
          width: 28,
          margin: EdgeInsets.only(
            top: 16,
            bottom: 14,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 21),
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 6,
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
                      padding: EdgeInsets.only(),
                      child: Text(
                        "lbl_28_10".tr,
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Text(
                  "msg_september_22_2023".tr,
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
                SizedBox(height: 1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
