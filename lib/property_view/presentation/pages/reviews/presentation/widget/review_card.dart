import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/images/user_profile_image.dart';
import 'package:real_estate_property/global/presentation/widget/pills/icon_text_pill.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/data/model/review_model.dart';

import '../../../../../../global/presentation/constants/app_colors.dart';
import '../../../../../../global/presentation/widget/texts/my_text.dart';

class ReviewCard extends StatelessWidget {
  final ReviewModel review;

  const ReviewCard(this.review, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
            spreadRadius: 1,
            blurRadius: .1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  UserProfileImage(review.image),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyText.bold(review.name),
                      const SizedBox(width: 10),
                      MyText.caption(
                        "${review.time} Ago",
                        color: secondary,
                      ),
                    ],
                  ),
                ],
              ),
              IconTextPill(
                review.rating.toString(),
              )
            ],
          ),
          const SizedBox(height: 10),
          MyText.regular(
            review.message,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                onPressed: () => (review.like == false)
                    ? review.like = true
                    : review.like = true,
                icon: Icon(
                  (review.like)
                      ? FontAwesome.thumbs_up_solid
                      : FontAwesome.thumbs_up,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () => (review.like == true)
                    ? review.like = false
                    : review.like = false,
                icon: Icon(
                  (review.like)
                      ? FontAwesome.thumbs_down
                      : FontAwesome.thumbs_down_solid,
                  size: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
