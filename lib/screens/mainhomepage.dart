import 'package:flutter/material.dart';
import 'package:furniturelandingpageflutter/constants/colors.dart';
import 'package:furniturelandingpageflutter/constants/styles.dart';
import 'package:furniturelandingpageflutter/models/clientreviewmodel.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            FurnitureFrontpage(),
            BestSellingProduct(),
            FurnitureExperience(),
            FurnitureMaterials(),
            FurnitureLandingPageClientReview(),
            FurnitureLandingPageFooter(),
          ],
        ),
      ),
    );
  }
}

class FurnitureFrontpage extends StatelessWidget {
  FurnitureFrontpage({super.key});

  final List<String> furnitureHeaders = [
    "Furniture",
    "Shop",
    "About Us",
    "Contact"
  ];

  List<WhyChooseUsProductPage> whyChooseUsProductPage = [
    WhyChooseUsProductPage(
      whyChooseUsProductPagetitle: "Luxury facilities",
      whyChooseUsProductPageDescription:
          "The advantage of hiring a workspace with us is that gives you comfortable service and all-around facilities.",
    ),
    WhyChooseUsProductPage(
      whyChooseUsProductPagetitle: " Affordable Price",
      whyChooseUsProductPageDescription:
          "You can get a workspace of the highest quality at an affordable price and still enjoy the facilities that are all here.",
    ),
    // WhyChooseUsProductPage(
    //   whyChooseUsProductPagetitle: "Many Choices",
    //   whyChooseUsProductPageDescription:
    //       "We provide many unique work space choices so that you can choose the workspace to your liking.",
    // ),
  ];

