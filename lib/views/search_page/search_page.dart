import '../search_page/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:amaris_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:amaris_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amaris_app/widgets/app_bar/custom_app_bar.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 23.h,
            top: 27.v,
            right: 28.h,
          ),
          child: Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 249.v,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount:
                  controller.searchModelObj.value.searchItemList.value.length,
              itemBuilder: (context, index) {
                SearchItemModel model =
                    controller.searchModelObj.value.searchItemList.value[index];
                return SearchItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 324.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame,
        margin: EdgeInsets.only(
          top: 8.v,
          right: 314.h,
          bottom: 24.v,
        ),
      ),
      title: AppbarTitleSearchview(
        hintText: "lbl_egg".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLocationOnprimary,
          margin: EdgeInsets.fromLTRB(20.h, 19.v, 28.h, 19.v),
        ),
      ],
    );
  }
}
