import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(bottom: 56.v),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0x33008083), Color(0xFF008083)],
              ),
              image: DecorationImage(
                  image: AssetImage(ImageConstant.imgSplash),
                  opacity: 0.2,
                  fit: BoxFit.cover)),
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 18.v),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Spacer(),
                Container(
                    width: 242.h,
                    margin: EdgeInsets.only(left: 30.h, right: 32.h),
                    child: Text("msg_hello_and_welcome".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineLarge!
                            .copyWith(height: 1.31))),
                SizedBox(height: 18.v),
                Opacity(
                    opacity: 0.6,
                    child: SizedBox(
                        width: 304.h,
                        child: Text("msg_get_an_overview".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .bodyMediumOnErrorContainer13_1
                                .copyWith(height: 1.69)))),
                SizedBox(
                  height: 50.v,
                ),
                CustomElevatedButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.signInAsScreen);
                    },
                    width: 170.v,
                    text: "lbl_let_s_start".tr,
                    buttonStyle: CustomButtonStyles.fillBlack)
              ]))),
    ));
  }
}