  Widget _buildWhyChooseUsCard(WhyChooseUsProductPage data) {
    // Reverting to the flexible Column structure.
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.whyChooseUsProductPagetitle,
          style: const TextStyle(
            color: Color(0xFF1E1E1E),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          data.whyChooseUsProductPageDescription,
          style: const TextStyle(
            color: Color(0xFF1E1E1E),
            fontWeight: FontWeight.normal,
            fontSize: 16,
            height: 1.6,
          ),
          maxLines: 3,
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Text(
              "More Info",
              style: TextStyle(
                color: FurnitureAppLandingPageColors.testimonialColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              maxLines: 1,
            ),
            const SizedBox(width: 5),
            Icon(Icons.arrow_forward,
                size: 20, color: FurnitureAppLandingPageColors.testimonialColor)
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final isDesktop = sizingInformation.isDesktop;
        final horizontalMargin = isDesktop ? 80.0 : 20.0;
        final heroFontSize = isDesktop ? 80.0 : 40.0;
        final heroWidth =
            isDesktop ? 606.0 : sizingInformation.localWidgetSize.width * 0.9;
        final searchContainerWidth =
            isDesktop ? 334.0 : sizingInformation.localWidgetSize.width * 0.9;

        return Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/background_photo.png"),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: horizontalMargin, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Panto",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            if (isDesktop)
                              Row(
                                children: List.generate(furnitureHeaders.length,
                                    (int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 65.0),
                                    child: Text(
                                      furnitureHeaders[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 60.0, bottom: 27.0),
                        child: Text(
                          "Make Your Interior More \n Minimalistic & Modern ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: heroFontSize,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: heroWidth,
                        child: const Text(
                          "Turn you room into panto into a lot more minimalist and modern with ease and speed ",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                              letterSpacing: 1.4,
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Container(
                        width: searchContainerWidth,
                        margin: const EdgeInsets.all(25.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Search Furniture",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: const Padding(
                                  padding: EdgeInsets.all(11.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ScreenTypeLayout.builder(
              mobile: (context) => Container(
                margin: EdgeInsets.symmetric(
                    horizontal: horizontalMargin, vertical: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Why\nChoosing Us", // Corrected title
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        height: 1.3,
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(height: 40),
                    Wrap(
                      runSpacing: 17,
                      spacing: 0,
                      children: List.generate(
                        whyChooseUsProductPage.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 37.0),
                          child: _buildWhyChooseUsCard(
                              whyChooseUsProductPage[index]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              desktop: (context) => Container(
                margin: EdgeInsets.only(
                    top: 158, left: horizontalMargin, bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Why\nChoosing Us", // Corrected title
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        height: 1.3,
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(width: 80),
                    Expanded(
                      child: Wrap(
                        runSpacing: 37,
                        clipBehavior: Clip.antiAlias,
                        alignment: WrapAlignment.start,
                        spacing: 37,
                        children: List.generate(
                          whyChooseUsProductPage.length,
                          (index) => SizedBox(
                            width: 284,
                            child: _buildWhyChooseUsCard(
                                whyChooseUsProductPage[index]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class BestSellingProduct extends StatefulWidget {
  const BestSellingProduct({super.key});

  @override
  State<BestSellingProduct> createState() => _BestSellingProductState();
}

class _BestSellingProductState extends State<BestSellingProduct> {
  int _selectedIndex = 0;

  List<Product> products = [
    Product(
      imagePath: "assets/images/product_one.png",
      category: "Chair",
      name: 'Sakarias Armchair',
      price: 393,
      rating: 4,
    ),
    Product(
      imagePath: "assets/images/product_two.png",
      category: "Chair",
      name: 'Baltsar Chair',
      price: 299,
      rating: 5,
    ),
    Product(
      imagePath: "assets/images/product_three.png",
      category: "Chair",
      name: 'Nyantuy Chair',
      price: 921,
      rating: 3,
    ),
    Product(
      imagePath: "assets/images/product_four.png",
      category: "Chair",
      name: 'Nyantuy Chair',
      price: 519,
      rating: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final isDesktop = sizingInformation.isDesktop;
        final productCardHeight = isDesktop ? 592.0 : 540.0;
        final listPadding = isDesktop ? 120.0 : 20.0;
        final titleFontSize = isDesktop ? 42.0 : 32.0;

        return Container(
          color: Color(0xFFF7F7F7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text(
                'Best Selling Product',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              _sellingProductCategoryTabs(),
              const SizedBox(height: 20),
              SizedBox(
                height: productCardHeight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(listPadding, 40, listPadding, 40),
                  child: Theme(
                      data: Theme.of(context).copyWith(
                        scrollbarTheme: ScrollbarThemeData(
                            thumbColor: MaterialStateProperty.all<Color>(
                                FurnitureAppLandingPageColors
                                    .testimonialColor)),
                      ),
                      child: Scrollbar(
                          thumbVisibility:
                              true, // Make the thumb always visible
                          trackVisibility:
                              true, // Make the track always visible
                          thickness:
                              10, // Adjust the thickness of the scrollbar
                          radius: const Radius.circular(5),
                          child: ListView.separated(
                            padding: EdgeInsets.symmetric(
                                horizontal: isDesktop ? 40.0 : 50.0),
                            itemCount: products.length,
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              width: isDesktop ? 42 : 20,
                              height: isDesktop ? 0 : 20,
                            ),
                            scrollDirection:
                                isDesktop ? Axis.horizontal : Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) =>
                                productCard(products[index]),
                          ))),
                ),
              ),
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
                    SizedBox(width: 12),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.orange,
                      size: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        );
      },
    );
  }

  Widget productCard(Product product) {
    return Container(
      width: 300,
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
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(product.imagePath)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category,
                    style: TextStyle(fontSize: 16.5, color: Color(0xFF8D8D8D)),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 21.34,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D1B39)),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < product.rating.floor()
                            ? Icons.star
                            : Icons.star_border,
                        color: Colors.amber,
                        size: 16,
                      );
                    }),
                  ),
                  const SizedBox(height: 36),
                  Row(
                    children: [
                      Text(
                        '\$${product.price}',
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
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                _selectedIndex = index;
              });
            },
            child: _buildTab(categories[index], _selectedIndex == index),
          );
        }),
      ),
    );
  }

  Widget _buildTab(String title, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            )
          : BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.black.withOpacity(.8),
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class FurnitureExperience extends StatelessWidget {
  const FurnitureExperience({super.key});

  Widget _buildExperienceText(double titleFontSize, double padding) {
    return Container(
      margin: EdgeInsets.only(top: padding),
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
              fontSize: titleFontSize,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => Container(
        margin: const EdgeInsets.only(bottom: 50, top: 80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/experience.png",
                fit: BoxFit.cover,
              ),
            ),
            _buildExperienceText(32.0, 40.0),
          ],
        ),
      ),
      desktop: (context) => Container(
        margin: const EdgeInsets.only(bottom: 100, top: 150),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 80),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/experience.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 120),
            Expanded(
              flex: 1,
              child: _buildExperienceText(42.0, 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

class FurnitureMaterials extends StatelessWidget {
  const FurnitureMaterials({super.key});

  Widget _buildMaterialText(double titleFontSize, double padding) {
    return Container(
      margin: EdgeInsets.only(top: padding),
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
              fontSize: titleFontSize,
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
    );
  }

  Widget _buildMaterialImages(bool isDesktop) {
    if (!isDesktop) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          "assets/images/material_two.png",
          fit: BoxFit.cover,
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMaterialText(32.0, 0.0),
            const SizedBox(height: 40),
            _buildMaterialImages(false),
          ],
        ),
      ),
      desktop: (context) => Container(
        margin: const EdgeInsets.only(left: 80, bottom: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: _buildMaterialText(42.0, 64.0),
            ),
            const SizedBox(width: 40),
            Expanded(
              flex: 1,
              child: _buildMaterialImages(true),
            ),
          ],
        ),
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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final isDesktop = sizingInformation.isDesktop;
        final margin = isDesktop ? 60.0 : 20.0;
        final titleFontSize = isDesktop ? 42.0 : 32.0;

        return Container(
          margin: EdgeInsets.all(margin),
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
                  style: FurnitureAppLandingPageStyles()
                      .furnitureAppLandingPageStyles(
                    FurnitureAppLandingPageColors.blackColor,
                    FontWeight.bold,
                    titleFontSize,
                  )),
              const SizedBox(height: 20),
              // START OF SCROLLBAR IMPLEMENTATION
              SizedBox(
                height: isDesktop ? 478 : 350,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    scrollbarTheme: ScrollbarThemeData(
                        thumbColor: MaterialStateProperty.all<Color>(
                            FurnitureAppLandingPageColors.testimonialColor)),
                  ),
                  child: Scrollbar(
                    thumbVisibility: true, // Make the thumb always visible
                    trackVisibility: true, // Make the track always visible
                    thickness: 10, // Adjust the thickness of the scrollbar
                    radius: const Radius.circular(5),

                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(
                          horizontal: isDesktop ? 40.0 : 40.0),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: clientModel.length,
                      itemBuilder: (context, index) {
                        return FurnitureLandingPageAppWidgets()
                            .clientReviewLandingPageWidget(clientModel[index]);
                      },
                    ),
                  ),
                ),
              ),
              // END OF SCROLLBAR IMPLEMENTATION
            ],
          ),
        );
      },
    );
  }
}

class FurnitureLandingPageFooter extends StatelessWidget {
  FurnitureLandingPageFooter({super.key});

  List<FurnitureLandingPageFooterModel> furnitureLandingPageFooter = [
    FurnitureLandingPageFooterModel(
        productTileFooter: "Services",
        footerItems: [
          "Email Marketing",
          "Campaigns",
          "Branding",
        ]),
    FurnitureLandingPageFooterModel(
        productTileFooter: "Furniture", footerItems: ["Beds", "Chair", "All"]),
    FurnitureLandingPageFooterModel(
        productTileFooter: "Follow Us",
        footerItems: ["Facebook", "Instagram", "Youtube"]),
  ];

  Widget _buildFooterLinks(bool isDesktop) {
    return Wrap(
        runSpacing: 37,
        clipBehavior: Clip.antiAlias,
        alignment: isDesktop ? WrapAlignment.spaceBetween : WrapAlignment.start,
        spacing: isDesktop ? 36 : 100,
        children: List.generate(
          furnitureLandingPageFooter.length,
          (index) => SizedBox(
            width: isDesktop ? 272 : 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(furnitureLandingPageFooter[index].productTileFooter,
                    style: TextStyle(
                      color: FurnitureAppLandingPageColors.testimonialColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    furnitureLandingPageFooter[index].footerItems.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        furnitureLandingPageFooter[index].footerItems[index],
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          height: 1.6,
                        ),
                        maxLines: 3,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLogoAndDescription(),
            SizedBox(height: 40),
            _buildFooterLinks(false),
            SizedBox(height: 40),
            ////    _buildCopyright(),
          ],
        ),
      ),
      desktop: (context) => Container(
        margin: EdgeInsets.all(60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildLogoAndDescription(),
                ),
                SizedBox(width: 120),
                _buildFooterLinks(true),
              ],
            ),

            ///    _buildCopyright(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoAndDescription() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: const Text(
            "Panto",
            style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 293,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: const Text(
            "The advantage of hiring a workspace with us is that gives you comfortable service and all-around facilities",
            style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 15,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
        ),
      ],
    );
  }

