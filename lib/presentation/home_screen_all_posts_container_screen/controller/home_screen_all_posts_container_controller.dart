import 'package:app2/core/app_export.dart';
import 'package:app2/presentation/home_screen_all_posts_container_screen/models/home_screen_all_posts_container_model.dart';

/// A controller class for the HomeScreenAllPostsContainerScreen.
///
/// This class manages the state of the HomeScreenAllPostsContainerScreen, including the
/// current homeScreenAllPostsContainerModelObj
class HomeScreenAllPostsContainerController extends GetxController {
  Rx<HomeScreenAllPostsContainerModel> homeScreenAllPostsContainerModelObj =
      HomeScreenAllPostsContainerModel().obs;
}
