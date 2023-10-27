import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:school_app/modules/student/home_screen/widgets/work_sheet_widget.dart';
import 'package:school_app/modules/student/worksheet/worksheet_controller.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

class WorksheetScreen extends GetView<WorkSheetController> {
  const WorksheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            leading: CustomImageView(
                margin: EdgeInsets.only(left: 24.h),
                onTap: () {
                  Get.toNamed(AppRoutes.homeScreen);
                },
                svgPath: ImageConstant.imgArrowleftOnerrorcontainer),
            title: "Worksheet",
          ),
          body: Container(
              width: Get.width,
              // height: Get.height,
              //   padding: EdgeInsets.only(top: 53.v),
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    theme.colorScheme.onErrorContainer.withOpacity(1),
                    theme.colorScheme.onErrorContainer.withOpacity(0),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: Get.height,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.56, 0.48),
                          end: Alignment(0.5, -0.53),
                          colors: [
                            theme.colorScheme.primary,
                            appTheme.teal300,
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStarpattern,
                    height: 62.v,
                    width: 333.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 116.v),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStarpattern,
                    height: 62.v,
                    width: 333.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 70.v),
                  ),
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.only(top: 93.v),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusStyle.roundedBorderUp25,
                    ),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 15,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (itemBuilder, index) {
                                return WorkSheetWidget();
                              })
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
