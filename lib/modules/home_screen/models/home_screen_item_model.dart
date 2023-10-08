import '../../../core/app_export.dart';

/// This class is used in the [home_screen_one_item_widget] screen.
class HomeScreenItemModel {
  HomeScreenItemModel({
    this.surfaceareasand,
    this.mathematics,
    this.id,
  }) {
    surfaceareasand = surfaceareasand ?? Rx("Surface Areas and Volumes");
    mathematics = mathematics ?? Rx("Mathematics");
    id = id ?? Rx("");
  }

  Rx<String>? surfaceareasand;

  Rx<String>? mathematics;

  Rx<String>? id;
}
