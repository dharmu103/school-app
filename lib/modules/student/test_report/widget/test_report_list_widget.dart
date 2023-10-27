import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class TestReportListTile extends StatelessWidget {
  const TestReportListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
      ),
      child: Container(
        margin: EdgeInsets.all(1),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(), BoxShadow()]),
        child: ExpansionTile(
          textColor: Colors.white,
          //   shape: ShapeBorder.lerp(a, b, t),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          maintainState: true,
          title: Text(
            "Unit Test 2 ",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          subtitle: Text(
            "23, December 2023",
            style: CustomTextStyles.bodyMedium13,
          ),
          trailing: Container(
            width: 50.h,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.green),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text("87"),
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Divider(),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 4),
                          child: Text(
                            "English",
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: Text(
                            "100",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: Text("74 - B"),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (c, i) {
                  return SizedBox(
                    height: 0,
                  );
                },
                itemCount: 5),
            SizedBox(
              height: 15.v,
            )
          ],
        ),
      ),
    );
  }
}
