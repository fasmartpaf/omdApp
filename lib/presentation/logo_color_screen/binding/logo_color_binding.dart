import '../controller/logo_color_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogoColorScreen.
///
/// This class ensures that the LogoColorController is created when the
/// LogoColorScreen is first loaded.
class LogoColorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogoColorController());
  }
}
