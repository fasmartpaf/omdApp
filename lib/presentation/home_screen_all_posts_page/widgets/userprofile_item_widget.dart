import '../controller/home_screen_all_posts_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:app2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeScreenAllPostsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          userprofileItemModelObj.userName!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Obx(
                        () => Text(
                          userprofileItemModelObj.timeAgo!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
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
          SizedBox(height: 22.v),
          Container(
            width: 307.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 18.h,
            ),
            child: Obx(
              () => Text(
                userprofileItemModelObj.userDescription!.value,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray700_1.copyWith(
                  height: 1.83,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