  // Widget _buildCopyright() {
  //   return Column(
  //     children: [
  //       Divider(color: Colors.grey[300]),
  //       Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 20.0),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text('Copyright © 2021', style: TextStyle(fontSize: 14)),
  //             // START OF OVERFLOW FIX
  //             Flexible(
  //               // Added Flexible to prevent overflow on small screens
  //               child: Row(
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: [
  //                   Text('Terms & Conditions', style: TextStyle(fontSize: 14)),
  //                   SizedBox(width: 20),
  //                   Text('Privacy Policy', style: TextStyle(fontSize: 14)),
  //                 ],
  //               ),
  //             ),
  //             // END OF OVERFLOW FIX
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
// import 'package:flutter/material.dart';
// import 'package:furniturelandingpageflutter/constants/colors.dart';
// import 'package:furniturelandingpageflutter/constants/styles.dart';
// import 'package:furniturelandingpageflutter/models/clientreviewmodel.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// import '../widgets/app_widget.dart';

// class FurnitureLandingpageScreen extends StatelessWidget {
//   const FurnitureLandingpageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             FurnitureFrontpage(),
//             BestSellingProduct(),
//             FurnitureExperience(),
//             FurnitureMaterials(),
//             FurnitureLandingPageClientReview(),
//             FurnitureLandingPageFooter(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FurnitureFrontpage extends StatelessWidget {
//   FurnitureFrontpage({super.key});

//   final List<String> furnitureHeaders = [
//     "Furniture",
//     "Shop",
//     "About Us",
//     "Contact"
//   ];

//   List<WhyChooseUsProductPage> whyChooseUsProductPage = [
//     WhyChooseUsProductPage(
//       whyChooseUsProductPagetitle: "Luxury facilities",
//       whyChooseUsProductPageDescription:
//           "The advantage of hiring a workspace with us is that gives you comfortable service and all-around facilities.",
//     ),
//     WhyChooseUsProductPage(
//       whyChooseUsProductPagetitle: " Affordable Price",
//       whyChooseUsProductPageDescription:
//           "You can get a workspace of the highest quality at an affordable price and still enjoy the facilities that are all here.",
//     ),
//     WhyChooseUsProductPage(
//       whyChooseUsProductPagetitle: "Many Choices",
//       whyChooseUsProductPageDescription:
//           "We provide many unique work space choices so that you can choose the workspace to your liking.",
//     ),
//   ];

//   Widget _buildWhyChooseUsCard(WhyChooseUsProductPage data) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           data.whyChooseUsProductPagetitle,
//           style: TextStyle(
//             color: Color(0xFF1E1E1E),
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         const SizedBox(height: 20),
//         Text(
//           data.whyChooseUsProductPageDescription,
//           style: TextStyle(
//             color: Color(0xFF1E1E1E),
//             fontWeight: FontWeight.normal,
//             fontSize: 16,
//             height: 1.6,
//           ),
//           maxLines: 3,
//         ),
//         SizedBox(height: 14),
//         Row(
//           children: [
//             Text(
//               "More Info",
//               style: TextStyle(
//                 color: FurnitureAppLandingPageColors.testimonialColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14,
//               ),
//               maxLines: 1,
//             ),
//             SizedBox(width: 5),
//             Icon(Icons.arrow_forward,
//                 size: 20, color: FurnitureAppLandingPageColors.testimonialColor)
//           ],
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         final isDesktop = sizingInformation.isDesktop;
//         final horizontalMargin = isDesktop ? 80.0 : 20.0;
//         final heroFontSize = isDesktop ? 80.0 : 40.0;
//         final heroWidth =
//             isDesktop ? 606.0 : sizingInformation.localWidgetSize.width * 0.9;
//         final searchContainerWidth =
//             isDesktop ? 334.0 : sizingInformation.localWidgetSize.width * 0.9;

//         return Column(
//           children: [
//             Stack(
//               children: [
//                 Image.asset("assets/images/background_photo.png"),
//                 Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: horizontalMargin, vertical: 15.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Panto",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 28,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             if (isDesktop)
//                               Row(
//                                 children: List.generate(furnitureHeaders.length,
//                                     (int index) {
//                                   return Padding(
//                                     padding: const EdgeInsets.only(left: 65.0),
//                                     child: Text(
//                                       furnitureHeaders[index],
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   );
//                                 }),
//                               ),
//                             const Icon(
//                               Icons.shopping_bag_outlined,
//                               color: Colors.white,
//                               size: 30,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: const EdgeInsets.only(top: 60.0, bottom: 27.0),
//                         child: Text(
//                           "Make Your Interior More \n Minimalistic & Modern ",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: heroFontSize,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Container(
//                         width: heroWidth,
//                         child: const Text(
//                           "Turn you room into panto into a lot more minimalist and modern with ease and speed ",
//                           textAlign: TextAlign.center,
//                           maxLines: 2,
//                           style: TextStyle(
//                               letterSpacing: 1.4,
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.normal),
//                         ),
//                       ),
//                       Container(
//                         width: searchContainerWidth,
//                         margin: const EdgeInsets.all(25.0),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20.0, vertical: 15.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           border: Border.all(
//                             color: Colors.white,
//                             width: 1,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               "Search Furniture",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.normal,
//                               ),
//                             ),
//                             Flexible(
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.amber,
//                                     borderRadius: BorderRadius.circular(20.0)),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(11.0),
//                                   child: Icon(
//                                     Icons.search,
//                                     color: Colors.white,
//                                     size: 24,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
    //         ScreenTypeLayout.builder(
    //           mobile: (context) => Container(
    //             margin: EdgeInsets.symmetric(
    //                 horizontal: horizontalMargin, vertical: 80),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   "Why\nChoose us ",
    //                   style: TextStyle(
    //                     color: Color(0xFF1E1E1E),
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 32,
    //                     height: 1.3,
    //                   ),
    //                   maxLines: 3,
    //                 ),
    //                 SizedBox(height: 40),
    //                 Wrap(
    //                   runSpacing: 37,
    //                   spacing: 0,
    //                   children: List.generate(
    //                     whyChooseUsProductPage.length,
    //                     (index) => Padding(
    //                       padding: const EdgeInsets.only(bottom: 37.0),
    //                       child: _buildWhyChooseUsCard(
    //                           whyChooseUsProductPage[index]),
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           desktop: (context) => Container(
    //             margin: EdgeInsets.only(
    //                 top: 158, left: horizontalMargin, bottom: 100),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   "Why\nChoose us ",
    //                   style: TextStyle(
    //                     color: Color(0xFF1E1E1E),
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 42,
    //                     height: 1.3,
    //                   ),
    //                   maxLines: 3,
    //                 ),
    //                 SizedBox(width: 80),
    //                 Expanded(
    //                   child: Wrap(
    //                     runSpacing: 37,
    //                     clipBehavior: Clip.antiAlias,
    //                     alignment: WrapAlignment.start,
    //                     spacing: 37,
    //                     children: List.generate(
    //                       whyChooseUsProductPage.length,
    //                       (index) => SizedBox(
    //                         width: 284,
    //                         child: _buildWhyChooseUsCard(
    //                             whyChooseUsProductPage[index]),
    //                       ),
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     );
    //   },
    // );
