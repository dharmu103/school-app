import 'package:school_app/core/app_export.dart';
import 'package:school_app/modules/student/home_screen/models/home_screen_item_model.dart';

class HomeScreenController extends GetxController {
  Rx<HomeScreenItemModel> homeScreenItemModel = HomeScreenItemModel().obs;
}
