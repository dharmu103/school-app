import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:school_app/modules/student/currucular/curricular_widget.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../widgets/dialogs/update_success.dart';
import 'curricular_controller.dart';

class CurricularScreen extends GetView<CurricularController> {
  const CurricularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Curricular",
        actions: [],
      ),
      //   key: _key, // Assign the key to Scaffold.

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
                  physics: ScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(),
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
              )
            ],
          )),
    ));
  }
}
