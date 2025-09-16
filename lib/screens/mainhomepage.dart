import 'package:flutter/material.dart';
import 'package:furniturelandingpageflutter/models/clientreviewmodel.dart';

import '../widgets/app_widget.dart';

class FurnitureLandingpageScreen extends StatelessWidget {
  const FurnitureLandingpageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BestSellingProduct(),
            // FurnitureExperience(),
            // FurnitureMaterials(),
            FurnitureLandingPageClientReview(),

            /// FurnitureLandingPageFooter(),
          ],
        ),
      ),
    );
  }
}

class BestSellingProduct extends StatelessWidget {
  const BestSellingProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FurnitureExperience extends StatelessWidget {
  const FurnitureExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FurnitureMaterials extends StatelessWidget {
  const FurnitureMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FurnitureLandingPageClientReview extends StatelessWidget {
  FurnitureLandingPageClientReview({super.key});

  final List<ClientReviewUserModel> clientModel = [
    ClientReviewUserModel(
      imageAsset: Image.asset(
        "assets/images/client_review_one.png",
        fit: BoxFit.cover,
      ),
      username: "Bang Upin",
      clientDesignation: "Pedagang Asongan",
      clientDescription:
          "Terimakasih banyak, kini ruanganku menjadi lebih mewah dan terlihat mahal!",
      profilePhoto: Image.asset("assets/images/client_photo_one.png"),
      ratingImage: Image.asset("assets/images/rating_review.png"),
    ),
    ClientReviewUserModel(
      imageAsset: Image.asset(
        "assets/images/client_review_two.png",
        fit: BoxFit.cover,
      ),
      username: "Ibuk Sukijan",
      clientDesignation: "Ibu Rumah Tangga",
      clientDescription:
          "Makasih banget, aku sekarang betah tinggal di apartment karena barang-barang yang terlihat mewah!",
      profilePhoto: Image.asset("assets/images/client_photo_two.png"),
      ratingImage: Image.asset("assets/images/rating_review.png"),
    ),
    ClientReviewUserModel(
      imageAsset: Image.asset(
        "assets/images/client_review_three.png",
        fit: BoxFit.cover,
      ),
      username: "Mpok Ina",
      clientDesignation: "Karyawan Swasta",
      clientDescription:
          "Sangat terjangkau untuk kantong saya yang tidak terlalu banyak!",
      profilePhoto: Image.asset("assets/images/client_photo_three.png"),
      ratingImage: Image.asset("assets/images/rating_review.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Our Client Reviews",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 400, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: clientModel.length,
            itemBuilder: (context, index) {
              return FurnitureLandingPageAppWidgets()
                  .clientReviewLandingPageWidget(clientModel[index]);
            },
          ),
        ),
      ],
    );
  }
}

class FurnitureLandingPageFooter extends StatelessWidget {
  const FurnitureLandingPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}
