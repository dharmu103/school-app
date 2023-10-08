// import 'package:flutter_svg/flutter_svg.dart';

// import '../../widgets/custom_icon_button.dart';
// import '../../widgets/custom_image_view.dart';

// import 'controller/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// import 'package:school_app/core/app_export.dart';

// // ignore_for_file: must_be_immutable
// class HomeScreen extends GetWidget<HomeScreenController> {
//   const HomeScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);

//     return SafeArea(
//       child: Scaffold(
//         extendBody: true,
//         extendBodyBehindAppBar: true,

//         body: Container(
//           width: mediaQueryData.size.width,
//           height: mediaQueryData.size.height,
//           //   padding: EdgeInsets.only(top: 53.v),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment(0.5, 0),
//               end: Alignment(0.5, 1),
//               colors: [
//                 theme.colorScheme.onErrorContainer.withOpacity(1),
//                 theme.colorScheme.onErrorContainer.withOpacity(0),
//               ],
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: SizedBox(
//               height: 768.v,
//               width: double.maxFinite,
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   Align(
//                     alignment: Alignment.center,
//                     child: Container(
//                       decoration: AppDecoration.fillOnErrorContainer.copyWith(
//                         borderRadius: BorderRadiusStyle.roundedBorder35,
//                       ),
//                       child: Card(
//                         clipBehavior: Clip.antiAlias,
//                         elevation: 0,
//                         margin: EdgeInsets.all(0),
//                         shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadiusStyle.roundedBorder35,
//                             ),
//                         child: Container(
//                           height: Get.height,
//                           width: double.maxFinite,
//                           decoration: BoxDecoration(
//                               // borderRadius: BorderRadiusStyle.roundedBorder35,
//                               ),
//                           child: Stack(
//                             alignment: Alignment.topCenter,
//                             children: [
//   Align(
//     alignment: Alignment.center,
//     child: Container(
//       height: 769.v,
//       width: double.maxFinite,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment(1.56, 0.48),
//           end: Alignment(0.5, -0.53),
//           colors: [
//             theme.colorScheme.primary,
//             appTheme.teal300,
//           ],
//         ),
//       ),
//     ),
//   ),
//   CustomImageView(
//     svgPath: ImageConstant.imgStarpattern,
//     height: 62.v,
//     width: 333.h,
//     alignment: Alignment.topCenter,
//     margin: EdgeInsets.only(top: 116.v),
//   ),
//   CustomImageView(
//     svgPath: ImageConstant.imgStarpattern,
//     height: 62.v,
//     width: 333.h,
//     alignment: Alignment.topCenter,
//     margin: EdgeInsets.only(top: 70.v),
//   ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   //   Align(
//                   //     alignment: Alignment.bottomCenter,
//                   //     child: Container(
//                   //       padding: EdgeInsets.symmetric(
//                   //         horizontal: 24.h,
//                   //         vertical: 5.v,
//                   //       ),
//                   //       //   decoration: BoxDecoration(
//                   //       //     image: DecorationImage(
//                   //       //       image: fs.Svg(
//                   //       //         ImageConstant.imgGroup23,
//                   //       //       ),
//                   //       //       fit: BoxFit.cover,
//                   //       //     ),
//                   //       //   ),
//                   //       child: Column(
//                   //         mainAxisSize: MainAxisSize.min,
//                   //         crossAxisAlignment: CrossAxisAlignment.start,
//                   //         children: [
//                   //           SizedBox(height: 9.v),
//                   //           Text(
//                   //             "lbl_worksheet".tr,
//                   //             style: CustomTextStyles.titleLargePrimaryContainer,
//                   //           ),
//                   //           SizedBox(height: 12.v),
//                   //           //   Obx(
//                   //           //     () => ListView.separated(
//                   //           //       physics: NeverScrollableScrollPhysics(),
//                   //           //       shrinkWrap: true,
//                   //           //       separatorBuilder: (
//                   //           //         context,
//                   //           //         index,
//                   //           //       ) {
//                   //           //         return SizedBox(
//                   //           //           height: 7.v,
//                   //           //         );
//                   //           //       },
//                   //           //       itemCount: controller.homeScreenItemModel.value
//                   //           //           .HomeScreenItemList.value.length,
//                   //           //       itemBuilder: (context, index) {
//                   //           //         HomeScreenItemModel model = controller
//                   //           //             .HomeScreenModelObj
//                   //           //             .value
//                   //           //             .HomeScreenItemList
//                   //           //             .value[index];
//                   //           //         return HomeScreenItemWidget(
//                   //           //           model,
//                   //           //         );
//                   //           //       },
//                   //           //     ),
//                   //           //   ),
//                   //           SizedBox(height: 16.v),
//                   //           Text(
//                   //             "lbl_updates".tr,
//                   //             style: CustomTextStyles.titleLargePrimaryContainer,
//                   //           ),
//                   //           SizedBox(height: 11.v),
//                   //           Row(
//                   //             crossAxisAlignment: CrossAxisAlignment.start,
//                   //             children: [
//                   //               Padding(
//                   //                 padding: EdgeInsets.only(
//                   //                   top: 1.v,
//                   //                   bottom: 42.v,
//                   //                 ),
//                   //                 child: Column(
//                   //                   children: [
//                   //                     CustomIconButton(
//                   //                       height: 40.adaptSize,
//                   //                       width: 40.adaptSize,
//                   //                       padding: EdgeInsets.all(11.h),
//                   //                       child: CustomImageView(
//                   //                         svgPath:
//                   //                             ImageConstant.imgBellnotification,
//                   //                       ),
//                   //                     ),
//                   //                     SizedBox(height: 23.v),
//                   //                     CustomIconButton(
//                   //                       height: 40.adaptSize,
//                   //                       width: 40.adaptSize,
//                   //                       padding: EdgeInsets.all(11.h),
//                   //                       child: CustomImageView(
//                   //                         svgPath: ImageConstant
//                   //                             .imgMailOnerrorcontainer,
//                   //                       ),
//                   //                     ),
//                   //                     SizedBox(height: 21.v),
//                   //                     CustomIconButton(
//                   //                       height: 40.adaptSize,
//                   //                       width: 40.adaptSize,
//                   //                       padding: EdgeInsets.all(11.h),
//                   //                       child: CustomImageView(
//                   //                         svgPath: ImageConstant.imgCalendar,
//                   //                       ),
//                   //                     ),
//                   //                   ],
//                   //                 ),
//                   //               ),
//                   //               Expanded(
//                   //                 child: Padding(
//                   //                   padding: EdgeInsets.only(left: 23.h),
//                   //                   child: Column(
//                   //                     crossAxisAlignment:
//                   //                         CrossAxisAlignment.start,
//                   //                     children: [
//                   //                       Row(
//                   //                         children: [
//                   //                           Text(
//                   //                             "lbl_assignments".tr,
//                   //                             style: theme.textTheme.titleSmall,
//                   //                           ),
//                   //                           Padding(
//                   //                             padding:
//                   //                                 EdgeInsets.only(bottom: 4.v),
//                   //                             child: Text(
//                   //                               "lbl_10_00".tr,
//                   //                               style: theme.textTheme.bodySmall,
//                   //                             ),
//                   //                           ),
//                   //                         ],
//                   //                       ),
//                   //                       SizedBox(height: 1.v),
//                   //                       Text(
//                   //                         "msg_lorem_ipsum_dolor".tr,
//                   //                         style: theme.textTheme.bodySmall,
//                   //                       ),
//                   //                       SizedBox(height: 20.v),
//                   //                       Row(
//                   //                         children: [
//                   //                           Text(
//                   //                             "lbl_assignments".tr,
//                   //                             style: theme.textTheme.titleSmall,
//                   //                           ),
//                   //                           Padding(
//                   //                             padding:
//                   //                                 EdgeInsets.only(bottom: 3.v),
//                   //                             child: Text(
//                   //                               "lbl_08_00".tr,
//                   //                               style: theme.textTheme.bodySmall,
//                   //                             ),
//                   //                           ),
//                   //                         ],
//                   //                       ),
//                   //                       SizedBox(height: 1.v),
//                   //                       Text(
//                   //                         "msg_lorem_ipsum_dolor".tr,
//                   //                         style: theme.textTheme.bodySmall,
//                   //                       ),
//                   //                       SizedBox(height: 18.v),
//                   //                       Row(
//                   //                         children: [
//                   //                           Text(
//                   //                             "lbl_assignments".tr,
//                   //                             style: theme.textTheme.titleSmall,
//                   //                           ),
//                   //                           Padding(
//                   //                             padding:
//                   //                                 EdgeInsets.only(bottom: 4.v),
//                   //                             child: Text(
//                   //                               "lbl_07_30".tr,
//                   //                               style: theme.textTheme.bodySmall,
//                   //                             ),
//                   //                           ),
//                   //                         ],
//                   //                       ),
//                   //                       SizedBox(height: 1.v),
//                   //                       Text(
//                   //                         "msg_lorem_ipsum_dolor".tr,
//                   //                         style: theme.textTheme.bodySmall,
//                   //                       ),
//                   //                       SizedBox(height: 18.v),
//                   //                       Text(
//                   //                         "lbl_assignments".tr,
//                   //                         style: theme.textTheme.titleSmall,
//                   //                       ),
//                   //                     ],
//                   //                   ),
//                   //                 ),
//                   //               ),
//                   //             ],
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     ),
//                   //   ),
//                   //   Align(
//                   //     alignment: Alignment.bottomRight,
//                   //     child: Padding(
//                   //       padding: EdgeInsets.only(right: 50.h),
//                   //       child: Text(
//                   //         "msg_lorem_ipsum_dolor".tr,
//                   //         style: theme.textTheme.bodySmall,
//                   //       ),
//                   //     ),
//                   //   ),
//                   //   Align(
//                   //     alignment: Alignment.bottomRight,
//                   //     child: Padding(
//                   //       padding: EdgeInsets.only(
//                   //         right: 25.h,
//                   //         bottom: 8.v,
//                   //       ),
//                   //       child: Text(
//                   //         "lbl_07_30".tr,
//                   //         style: theme.textTheme.bodySmall,
//                   //       ),
//                   //     ),
//                   //   ),
//                   //   CustomIconButton(
//                   //     height: 40.adaptSize,
//                   //     width: 40.adaptSize,
//                   //     margin: EdgeInsets.only(left: 24.h),
//                   //     padding: EdgeInsets.all(11.h),
//                   //     alignment: Alignment.bottomLeft,
//                   //     child: CustomImageView(
//                   //       svgPath: ImageConstant.imgCalendar,
//                   //     ),
//                   //   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
                        )
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
