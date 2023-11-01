import 'package:app2/core/app_export.dart';
import 'package:app2/presentation/loading_screen/models/loading_model.dart';

/// A controller class for the LoadingScreen.
///
/// This class manages the state of the LoadingScreen, including the
/// current loadingModelObj
class LoadingController extends GetxController {
  Rx<LoadingModel> loadingModelObj = LoadingModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homeScreenAllPostsContainerScreen,
      );
    });
  }
}
