import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget studentContactTable() {
  return DataTable(
    headingRowHeight: 0.v,
    headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
    headingTextStyle: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
    columnSpacing: 0,
    decoration: BoxDecoration(),
    columns: [
      DataColumn(
        label: Text(
          "lbl_name".tr,
        ),
      ),
      DataColumn(
          label: Text(
        "lbl_number".tr,
      )),
      DataColumn(label: Text(""))
    ],
    rows: List.generate(
        20,
        (index) => DataRow(cells: [
              DataCell(Container(
                width: 225.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse685,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        radius: BorderRadius.circular(10.h)),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      "lbl_muskan_verma".tr,
                      style: CustomTextStyles.bodyMedium_1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
              DataCell(
                Text("lbl_1234567890".tr, style: CustomTextStyles.bodyMedium_1),
              ),
              DataCell(CustomImageView(
                  svgPath: ImageConstant.imgArrowrightBlack900,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 16.h, top: 3.v)))
            ])),
  );
}
