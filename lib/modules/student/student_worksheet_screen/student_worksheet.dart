import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../theme/app_decoration.dart';
import '../../../widgets/custom_app_bar_widget.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class StudentWorksheetScreen extends StatelessWidget {
  const StudentWorksheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = ["Sci", 'SST', 'Math', 'Com', 'Hin', 'Eng'];
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: "Worksheet",
          actions: [
            CustomImageView(
              svgPath: ImageConstant.imgMenuburger,
              margin: EdgeInsets.only(right: 24.h),
              onTap: () {
                //   _key.currentState?.openEndDrawer();
              },
            )
          ],
        ),
        //   key: _key, // Assign the key to Scaffold.

        // endDrawer: Drawer(
        //   child: HomeScreenFiveDraweritem(),
        // ),
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
                  height: Get.height,
                  margin: EdgeInsets.only(top: 93.v),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusStyle.roundedBorderUp25,
                  ),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.v,
                          ),
                          Container(
                            height: 50,
                            width: Get.width, alignment: Alignment.center,
                            // child: ListView.builder(
                            //   shrinkWrap: true,
                            //   scrollDirection: Axis.horizontal,
                            //   physics: ScrollPhysics(),
                            //   itemBuilder: (context, index) {
                            // return CircleAvatar(
                            //   radius: 25.h,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Text("data"),
                            //   ),
                            // );
                            //   },
                            //   itemCount: 6,
                            // ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: list
                                  .map(
                                    (e) => CircleAvatar(
                                      backgroundColor:
                                          theme.colorScheme.primary,
                                      radius: 26.h,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: CircleAvatar(
                                          backgroundColor:
                                              theme.scaffoldBackgroundColor,
                                          radius: 24.h,
                                          child: Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Text(
                                              e,
                                              style: CustomTextStyles
                                                  .titleSmallPrimaryContainerMedium
                                                  .copyWith(fontSize: 14.fSize),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            height: 30.v,
                          ),
                          Container(
                            decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 11.h, top: 15.v, bottom: 15.v),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          padding: EdgeInsets.all(9.h),
                                          decoration:
                                              IconButtonStyleHelper.fillAmber,
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFisrstats)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.h,
                                              top: 3.v,
                                              bottom: 5.v),
                                          child: Text("lbl_science".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPrimaryContainer))
                                    ])),
                          ),
                          Divider(color: appTheme.indigo5004),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: ((context, index) {
                              return Container(
                                decoration: index == 5
                                    ? AppDecoration.fillGray100.copyWith(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)))
                                    : AppDecoration.fillGray100,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.v,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Text("msg_create_a_analytical".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBluegray800),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCalendarBlueGray500,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 29.h,
                                                    top: 3.v,
                                                    bottom: 3.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8.h, bottom: 3.v),
                                                child: Text("lbl_12_08_2021".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            SizedBox(
                                              width: 10.h,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.h,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "3 days",
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray500,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.v,
                                      ),
                                      index == 5
                                          ? SizedBox()
                                          : Divider(color: appTheme.indigo5004),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            itemCount: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
