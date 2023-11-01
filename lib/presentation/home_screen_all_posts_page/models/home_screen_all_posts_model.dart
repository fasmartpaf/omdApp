import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_screen_all_posts_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenAllPostsModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userName: "Elezabeth".obs,
        timeAgo: "52 minute ago".obs,
        userDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et."
                .obs),
    UserprofileItemModel(
        userName: "Elezabeth".obs,
        timeAgo: "52 minute ago".obs,
        userDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et."
                .obs)
  ]);
}
