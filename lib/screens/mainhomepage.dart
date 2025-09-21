import 'package:flutter/material.dart';
import 'package:furniturelandingpageflutter/constants/colors.dart';
import 'package:furniturelandingpageflutter/constants/styles.dart';
import 'package:furniturelandingpageflutter/models/clientreviewmodel.dart';

import '../widgets/app_widget.dart';

class FurnitureLandingpageScreen extends StatelessWidget {
  const FurnitureLandingpageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BestSellingProduct(),
            FurnitureExperience(),
            FurnitureMaterials(),
            FurnitureLandingPageClientReview(),

            /// FurnitureLandingPageFooter(),
          ],
        ),
      ),
    );
  }
}

class BestSellingProduct extends StatefulWidget {
  const BestSellingProduct({super.key});

  @override
  State<BestSellingProduct> createState() => _BestSellingProductState();
}

class _BestSellingProductState extends State<BestSellingProduct> {
  int _selectedIndex = 0; // State variable to track the selected tab index

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F7F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Best Selling Product',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          // Pass the state variable to the category tabs widget
          _sellingProductCategoryTabs(),
          const SizedBox(height: 20),
          // Placeholder for the product list section

          SizedBox(
            height: 492,
            child: Row(
              children: [
                Flexible(
                  child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                            width: 42,
                          ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) =>
                          productCard(
                              Image.asset("assets/images/product_one.png"),
                              "Chair",
                              'Sakarias Armchair',
                              393,
                              4)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),

          // const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'View All',
                  style: FurnitureAppLandingPageStyles()
                      .furnitureAppLandingPageStyles(
                          FurnitureAppLandingPageColors.testimonialColor,
                          FontWeight.bold,
                          18),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.orange,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productCard(final Widget childImage, final String type,
      final String name, final int price, final double rating) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: childImage),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product type
                Text(
                  type,
                  style: TextStyle(fontSize: 16.5, color: Color(0xFF8D8D8D)),
                ),
                const SizedBox(height: 4),
                // Product name
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 21.34,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D1B39)),
                ),
                const SizedBox(height: 8),
                // Rating stars
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      index < rating.floor() ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                      size: 16,
                    );
                  }),
                ),
                const SizedBox(height: 36),
                // Price and add bu
                // tton
                Row(
                  children: [
                    Text(
                      '\$$price',
                      style: const TextStyle(
                          fontSize: 21.34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D1B39)),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // New method to handle the category tabs
  Widget _sellingProductCategoryTabs() {
    final List<String> categories = ['Chair', 'Beds', 'Sofa', 'Lamp'];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index; // Update the state
              });
            },
            child: _buildTab(categories[index], _selectedIndex == index),
          );
        }),
      ),
    );
  }

  // Method to build an individual tab
  Widget _buildTab(String title, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.grey[600],
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class FurnitureExperience extends StatelessWidget {
  const FurnitureExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(bottom: 100, top: 150), // ✅ Top margin added
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Right Section - Images
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 24),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/experience.png",
                  width: 629,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 120),

          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("EXPERIENCES",
                      style: TextStyle(
                        color: FurnitureAppLandingPageColors.testimonialColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 2,
                      )),
                  const SizedBox(height: 20),
                  Text(
                    "We Provide You The\nBest Experience",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      height: 1.3,
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "You don’t have to worry about the result because all of these interiors are made by people who are professionals in their fields with an elegant and luxurious style and with premium quality materials",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 18,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "More Info",
                        style: TextStyle(
                          color: FurnitureAppLandingPageColors.testimonialColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 13),
                      Icon(
                        Icons.arrow_right_alt,
                        color: FurnitureAppLandingPageColors.testimonialColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FurnitureMaterials extends StatelessWidget {
  const FurnitureMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 80, bottom: 40), // ✅ Top margin added
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Section - Texts
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("MATERIALS",
                      style: TextStyle(
                        color: FurnitureAppLandingPageColors.testimonialColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 2,
                      )),
                  const SizedBox(height: 20),
                  Text(
                    "Very Serious \nMaterials For Making\nFurniture",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      height: 1.3,
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "Because ponto was very serious about designing furniture for our "
                    "environment, using a very expensive and famous capital but at a "
                    "relatively low price",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 18,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "More Info",
                        style: TextStyle(
                          color: FurnitureAppLandingPageColors.testimonialColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 13),
                      Icon(
                        Icons.arrow_right_alt,
                        color: FurnitureAppLandingPageColors.testimonialColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 40),

          // Right Section - Images
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Left stacked images
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/material_one.png",
                        width: 223,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/material_three.png",
                        width: 223,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                // Big image
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/material_two.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
    return Container(
      margin: EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("TESTIMONIAL",
              style: FurnitureAppLandingPageStyles()
                  .furnitureAppLandingPageStyles(
                      FurnitureAppLandingPageColors.testimonialColor,
                      FontWeight.bold,
                      18,
                      letterspacing: 2.0)),
          const SizedBox(height: 20),
          Text("Our Client Reviews",
              style:
                  FurnitureAppLandingPageStyles().furnitureAppLandingPageStyles(
                FurnitureAppLandingPageColors.blackColor,
                FontWeight.bold,
                42,
              )),
          const SizedBox(height: 20),
          SizedBox(
            height: 478, // Adjust height as needed
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
      ),
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
