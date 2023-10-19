import '../controller/student_contact_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StudentContactScreen.
///
/// This class ensures that the StudentContactController is created when the
/// StudentContactScreen is first loaded.
class StudentContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentContactController());
  }
}
