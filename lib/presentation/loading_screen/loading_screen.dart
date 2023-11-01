import 'controller/loading_controller.dart';
import 'package:app2/core/app_export.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends GetWidget<LoadingController> {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 375.h,
                child: Container(
                    width: 375.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 42.h, vertical: 281.v),
                    decoration: AppDecoration.fillBlueGray,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 56.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                              height: 150.v,
                              width: 240.h,
                              alignment: Alignment.centerRight),
                          SizedBox(height: 29.v),
                          Text("msg_affiliate_chat_box".tr,
                              style: theme.textTheme.titleLarge)
                        ])))));
  }
}
