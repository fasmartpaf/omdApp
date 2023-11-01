import 'controller/logo_color_controller.dart';
import 'package:app2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogoColorScreen extends GetWidget<LogoColorController> {
  const LogoColorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 441.h,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 73.h,
              vertical: 128.v,
            ),
            decoration: AppDecoration.fillBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame,
              height: 183.v,
              width: 293.h,
            ),
          ),
        ),
      ),
    );
  }
}
