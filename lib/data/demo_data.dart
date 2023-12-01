// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:amaris_app/core/app_export.dart';

class ProductItem {
  final String name;
  final String disc;
  final String price;
  final String imagePath;

  ProductItem(this.name, this.disc, this.price, this.imagePath);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'disc': disc,
      'price': price,
      'imagePath': imagePath,
    };
  }

  factory ProductItem.fromMap(Map<String, dynamic> map) {
    return ProductItem(
      map['name'] as String,
      map['disc'] as String,
      map['price'] as String,
      map['imagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductItem.fromJson(String source) =>
      ProductItem.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<ProductItem> exclusiveOfferList = [
  ProductItem("lbl_organic_bananas".tr, "lbl_7pcs_priceg".tr, "lbl_4_99".tr,
      ImageConstant.img92f1ea7dcce3b5d),
  ProductItem("lbl_red_apple".tr, "lbl_1kg_priceg".tr, "lbl_4_99".tr,
      ImageConstant.imgPngfuel1),
  ProductItem("lbl_organic_bananas".tr, "lbl_7pcs_priceg".tr, "lbl_4_99".tr,
      ImageConstant.img92f1ea7dcce3b5d),
];
