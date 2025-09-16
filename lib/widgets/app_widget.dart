import 'package:flutter/material.dart';
import 'package:furniturelandingpageflutter/models/clientreviewmodel.dart';

class FurnitureLandingPageAppWidgets {
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
            width: 300,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
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
                        Text(
                          clientReviewUserModel.username,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          clientReviewUserModel.clientDesignation,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                // Client review description
                SizedBox(
                  height: 70,
                  child: Text(
                    clientReviewUserModel.clientDescription,
                    style: const TextStyle(fontSize: 14),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                // Rating stars
                clientReviewUserModel.ratingImage,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
