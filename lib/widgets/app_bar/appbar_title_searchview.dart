import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 324.h,
        controller: controller,
        hintText: "lbl_egg".tr,
      ),
    );
  }
}
