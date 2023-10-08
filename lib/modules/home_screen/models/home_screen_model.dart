import '../../../core/app_export.dart';
import 'home_screen_item_model.dart';

/// This class defines the variables used in the [home_screen_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  Rx<List<HomeScreenItemModel>> HomeScreenItemList =
      Rx(List.generate(2, (index) => HomeScreenItemModel()));
}
