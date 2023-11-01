import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.timeAgo,
    this.userDescription,
    this.id,
  }) {
    userName = userName ?? Rx("Elezabeth");
    timeAgo = timeAgo ?? Rx("52 minute ago");
    userDescription = userDescription ??
        Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? timeAgo;

  Rx<String>? userDescription;

  Rx<String>? id;
}
