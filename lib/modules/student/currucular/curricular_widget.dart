import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_image_view.dart';

import '../../../widgets/custom_elevated_button.dart';

class CurriCularWidget extends StatelessWidget {
  const CurriCularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      decoration: AppDecoration.outlineBlack,
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: EdgeInsets.all(13.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "Sleepover Night",
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallBluegray900,
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(12.adaptSize)),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomImageView(
                          //   width: 10,
                          svgPath: "assets/images/ic_time.svg",
                          //   color: theme.colorScheme.primary,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "06 Jan 21, 09:00 AM".tr,
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
