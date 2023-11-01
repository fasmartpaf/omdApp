import 'package:app2/core/app_export.dart';
import 'package:app2/presentation/home_screen_all_posts_tab_container_page/models/home_screen_all_posts_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreenAllPostsTabContainerPage.
///
/// This class manages the state of the HomeScreenAllPostsTabContainerPage, including the
/// current homeScreenAllPostsTabContainerModelObj
class HomeScreenAllPostsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomeScreenAllPostsTabContainerController(
      this.homeScreenAllPostsTabContainerModelObj);

  Rx<HomeScreenAllPostsTabContainerModel>
      homeScreenAllPostsTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 1));
}
