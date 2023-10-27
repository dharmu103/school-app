import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:school_app/modules/student/curricular/widget/curricular_widget.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import 'curricular_controller.dart';

class CurricularScreen extends GetView<CurricularController> {
  const CurricularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
                margin: EdgeInsets.only(top: 85.v),
              ),
              CustomAppBar(
                leading: CustomImageView(
                    margin: EdgeInsets.only(left: 24.h),
                    onTap: () {
                      Get.toNamed(AppRoutes.homeScreen);
                    },
                    svgPath: ImageConstant.imgArrowleftOnerrorcontainer),
                title: "Curricular",
              ),
              Container(
                width: Get.width,
                height: Get.height - 93.v,
                margin: EdgeInsets.only(top: 105.v),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusStyle.roundedBorderUp35,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  width: Get.width,
                  height: Get.height - 105.v,
                  margin: EdgeInsets.only(top: 105.v),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusStyle.roundedBorderUp35,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemBuilder: (itemBuilder, index) {
                            return CurriCularWidget();
                          },
                          separatorBuilder: (b, s) {
                            return Container();
                          },
                          itemCount: 3),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
