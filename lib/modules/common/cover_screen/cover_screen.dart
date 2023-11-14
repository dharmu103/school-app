import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';
import 'package:school_app/widgets/custom_image_view.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomImageView(
            width: Get.width,
            height: Get.height,
            imagePath: "assets/images/IMAGE.png",
            fit: BoxFit.cover,
          ),
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // tileMode: TileMode.clamp,
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [
                  Color.fromARGB(87, 0, 129, 131),
                  Color.fromARGB(87, 0, 129, 131),
                  Color.fromARGB(255, 0, 104, 106),
                  Color(0xFF008083)
                ],
              ),
            ),
          ),
          Container(
              width: Get.width,
              height: Get.height,
              //   padding: EdgeInsets.only(bottom: 56),

              child: Container(
                  width: double.maxFinite,
                  //   height: Get.height,
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(),
                        Container(
                            width: 242,
                            child: Text("msg_hello_and_welcome".tr,
                                maxLines: 2,
                                // overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineLarge!
                                    .copyWith(height: 1.31))),
                        SizedBox(height: 18),
                        Opacity(
                            opacity: 0.6,
                            child: SizedBox(
                                width: 304,
                                child: Text("msg_get_an_overview".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer13_1
                                        .copyWith(height: 1.69)))),
                        SizedBox(
                          height: 50,
                        ),
                        CustomElevatedButton(
                            onTap: () {
                              Get.toNamed(AppRoutes.signInAsScreen);
                            },
                            width: Get.width * 0.4,
                            text: "lbl_let_s_start".tr,
                            buttonStyle: CustomButtonStyles.fillBlack),
                        SizedBox(
                          height: 50,
                        ),
                      ]))),
        ],
      ),
    );
  }
}
