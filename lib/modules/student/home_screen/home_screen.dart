import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/modules/student/home_screen/controller/home_controller.dart';
import 'package:school_app/modules/student/home_screen/widgets/updates_widget.dart';
import 'package:school_app/modules/student/home_screen/widgets/work_sheet_widget.dart';
import 'package:school_app/modules/student/home_screen_five_draweritem/home_screen_five_draweritem.dart';
import 'package:school_app/widgets/base_button.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

import '../../../widgets/custom_image_view.dart';

class HomeScreen extends GetWidget<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: theme.colorScheme.primary),
            toolbarHeight: 93.v,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leadingWidth: 80.h,
            leading: Container(
              margin: EdgeInsets.only(
                left: 24.h,
                top: 16,
                bottom: 16,
              ),
              child: CircleAvatar(
                  foregroundImage: AssetImage(
                ImageConstant.imgEllipse109,
              )),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi, Muskan",
                    style: CustomTextStyles.titleLargeOnErrorContainer),
                Text(
                  "Class XI-B  |  Roll no: 04",
                  style: CustomTextStyles.labelLargeOnErrorContainer,
                )
              ],
            ),
            actions: [
              CustomImageView(
                svgPath: ImageConstant.imgMenuburger,
                margin: EdgeInsets.only(right: 24.h),
                onTap: () {
                  _key.currentState?.openEndDrawer();
                },
              )
            ],
          ),
          key: _key, // Assign the key to Scaffold.

          endDrawer: Drawer(
            child: HomeScreenFiveDraweritem(),
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
                          Padding(
                            padding: EdgeInsets.only(
                                left: 24.h, top: 18.v, right: 12.h),
                            child: Row(
                              children: [
                                Text(
                                  "Worksheet",
                                  style: CustomTextStyles.titleLargeOnPrimary
                                      .copyWith(
                                    height: 24 / 20,
                                  ),
                                ),
                                Spacer(),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      child: Text("see all"),
                                      onPressed: () {
                                        Get.toNamed(
                                            AppRoutes.studentWorksheetScreen);
                                      },
                                    )),
                              ],
                            ),
                          ),
                          ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (itemBuilder, index) {
                                return WorkSheetWidget();
                              },
                              separatorBuilder: (b, s) {
                                return Container();
                              },
                              itemCount: 2),
                          //   Align(
                          //       alignment: Alignment.centerRight,
                          //       child: TextButton(
                          //         child: Text("see all"),
                          //         onPressed: () {},
                          //       )),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 24.h,
                                top: 18.v,
                                bottom: 5.v,
                                right: 10.h),
                            child: Row(
                              children: [
                                Text(
                                  "Updates",
                                  style: CustomTextStyles.titleLargeOnPrimary
                                      .copyWith(
                                    height: 24 / 20,
                                  ),
                                ),
                                Spacer(),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      child: Text("see all"),
                                      onPressed: () {
                                        Get.toNamed(
                                            AppRoutes.studentUpdatesScreen);
                                      },
                                    )),
                              ],
                            ),
                          ),
                          ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (itemBuilder, index) {
                                return UpdatesWidget();
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
