import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_image_view.dart';

class UpdatesWidget extends StatelessWidget {
  const UpdatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: ColorSchemes.primaryColorScheme.primary,
          child: CustomImageView(
            svgPath: ImageConstant.imgBellnotification,
            width: 18.adaptSize,
          ),
        ),
        title: Text(
          "Assignments",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        subtitle: Text(
          "Lorem ipsum dolor sit amet, consectet..Lorem ipsum dolor sit amet, consectet...",
          style: CustomTextStyles.bodyMedium13,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              "10:00",
              style: CustomTextStyles.bodyMedium13,
            ),
          ],
        ),
      ),
    );
  }
}
