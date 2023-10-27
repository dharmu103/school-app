import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable

class WorkSheetWidget extends StatelessWidget {
  const WorkSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.h,
      decoration: AppDecoration.outlineBlack,
      margin: EdgeInsets.symmetric(horizontal: 24.v, vertical: 10.h),
      padding: EdgeInsets.all(13.5.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.cyan5001,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.h),
                topRight: Radius.circular(8.h),
                bottomLeft: Radius.circular(6.h),
                bottomRight: Radius.circular(8.h),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.v, vertical: 2.h),
              child: Text(
                "Mathematics",
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ),
          ),
          SizedBox(
            height: 8.v,
          ),
          Text(
            "Surface Areas and Volumes",
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallBluegray900,
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_assign_date".tr,
                style: CustomTextStyles.bodyMediumGray60014,
              ),
              Text(
                "lbl_10_nov_22".tr,
                style: CustomTextStyles.titleSmallGray800,
              ),
            ],
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "msg_last_submission".tr,
                  style: CustomTextStyles.bodyMediumGray60014,
                ),
              ),
              Text(
                "lbl_10_dec_22".tr,
                style: CustomTextStyles.titleSmallGray800,
              ),
            ],
          ),
          SizedBox(height: 9.v),
          //   CustomElevatedButton(
          //     height: 35.v,
          //     text: "lbl_to_be_submitted".tr,
          //     decoration: CustomButtonStyles.gradientPrimaryToTealDecoration,
          //     buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
          //   ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35.v,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Text(
                      "lbl_to_be_submitted".tr,
                      style: CustomTextStyles.labelLargeOnErrorContainer_1,
                    ),
                  ),
                ),
                decoration: CustomButtonStyles.gradientPrimaryToTealDecoration,
              ),
            ],
          )
        ],
      ),
    );
  }
}
