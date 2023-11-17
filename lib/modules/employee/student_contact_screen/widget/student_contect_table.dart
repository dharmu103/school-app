import 'package:flutter/material.dart';
import 'package:school_app/fake_data.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget studentContactTable() {
  return Container(
    width: Get.width,
    child: DataTable(
      headingRowHeight: 0,
      headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
      headingTextStyle:
          theme.textTheme.labelLarge?.copyWith(color: Colors.white),
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
                  width: Get.width * 0.65 - 48,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse685,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          radius: BorderRadius.circular(10)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        fakedata[index]["student_name"],
                        style: CustomTextStyles.bodyMedium_1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )),
                DataCell(
                  Container(
                    width: Get.width * 0.25,
                    child: Text(fakedata[index]["contect_no"],
                        style: CustomTextStyles.bodyMedium_1),
                  ),
                ),
                DataCell(CustomImageView(
                    svgPath: ImageConstant.imgArrowrightBlack900,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only()))
              ])),
    ),
  );
}
