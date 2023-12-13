import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/theme/custom_button_style.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';
import 'package:school_app/widgets/custom_image_view.dart';

class UpdateDailogWidget extends StatelessWidget {
  const UpdateDailogWidget({super.key, this.onTap});
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            CustomImageView(
              imagePath: "assets/images/ok_png.png",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Update Success",
              style: CustomTextStyles.titleMediumBlack900,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames velit ",
                style: CustomTextStyles.bodySmallBluegray400,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onTap: () {
                  Get.back();
                  Get.toNamed(AppRoutes.homeScreen);
                },
                text: "Close",
                buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                buttonStyle: CustomButtonStyles.outLineBorderPrimary,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateDailogWidgetTeacher extends StatelessWidget {
  const UpdateDailogWidgetTeacher({super.key, this.onTap});
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            CustomImageView(
              imagePath: "assets/images/ok_png.png",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Update Success",
              style: CustomTextStyles.titleMediumBlack900,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames velit ",
                style: CustomTextStyles.bodySmallBluegray400,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onTap: () {
                  Get.back();
                  Get.toNamed(AppRoutes.employeeScreen);
                },
                text: "Close",
                buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                buttonStyle: CustomButtonStyles.outLineBorderPrimary,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
