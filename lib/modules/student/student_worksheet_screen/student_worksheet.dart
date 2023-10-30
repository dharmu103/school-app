import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app/modules/student/student_worksheet_screen/controller/student_worksheet_controller.dart';

import '../../../core/app_export.dart';
import '../../../theme/app_decoration.dart';
import '../../../widgets/custom_app_bar_widget.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class StudentWorksheetScreen extends GetView<StudentWorkSheetController> {
  const StudentWorksheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: "Worksheet",
        ),
        //   key: _key, // Assign the key to Scaffold.

        // endDrawer: Drawer(
        //   child: HomeScreenFiveDraweritem(),
        // ),
        body: Container(
            width: Get.width,
            // height: Get.height,
            //   padding: EdgeInsets.only(top: 53),
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
                  height: 62,
                  width: 333,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 116),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgStarpattern,
                  height: 62,
                  width: 333,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 70),
                ),
                Container(
                  width: Get.width,
                  height: Get.height,
                  margin: EdgeInsets.only(top: 93),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusStyle.roundedBorderUp25,
                  ),
                  child: SingleChildScrollView(
                    // physics: ScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              itemBuilder: (context, index) {
                                return CircleAvatar(
                                  backgroundColor: theme.colorScheme.primary,
                                  radius: 26,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child:
                                        GetBuilder<StudentWorkSheetController>(
                                      init: StudentWorkSheetController(),
                                      initState: (_) {},
                                      builder: (_) {
                                        return GestureDetector(
                                          onTap: () {
                                            if (controller.currentSubject !=
                                                index) {
                                              controller
                                                  .changeCurrentSubject(index);
                                            }
                                          },
                                          child: CircleAvatar(
                                            backgroundColor: controller
                                                        .currentSubject ==
                                                    index
                                                ? theme.colorScheme.primary
                                                : theme.scaffoldBackgroundColor,
                                            radius: 24,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              child: Text(
                                                controller.list[index],
                                                style: controller
                                                            .currentSubject ==
                                                        index
                                                    ? CustomTextStyles
                                                        .titleSmallOnErrorContainer
                                                    : CustomTextStyles
                                                        .titleSmallPrimaryContainerMedium
                                                        .copyWith(
                                                            fontSize: 14.fSize),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                              itemCount: controller.list.length,
                            ),
                            // child: Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: list
                            //       .map(
                            //     (e) => CircleAvatar(
                            //       backgroundColor:
                            //           theme.colorScheme.primary,
                            //       radius: 26,
                            //       child: Padding(
                            //         padding: const EdgeInsets.all(2.0),
                            //         child: CircleAvatar(
                            //           backgroundColor:
                            //               theme.scaffoldBackgroundColor,
                            //           radius: 24,
                            //           child: Padding(
                            //             padding: const EdgeInsets.all(0.0),
                            //             child: Text(
                            //               e,
                            //               style: CustomTextStyles
                            //                   .titleSmallPrimaryContainerMedium
                            //                   .copyWith(fontSize: 14.fSize),
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   )
                            //       .toList(),
                            // ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GetBuilder<StudentWorkSheetController>(
                            initState: (_) {},
                            builder: (_) {
                              return WorksheetWidget();
                            },
                          ),
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

class WorksheetWidget extends StatelessWidget {
  const WorksheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StudentWorkSheetController>(
      init: StudentWorkSheetController(),
      initState: (_) {},
      builder: (_) {
        return Column(
          children: [
            Container(
              decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              child: Padding(
                  padding: EdgeInsets.only(left: 11, top: 15, bottom: 15),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(9),
                            decoration: IconButtonStyleHelper.fillAmber,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgFisrstats)),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 15, top: 3, bottom: 5),
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
                  decoration: index == _.workSheets.workSheets?.length
                      ? AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)))
                      : AppDecoration.fillGray100,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11,
                          ),
                          child: Row(
                            children: [
                              Text(
                                  _.workSheets.workSheets![index].heading
                                      .toString(),
                                  style: _.workSheets.workSheets![index]
                                              .isSubmitted ==
                                          false
                                      ? CustomTextStyles.titleSmallBluegray800
                                      : CustomTextStyles.titleSmallBluegray200),
                              Spacer(),
                              _.workSheets.workSheets![index].isSubmitted ==
                                      true
                                  ? Container(
                                      width: 25,
                                      height: 22,
                                      decoration: ShapeDecoration(
                                          color: Colors.green,
                                          shape: CircleBorder()),
                                      child: Icon(
                                        CupertinoIcons.check_mark,
                                        size: 13,
                                        color: Colors.white,
                                      ))
                                  : CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCalendarBlueGray500,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 29, top: 3, bottom: 3)),
                              _.workSheets.workSheets![index].isSubmitted ==
                                      true
                                  ? SizedBox()
                                  : Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, bottom: 3),
                                      child: Text(
                                          _.workSheets.workSheets![index].time
                                              .toString(),
                                          style: theme.textTheme.bodySmall)),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "3 days",
                                style: CustomTextStyles.bodyMediumBluegray500,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        index == 5
                            ? SizedBox()
                            : Divider(color: appTheme.indigo5004),
                      ],
                    ),
                  ),
                );
              }),
              itemCount: _.workSheets.workSheets?.length ?? 0,
            )
          ],
        );
      },
    );
  }
}
