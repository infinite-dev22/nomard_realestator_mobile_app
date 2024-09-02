import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/data/model/review_model.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/widget/review_card.dart';

class ReviewLayout extends StatelessWidget {
  const ReviewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var review1 = ReviewModel(
        "assets/images/house_1.jpg",
        "David Martin",
        "1 hour",
        4.7,
        "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
        true);
    var review2 = ReviewModel(
        "assets/images/house_1.jpg",
        "David Martin",
        "1 hour",
        4.7,
        "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
        true);
    var review3 = ReviewModel(
        "assets/images/house_1.jpg",
        "David Martin",
        "1 hour",
        4.7,
        "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
        true);
    var review4 = ReviewModel(
        "assets/images/house_1.jpg",
        "David Martin",
        "1 hour",
        4.7,
        "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
        true);

    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          // Photo
          Row(
            children: [
              MyText.h3("Reviews"),
              const SizedBox(width: 8),
              MyText.caption(
                "(500 Reviews)",
                color: secondary,
              ),
            ],
          ),
          const SizedBox(height: 16),
          MyTile.flat(
              text: "Write A Review", icon: MingCute.pencil_line, onTap: () {}),
          const SizedBox(height: 24),
          ReviewCard(review1),
          const SizedBox(height: 16),
          ReviewCard(review2),
          const SizedBox(height: 16),
          ReviewCard(review3),
          const SizedBox(height: 16),
          ReviewCard(review4),
        ],
      ),
    );
  }
}