//   }
// }

// class BestSellingProduct extends StatefulWidget {
//   const BestSellingProduct({super.key});

//   @override
//   State<BestSellingProduct> createState() => _BestSellingProductState();
// }

// class _BestSellingProductState extends State<BestSellingProduct> {
//   int _selectedIndex = 0;

//   List<Product> products = [
//     Product(
//       imagePath: "assets/images/product_one.png",
//       category: "Chair",
//       name: 'Sakarias Armchair',
//       price: 393,
//       rating: 4,
//     ),
//     Product(
//       imagePath: "assets/images/product_two.png",
//       category: "Chair",
//       name: 'Baltsar Chair',
//       price: 299,
//       rating: 5,
//     ),
//     Product(
//       imagePath: "assets/images/product_three.png",
//       category: "Chair",
//       name: 'Nyantuy Chair',
//       price: 921,
//       rating: 3,
//     ),
//     Product(
//       imagePath: "assets/images/product_four.png",
//       category: "Chair",
//       name: 'Nyantuy Chair',
//       price: 519,
//       rating: 4,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         final isDesktop = sizingInformation.isDesktop;
//         final productCardHeight = isDesktop ? 592.0 : 400.0;
//         final listPadding = isDesktop ? 120.0 : 20.0;
//         final titleFontSize = isDesktop ? 42.0 : 32.0;

