import 'package:school_app/core/app_export.dart';
import 'package:school_app/modules/student/student_worksheet_screen/model/worksheet_model.dart';

class StudentWorkSheetController extends GetxController {
  List<String> list = [
    "Sci",
    'SST',
    'Math',
    'Com',
    'Hin',
    'Eng',
    "Sci",
    'SST',
    'Math',
    'Com',
    'Hin',
    'Eng'
  ];
  int currentSubject = 0;

  WorkSheetListModel workSheets =
      WorkSheetListModel(subjectName: "Science", workSheets: [
    WorkSheetModel(
        heading: "Doing personal tasks...",
        days: "3 days",
        isSubmitted: true,
        time: "lbl_12_08_2021".tr),
    WorkSheetModel(
        heading: "Doing personal tasks...",
        days: "3 days",
        isSubmitted: true,
        time: "lbl_12_08_2021".tr),
    WorkSheetModel(
        heading: "Doing personal tasks...",
        days: "3 days",
        isSubmitted: false,
        time: "lbl_12_08_2021".tr),
    WorkSheetModel(
        heading: "Doing personal tasks...",
        days: "3 days",
        isSubmitted: true,
        time: "lbl_12_08_2021".tr),
    WorkSheetModel(
        heading: "Doing personal tasks...",
        days: "3 days",
        isSubmitted: true,
        time: "lbl_12_08_2021".tr)
  ]);

  changeCurrentSubject(index) {
    currentSubject = index;
    update();
  }
}
