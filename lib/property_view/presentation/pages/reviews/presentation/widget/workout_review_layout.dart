import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/widget/my_text_area.dart';

import '../../../../../../global/presentation/widget/buttons/my_button.dart';
import '../../../../../../global/presentation/widget/texts/my_text.dart';

class WorkoutReviewLayout extends StatelessWidget {
  const WorkoutReviewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Photo
          MyText.h3("What Do You Think"),
          MyText.regular(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            textAlign: TextAlign.start,
            color: secondary,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar(
                ratingWidget: RatingWidget(
                  full: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: const Icon(
                    Icons.star_half_outlined,
                    color: Colors.amber,
                  ),
                  empty: const Icon(
                    Icons.star,
                    color: secondaryLight,
                  ),
                ),
                initialRating: 2.1,
                onRatingUpdate: (value) {},
              ),
            ],
          ),
          const SizedBox(height: 24),
          const MyTextArea(
            hint: "Write A Review",
          ),
          const SizedBox(height: 24),
          Center(
            child: MyButton(
              text: "Submit",
              width: size.width * .5,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