//         return Container(
//           color: Color(0xFFF7F7F7),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 50),
//               Text(
//                 'Best Selling Product',
//                 style: TextStyle(
//                   fontSize: titleFontSize,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 30),
//               _sellingProductCategoryTabs(),
//               const SizedBox(height: 20),
//               SizedBox(
//                 height: productCardHeight,
//                 child: Container(
//                   margin: EdgeInsets.fromLTRB(listPadding, 40, listPadding, 40),
//                   child: ListView.separated(
//                     itemCount: products.length,
//                     separatorBuilder: (BuildContext context, int index) =>
//                         SizedBox(
//                       width: isDesktop ? 42 : 20,
//                       height: isDesktop ? 0 : 20,
//                     ),
//                     scrollDirection:
//                         isDesktop ? Axis.horizontal : Axis.vertical,
//                     itemBuilder: (BuildContext context, int index) =>
//                         productCard(products[index]),
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       'View All',
//                       style: FurnitureAppLandingPageStyles()
//                           .furnitureAppLandingPageStyles(
//                               FurnitureAppLandingPageColors.testimonialColor,
//                               FontWeight.bold,
//                               18),
//                     ),
//                     SizedBox(width: 12),
//                     Icon(
//                       Icons.arrow_forward,
//                       color: Colors.orange,
//                       size: 16,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 80),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget productCard(Product product) {
//     return Container(
//       width: 300,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: SingleChildScrollView(
//         physics: NeverScrollableScrollPhysics(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(15)),
//                 child: Image.asset(product.imagePath)),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.category,
//                     style: TextStyle(fontSize: 16.5, color: Color(0xFF8D8D8D)),
//                   ),
//                   const SizedBox(height: 6),
//                   Text(
//                     product.name,
//                     style: const TextStyle(
//                         fontSize: 21.34,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF0D1B39)),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: List.generate(5, (index) {
//                       return Icon(
//                         index < product.rating.floor()
//                             ? Icons.star
//                             : Icons.star_border,
//                         color: Colors.amber,
//                         size: 16,
//                       );
//                     }),
//                   ),
//                   const SizedBox(height: 36),
//                   Row(
//                     children: [
//                       Text(
//                         '\$${product.price}',
//                         style: const TextStyle(
//                             fontSize: 21.34,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF0D1B39)),
//                       ),
//                       SizedBox(
//                         width: 120,
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           color: Colors.black,
//                           shape: BoxShape.circle,
//                         ),
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.add,
//                             color: Colors.white,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _sellingProductCategoryTabs() {
//     final List<String> categories = ['Chair', 'Beds', 'Sofa', 'Lamp'];

