import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget uploadAttendenceTable() {
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
        "lbl_present".tr,
      )),
      DataColumn(
          label: Text(
        "lbl_absent".tr,
      )),
    ],
    rows: List.generate(
        20,
        (index) => DataRow(cells: [
              DataCell(Container(
                width: 210.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_muskan_verma".tr,
                      style: CustomTextStyles.bodyMedium_1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
              DataCell(Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: CustomCheckBoxButton())),
              DataCell(Padding(
                  padding: EdgeInsets.only(), child: CustomCheckBoxButton())),
            ])),
  );
}

class CustomCheckBoxButton extends StatefulWidget {
  CustomCheckBoxButton({
    super.key,
    this.value,
  });
  bool? value;
  @override
  State<CustomCheckBoxButton> createState() => _CustomCheckBoxButtonState();
}

class _CustomCheckBoxButtonState extends State<CustomCheckBoxButton> {
  bool? value;
  @override
  void initState() {
    super.initState();
    value = widget.value; // <==== IMPORTANT LINE
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: EdgeInsets.all(1),
      decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 0.3, color: appTheme.gray400),
          color: value == null || value == false
              ? appTheme.gray50
              : theme.colorScheme.primary),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          print("object");
          print(widget.value);

          value == null || value == false ? value = true : null;

          print(value);
          setState(() {});
        },
        child: Container(
          width: 23,
          height: 23,
          padding: EdgeInsets.all(2),
          decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: appTheme.gray100),
              color: value == null || value == false
                  ? appTheme.gray50
                  : theme.colorScheme.primary),
        ),
      ),
    );
  }
}
