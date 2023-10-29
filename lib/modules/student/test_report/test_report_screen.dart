import 'package:flutter/material.dart';
import 'package:school_app/modules/student/test_report/widget/test_report_list_widget.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_app_bar_widget.dart';
import '../../../widgets/custom_image_view.dart';
import '../home_screen/widgets/updates_widget.dart';

class TestReportScreen extends StatelessWidget {
  const TestReportScreen({super.key});

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
            title: "Test Report",
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
                          SizedBox(
                            height: 20.v,
                          ),
                          ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 15,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (itemBuilder, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TestReportListTile(),
                                );
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