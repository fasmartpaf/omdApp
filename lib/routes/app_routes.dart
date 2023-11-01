import 'package:app2/presentation/logo_color_screen/logo_color_screen.dart';
import 'package:app2/presentation/logo_color_screen/binding/logo_color_binding.dart';
import 'package:app2/presentation/loading_screen/loading_screen.dart';
import 'package:app2/presentation/loading_screen/binding/loading_binding.dart';
import 'package:app2/presentation/home_screen_all_posts_container_screen/home_screen_all_posts_container_screen.dart';
import 'package:app2/presentation/home_screen_all_posts_container_screen/binding/home_screen_all_posts_container_binding.dart';
import 'package:app2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:app2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String logoColorScreen = '/logo_color_screen';

  static const String loadingScreen = '/loading_screen';

  static const String homeScreenAllPostsPage = '/home_screen_all_posts_page';

  static const String homeScreenAllPostsTabContainerPage =
      '/home_screen_all_posts_tab_container_page';

  static const String homeScreenAllPostsContainerScreen =
      '/home_screen_all_posts_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: logoColorScreen,
      page: () => LogoColorScreen(),
      bindings: [
        LogoColorBinding(),
      ],
    ),
    GetPage(
      name: loadingScreen,
      page: () => LoadingScreen(),
      bindings: [
        LoadingBinding(),
      ],
    ),
    GetPage(
      name: homeScreenAllPostsContainerScreen,
      page: () => HomeScreenAllPostsContainerScreen(),
      bindings: [
        HomeScreenAllPostsContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoadingScreen(),
      bindings: [
        LoadingBinding(),
      ],
    )
  ];
}