//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: List.generate(categories.length, (index) {
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             child: _buildTab(categories[index], _selectedIndex == index),
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildTab(String title, bool isSelected) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//       decoration: isSelected
//           ? BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(30),
//             )
//           : BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(30),
//             ),
//       child: Text(
//         title,
//         style: TextStyle(
//           color: isSelected ? Colors.black : Colors.black.withOpacity(.8),
//           fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//         ),
//       ),
//     );
//   }
// }

// class FurnitureExperience extends StatelessWidget {
//   const FurnitureExperience({super.key});

//   Widget _buildExperienceText(double titleFontSize, double padding) {
//     return Container(
//       margin: EdgeInsets.only(top: padding),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("EXPERIENCES",
//               style: TextStyle(
//                 color: FurnitureAppLandingPageColors.testimonialColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//                 letterSpacing: 2,
//               )),
//           const SizedBox(height: 20),
//           Text(
//             "We Provide You The\nBest Experience",
//             style: TextStyle(
//               color: Color(0xFF1E1E1E),
//               fontWeight: FontWeight.bold,
//               fontSize: titleFontSize,
//               height: 1.3,
//             ),
//             maxLines: 3,
//           ),
//           const SizedBox(height: 14),
//           Text(
//             "You don’t have to worry about the result because all of these interiors are made by people who are professionals in their fields with an elegant and luxurious style and with premium quality materials",
//             style: TextStyle(
//               color: Color(0xFF1E1E1E),
//               fontSize: 18,
//               height: 1.6,
//             ),
//           ),
//           const SizedBox(height: 30),
//           Row(
//             children: [
//               Text(
//                 "More Info",
//                 style: TextStyle(
//                   color: FurnitureAppLandingPageColors.testimonialColor,
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(width: 13),
//               Icon(
//                 Icons.arrow_right_alt,
//                 color: FurnitureAppLandingPageColors.testimonialColor,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScreenTypeLayout.builder(
//       mobile: (context) => Container(
//         margin: const EdgeInsets.only(bottom: 50, top: 80, left: 20, right: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 "assets/images/experience.png",
//                 fit: BoxFit.cover,
//               ),
//             ),
//             _buildExperienceText(32.0, 40.0),
//           ],
//         ),
//       ),
//       desktop: (context) => Container(
//         margin: const EdgeInsets.only(bottom: 100, top: 150),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 margin: const EdgeInsets.only(left: 80),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.asset(
//                     "assets/images/experience.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 120),
//             Expanded(
//               flex: 1,
//               child: _buildExperienceText(42.0, 24.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FurnitureMaterials extends StatelessWidget {
//   const FurnitureMaterials({super.key});

