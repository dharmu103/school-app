import '../../../widgets/custom_image_view.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class EmployDraweritem extends StatelessWidget {
  EmployDraweritem({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 350,
        padding: EdgeInsets.only(left: 14, top: 40),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgChristinawocin,
                        height: 104.adaptSize,
                        width: 104.adaptSize,
                        radius: BorderRadius.circular(
                          52,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "lbl_poonam_saini".tr,
                        style: CustomTextStyles.titleLargeOnPrimary,
                      ),
                      SizedBox(height: 1),
                      Text(
                        "msg_i_card_no_112".tr,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_class_5th".tr,
                          style: CustomTextStyles.titleSmallPrimaryMedium,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowrightOnprimary,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 40,
                      bottom: 143,
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  SizedBox(
                    width: 14,
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 42,
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.employeeScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFileOnprimarycontainer,
                      height: 21,
                      width: 16,
                      margin: EdgeInsets.only(bottom: 1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        "lbl_attendence".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 27,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadCurricularScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                      height: 20,
                      width: 16,
                      margin: EdgeInsets.only(bottom: 3),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Text(
                        "Upload Curricular".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 27,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadResultScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                      height: 20,
                      width: 16,
                      margin: EdgeInsets.only(bottom: 3),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Text(
                        "Upload Result".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 28,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadAssignmentScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMenuOnprimarycontainer,
                      height: 21,
                      width: 16,
                      margin: EdgeInsets.only(bottom: 1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        "Upload Assignment".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17,
                top: 26,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.studentContactScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSave,
                      height: 21,
                      width: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Text(
                        "lbl_student_contact".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 29,
                right: 32,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.assignmentStatusScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMail,
                      height: 18,
                      width: 20,
                      margin: EdgeInsets.only(bottom: 4),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Assignment Status".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 29,
                right: 32,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadAssignmentStatusScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMail,
                      height: 18,
                      width: 20,
                      margin: EdgeInsets.only(bottom: 4),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Upload Assignment Status".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 30,
                bottom: 30,
              ),
              child: GestureDetector(
                onTap: () {
                  PrefUtils.sharedPreferences?.clear();
                  Get.toNamed(AppRoutes.coverScreen);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFile,
                      height: 16,
                      width: 20,
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14),
                      child: Text(
                        "lbl_logout".tr,
                        style: CustomTextStyles.titleSmallRedA700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
