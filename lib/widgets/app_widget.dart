import 'package:flutter/material.dart';
import 'package:furniturelandingpageflutter/constants/colors.dart';
import 'package:furniturelandingpageflutter/models/clientreviewmodel.dart';

import '../constants/styles.dart';

class FurnitureLandingPageAppWidgets {
  /// Client Testimonail Widget
  Widget clientReviewLandingPageWidget(
    ClientReviewUserModel clientReviewUserModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Background Image
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: clientReviewUserModel.imageAsset,
          ),
          // White Review Card Container
          Container(
            width: 334,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              color: FurnitureAppLandingPageColors.whiteColor,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color:
                      FurnitureAppLandingPageColors.blackColor.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Profile photo
                    clientReviewUserModel.profilePhoto,
                    const SizedBox(width: 10),
                    // Username and designation
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(clientReviewUserModel.username,
                            style: FurnitureAppLandingPageStyles()
                                .furnitureAppLandingPageStyles(
                              FurnitureAppLandingPageColors.blackColor,
                              FontWeight.bold,
                              16,
                            )),
                        SizedBox(
                          height: 11,
                        ),
                        Text(clientReviewUserModel.clientDesignation,
                            style: TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                // Client review description
                SizedBox(
                  height: 70,
                  child: Text(
                    clientReviewUserModel.clientDescription,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 39.4),
                // Rating stars
                Center(child: clientReviewUserModel.ratingImage),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