//   Widget _buildMaterialText(double titleFontSize, double padding) {
//     return Container(
//       margin: EdgeInsets.only(top: padding),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("MATERIALS",
//               style: TextStyle(
//                 color: FurnitureAppLandingPageColors.testimonialColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//                 letterSpacing: 2,
//               )),
//           const SizedBox(height: 20),
//           Text(
//             "Very Serious \nMaterials For Making\nFurniture",
//             style: TextStyle(
//               color: Color(0xFF1E1E1E),
//               fontWeight: FontWeight.bold,
//               fontSize: titleFontSize,
//               height: 1.3,
//             ),
//             maxLines: 3,
//           ),
//           const SizedBox(height: 14),
//           Text(
//             "Because ponto was very serious about designing furniture for our "
//             "environment, using a very expensive and famous capital but at a "
//             "relatively low price",
//             style: TextStyle(
//               color: Color(0xFF1E1E1E),
//               fontSize: 18,
//               height: 1.6,
//             ),
//           ),
//           const SizedBox(height: 30),
//           Row(
//             children: [
//               Text(
//                 "More Info",
//                 style: TextStyle(
//                   color: FurnitureAppLandingPageColors.testimonialColor,
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(width: 13),
//               Icon(
//                 Icons.arrow_right_alt,
//                 color: FurnitureAppLandingPageColors.testimonialColor,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMaterialImages(bool isDesktop) {
//     if (!isDesktop) {
//       return ClipRRect(
//         borderRadius: BorderRadius.circular(16),
//         child: Image.asset(
//           "assets/images/material_two.png",
//           fit: BoxFit.cover,
//         ),
//       );
//     }

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Column(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 "assets/images/material_one.png",
//                 width: 223,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 20),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 "assets/images/material_three.png",
//                 width: 223,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(width: 20),
//         Flexible(
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Image.asset(
//               "assets/images/material_two.png",
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScreenTypeLayout.builder(
//       mobile: (context) => Container(
//         margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 80),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildMaterialText(32.0, 0.0),
//             const SizedBox(height: 40),
//             _buildMaterialImages(false),
//           ],
//         ),
//       ),
//       desktop: (context) => Container(
//         margin: const EdgeInsets.only(left: 80, bottom: 40),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 1,
//               child: _buildMaterialText(42.0, 64.0),
//             ),
//             const SizedBox(width: 40),
//             Expanded(
//               flex: 1,
//               child: _buildMaterialImages(true),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FurnitureLandingPageClientReview extends StatelessWidget {
//   FurnitureLandingPageClientReview({super.key});

//   final List<ClientReviewUserModel> clientModel = [
//     ClientReviewUserModel(
//       imageAsset: Image.asset(
//         "assets/images/client_review_one.png",
//         fit: BoxFit.cover,
//       ),
//       username: "Bang Upin",
//       clientDesignation: "Pedagang Asongan",
//       clientDescription:
//           "Terimakasih banyak, kini ruanganku menjadi lebih mewah dan terlihat mahal!",
//       profilePhoto: Image.asset("assets/images/client_photo_one.png"),
//       ratingImage: Image.asset("assets/images/rating_review.png"),
//     ),
//     ClientReviewUserModel(
//       imageAsset: Image.asset(
//         "assets/images/client_review_two.png",
//         fit: BoxFit.cover,
//       ),
//       username: "Ibuk Sukijan",
//       clientDesignation: "Ibu Rumah Tangga",
//       clientDescription:
//           "Makasih banget, aku sekarang betah tinggal di apartment karena barang-barang yang terlihat mewah!",
//       profilePhoto: Image.asset("assets/images/client_photo_two.png"),
//       ratingImage: Image.asset("assets/images/rating_review.png"),
//     ),
//     ClientReviewUserModel(
//       imageAsset: Image.asset(
//         "assets/images/client_review_three.png",
//         fit: BoxFit.cover,
//       ),
//       username: "Mpok Ina",
//       clientDesignation: "Karyawan Swasta",
//       clientDescription:
//           "Sangat terjangkau untuk kantong saya yang tidak terlalu banyak!",
//       profilePhoto: Image.asset("assets/images/client_photo_three.png"),
//       ratingImage: Image.asset("assets/images/rating_review.png"),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         final isDesktop = sizingInformation.isDesktop;
//         final margin = isDesktop ? 60.0 : 20.0;
//         final titleFontSize = isDesktop ? 42.0 : 32.0;

//         return Container(
//           margin: EdgeInsets.all(margin),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("TESTIMONIAL",
//                   style: FurnitureAppLandingPageStyles()
//                       .furnitureAppLandingPageStyles(
//                           FurnitureAppLandingPageColors.testimonialColor,
//                           FontWeight.bold,
//                           18,
//                           letterspacing: 2.0)),
//               const SizedBox(height: 20),
//               Text("Our Client Reviews",
//                   style: FurnitureAppLandingPageStyles()
//                       .furnitureAppLandingPageStyles(
//                     FurnitureAppLandingPageColors.blackColor,
//                     FontWeight.bold,
//                     titleFontSize,
//                   )),
//               const SizedBox(height: 20),
//               SizedBox(
//                 height: isDesktop ? 478 : 350,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: clientModel.length,
//                   itemBuilder: (context, index) {
//                     return FurnitureLandingPageAppWidgets()
//                         .clientReviewLandingPageWidget(clientModel[index]);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class FurnitureLandingPageFooter extends StatelessWidget {
//   FurnitureLandingPageFooter({super.key});

//   List<FurnitureLandingPageFooterModel> furnitureLandingPageFooter = [
//     FurnitureLandingPageFooterModel(
//         productTileFooter: "Services",
//         footerItems: [
//           "Email Marketing",
//           "Campaigns",
//           "Branding",
//         ]),
//     FurnitureLandingPageFooterModel(
//         productTileFooter: "Furniture", footerItems: ["Beds", "Chair", "All"]),
//     FurnitureLandingPageFooterModel(
//         productTileFooter: "Follow Us",
//         footerItems: ["Facebook", "Instagram", "Youtube"]),
//   ];

//   Widget _buildFooterLinks(bool isDesktop) {
//     return Wrap(
//         runSpacing: 37,
//         clipBehavior: Clip.antiAlias,
//         alignment: isDesktop ? WrapAlignment.spaceBetween : WrapAlignment.start,
//         spacing: isDesktop ? 36 : 100,
//         children: List.generate(
//           furnitureLandingPageFooter.length,
//           (index) => SizedBox(
//             width: isDesktop ? 272 : 150,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(furnitureLandingPageFooter[index].productTileFooter,
//                     style: TextStyle(
//                       color: FurnitureAppLandingPageColors.testimonialColor,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 17,
//                     )),
//                 const SizedBox(height: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: List.generate(
//                     furnitureLandingPageFooter[index].footerItems.length,
//                     (index) => Padding(
//                       padding: const EdgeInsets.only(bottom: 8.0),
//                       child: Text(
//                         furnitureLandingPageFooter[index].footerItems[index],
//                         style: TextStyle(
//                           color: Color(0xFF1E1E1E),
//                           fontWeight: FontWeight.normal,
//                           fontSize: 15,
//                           height: 1.6,
//                         ),
//                         maxLines: 3,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScreenTypeLayout.builder(
//       mobile: (context) => Container(
//         margin: EdgeInsets.all(30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildLogoAndDescription(),
//             SizedBox(height: 40),
//             _buildFooterLinks(false),
//             SizedBox(height: 40),
//             _buildCopyright(),
//           ],
//         ),
//       ),
//       desktop: (context) => Container(
//         margin: EdgeInsets.all(60),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: _buildLogoAndDescription(),
//                 ),
//                 SizedBox(width: 120),
//                 _buildFooterLinks(true),
//               ],
//             ),
//             _buildCopyright(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildLogoAndDescription() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//           child: const Text(
//             "Panto",
//             style: TextStyle(
//                 color: Color(0xFF1E1E1E),
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//         Container(
//           width: 293,
//           padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//           child: const Text(
//             "The advantage of hiring a workspace with us is that gives you comfortable service and all-around facilities",
//             style: TextStyle(
//                 color: Color(0xFF1E1E1E),
//                 fontSize: 15,
//                 fontWeight: FontWeight.normal,
//                 height: 1.5),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCopyright() {
//     return Column(
//       children: [
//         Divider(color: Colors.grey[300]),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Copyright © 2021', style: TextStyle(fontSize: 14)),
//               Row(
//                 children: [
//                   Text('Terms & Conditions', style: TextStyle(fontSize: 14)),
//                   SizedBox(width: 20),
//                   Flexible(child: Text('Privacy Policy', style: TextStyle(fontSize: 14))),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
