import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/modules/home_screen/controller/home_controller.dart';

import '../../widgets/custom_image_view.dart';

class HomeScreen extends GetWidget<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Container(
                width: Get.width,
                height: Get.height,
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
                    Positioned(
                      top: 93.v,
                      child: Container(
                        width: Get.width,
                        height: Get.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusStyle.roundedBorderUp35,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        AppBar(
                          toolbarHeight: 93.v,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          leadingWidth: 100.h,
                          leading: Container(
                            margin: const EdgeInsets.only(
                                left: 16, top: 16, bottom: 16, right: 16),
                            child: CircleAvatar(
                                foregroundImage: AssetImage(
                              ImageConstant.imgEllipse109,
                            )),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hi, Muskan",
                                  style: CustomTextStyles
                                      .titleLargeOnErrorContainer),
                              Text(
                                "Class XI-B  |  Roll no: 04",
                                style:
                                    CustomTextStyles.labelLargeOnErrorContainer,
                              )
                            ],
                          ),
                          actions: [
                            CustomImageView(
                              svgPath: ImageConstant,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
