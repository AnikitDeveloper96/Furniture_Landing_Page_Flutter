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