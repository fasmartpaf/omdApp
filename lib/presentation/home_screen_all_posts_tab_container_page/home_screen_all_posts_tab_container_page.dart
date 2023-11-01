import 'controller/home_screen_all_posts_tab_container_controller.dart';
import 'models/home_screen_all_posts_tab_container_model.dart';
import 'package:app2/core/app_export.dart';
import 'package:app2/widgets/app_bar/appbar_leading_image.dart';
import 'package:app2/widgets/app_bar/appbar_title_image.dart';
import 'package:app2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:app2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreenAllPostsTabContainerPage extends StatelessWidget {
  HomeScreenAllPostsTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenAllPostsTabContainerController controller = Get.put(
      HomeScreenAllPostsTabContainerController(
          HomeScreenAllPostsTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 1.v),
              _buildHeader(),
              SizedBox(
                height: 689.v,
                width: 375.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50.v),
                      height: 489.v,
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [],
                      ),
                    ),
                    _buildSeven(),
                    _buildCommentsList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return SizedBox(
      height: 229.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 229.v,
              width: 375.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 116.v,
                      width: 375.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 150.v,
                      width: 375.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray200,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 8.v,
                      margin: EdgeInsets.only(right: 26.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 5,
                        effect: ScrollingDotsEffect(
                          spacing: 2.18,
                          activeDotColor: appTheme.gray500,
                          dotColor: appTheme.gray500.withOpacity(0.46),
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgFlag,
              margin: EdgeInsets.only(
                left: 25.h,
                top: 16.v,
                bottom: 1.v,
              ),
            ),
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.only(left: 130.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSearch,
                margin: EdgeInsets.fromLTRB(25.h, 16.v, 25.h, 1.v),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 37.v,
        width: 355.h,
        margin: EdgeInsets.only(top: 13.v),
        decoration: AppDecoration.fillWhiteA,
        child: Container(
          height: 37.v,
          width: 355.h,
          decoration: BoxDecoration(
            color: appTheme.gray20001,
            borderRadius: BorderRadius.circular(
              4.h,
            ),
          ),
          child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                child: Container(
                  height: 33.v,
                  width: 177.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.gray300,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentsList() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 37.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImageAvatar39x39,
                    height: 39.adaptSize,
                    width: 39.adaptSize,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 16.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_elezabeth".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 322.h,
            margin: EdgeInsets.only(
              left: 23.h,
              right: 29.h,
            ),
            child: Text(
              "msg_lorem_ipsum_dolor".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallGray700.copyWith(
                height: 2.44,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Divider(),
        ],
      ),
    );
  }
}
