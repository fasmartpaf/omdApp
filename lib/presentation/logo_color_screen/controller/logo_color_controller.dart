import 'package:app2/core/app_export.dart';
import 'package:app2/presentation/logo_color_screen/models/logo_color_model.dart';

/// A controller class for the LogoColorScreen.
///
/// This class manages the state of the LogoColorScreen, including the
/// current logoColorModelObj
class LogoColorController extends GetxController {
  Rx<LogoColorModel> logoColorModelObj = LogoColorModel().obs;
}
