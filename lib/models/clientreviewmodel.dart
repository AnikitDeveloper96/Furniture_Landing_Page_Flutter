import 'package:flutter/material.dart';

class BestSellingProducts {
  Image productImage;
  String productCategory;
  String productname;
  BestSellingProducts({
    required this.productImage,
    required this.productCategory,
    required this.productname,
  });
}

class ClientReviewUserModel {
  final Image imageAsset;
  final String username;
  final String clientDesignation;
  final String clientDescription;
  final Image profilePhoto;
  final Image ratingImage;

  ClientReviewUserModel({
    required this.imageAsset,
    required this.username,
    required this.clientDesignation,
    required this.clientDescription,
    required this.profilePhoto,
    required this.ratingImage,
  });
}

class Product {
  final String imagePath;
  final String category;
  final String name;
  final double price;
  final int rating;

  Product({
    required this.imagePath,
    required this.category,
    required this.name,
    required this.price,
    required this.rating,
  });
}

class WhyChooseUsProductPage {
  final String whyChooseUsProductPagetitle;
  final String whyChooseUsProductPageDescription;
  WhyChooseUsProductPage(
      {required this.whyChooseUsProductPagetitle,
      required this.whyChooseUsProductPageDescription,});
}

class FurnitureLandingPageFooterModel {
  String productTileFooter;
  List<String> footerItems;

  FurnitureLandingPageFooterModel(
      {required this.footerItems, required this.productTileFooter});
}
