import 'controller/home_screen_all_posts_container_controller.dart';
import 'package:app2/core/app_export.dart';
import 'package:app2/presentation/home_screen_all_posts_tab_container_page/home_screen_all_posts_tab_container_page.dart';
import 'package:app2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenAllPostsContainerScreen
    extends GetWidget<HomeScreenAllPostsContainerController> {
  const HomeScreenAllPostsContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeScreenAllPostsTabContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Contactadmin:
        return AppRoutes.homeScreenAllPostsTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenAllPostsTabContainerPage:
        return HomeScreenAllPostsTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
