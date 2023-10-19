import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_image_view.dart';

import '../../../../widgets/custom_elevated_button.dart';

class CurriCularWidget extends StatelessWidget {
  const CurriCularWidget({super.key});

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
          SizedBox(
            height: 8.v,
          ),
          Text(
            "Sleepover Night",
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallBluegray900,
          ),
          SizedBox(height: 10.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 75.h,
                height: 75.h,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(12.adaptSize)),
              ),
              SizedBox(
                width: 8.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomImageView(
                          //   width: 10.h,
                          svgPath: "assets/images/ic_time.svg",
                          //   color: theme.colorScheme.primary,
                        ),
                        SizedBox(
                          width: 6.h,
                        ),
                        Text(
                          "06 Jan 21, 09:00 AM".tr,
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.v,
                    ),
                    Text(
                      "A sleepover is a great treat for kids. Many schools use such an event as the culminating..."
                          .tr,
                      style: CustomTextStyles.bodyMediumGray600,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
