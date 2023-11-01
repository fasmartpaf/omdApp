import '../home_screen_all_posts_page/widgets/userprofile_item_widget.dart';
import 'controller/home_screen_all_posts_controller.dart';
import 'models/home_screen_all_posts_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:app2/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeScreenAllPostsPage extends StatelessWidget {
  HomeScreenAllPostsPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenAllPostsController controller =
      Get.put(HomeScreenAllPostsController(HomeScreenAllPostsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 50.v),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 69.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "lbl_all_posts".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "lbl_my_posts".tr,
                                style: CustomTextStyles.titleSmallGray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.v),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildUserProfile(),
                            SizedBox(height: 17.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup81,
                              height: 36.v,
                              width: 37.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 29.h),
                            ),
                            SizedBox(height: 31.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgImageAvatar,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              radius: BorderRadius.circular(
                                25.h,
                              ),
                              margin: EdgeInsets.only(left: 22.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 88.h),
                              child: Text(
                                "lbl_elezabeth".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgDotsthreeoutlinevertical,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 22.h),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding: EdgeInsets.only(left: 88.h),
                              child: Text(
                                "lbl_52_minute_ago".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildCommentsList(),
                      _buildCommentsList1(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0.v),
              child: SizedBox(
                width: 375.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray20001,
                ),
              ),
            );
          },
          itemCount: controller.homeScreenAllPostsModelObj.value
              .userprofileItemList.value.length,
          itemBuilder: (context, index) {
            UserprofileItemModel model = controller.homeScreenAllPostsModelObj
                .value.userprofileItemList.value[index];
            return UserprofileItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 75.v),
        Container(
          width: 307.h,
          margin: EdgeInsets.only(
            left: 25.h,
            right: 43.h,
          ),
          child: Text(
            "msg_lorem_ipsum_dolor".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray700_1.copyWith(
              height: 1.83,
            ),
          ),
        ),
        SizedBox(height: 80.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildCommentsList1() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 154.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImageAvatar,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      radius: BorderRadius.circular(
                        25.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_elezabeth".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_52_minute_ago".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDotsthreeoutlinevertical,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(
                  top: 17.v,
                  bottom: 10.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        Container(
          width: 322.h,
          margin: EdgeInsets.only(
            left: 25.h,
            right: 28.h,
          ),
          child: Text(
            "msg_lorem_ipsum_dolor".tr,
            maxLines: null,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray700_1.copyWith(
              height: 1.83,
            ),
          ),
        ),
        SizedBox(height: 25.v),
        Divider(),
      ],
    );
  }
}
