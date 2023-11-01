import '../controller/home_screen_all_posts_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeScreenAllPostsContainerScreen.
///
/// This class ensures that the HomeScreenAllPostsContainerController is created when the
/// HomeScreenAllPostsContainerScreen is first loaded.
class HomeScreenAllPostsContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenAllPostsContainerController());
  }
}
