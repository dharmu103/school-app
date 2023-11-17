class WorkSheetListModel {
  String? subjectName;
  List<WorkSheetModel>? workSheets;

  WorkSheetListModel({this.subjectName, this.workSheets});
}

class WorkSheetModel {
  String? heading;
  String? days;
  bool? isSubmitted;
  String? time;

  WorkSheetModel({this.heading, this.days, this.isSubmitted, this.time});
}
