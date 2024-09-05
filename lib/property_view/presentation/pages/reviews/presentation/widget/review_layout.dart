import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/data/model/review_model.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/bloc/review/review_bloc.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/widget/my_text_area.dart';
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

    return BlocConsumer<ReviewBloc, ReviewState>(
      listener: (blocContext, state) {
        // TODO: implement listener
      },
      builder: (blocContext, state) {
        return IndexedStack(
          index: state.index,
          children: [
            SingleChildScrollView(
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
                    text: "Write A Review",
                    icon: MingCute.pencil_line,
                    onTap: () => blocContext
                        .read<ReviewBloc>()
                        .add(const AddReviewEvent(1)),
                  ),
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
            ),
            SingleChildScrollView(
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
                        itemSize: 30,
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
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
