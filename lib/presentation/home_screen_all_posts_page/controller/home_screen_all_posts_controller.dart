import 'package:app2/core/app_export.dart';
import 'package:app2/presentation/home_screen_all_posts_page/models/home_screen_all_posts_model.dart';

/// A controller class for the HomeScreenAllPostsPage.
///
/// This class manages the state of the HomeScreenAllPostsPage, including the
/// current homeScreenAllPostsModelObj
class HomeScreenAllPostsController extends GetxController {
  HomeScreenAllPostsController(this.homeScreenAllPostsModelObj);

  Rx<HomeScreenAllPostsModel> homeScreenAllPostsModelObj;
}
