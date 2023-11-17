import '../../../../core/app_export.dart';
import '../models/student_contact_model.dart';

/// A controller class for the StudentContactScreen.
///
/// This class manages the state of the StudentContactScreen, including the
/// current studentContactModelObj
class StudentContactController extends GetxController {
  Rx<StudentContactModel> studentContactModelObj = StudentContactModel().obs;
}
