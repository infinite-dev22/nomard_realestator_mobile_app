import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/property_view/presentation/pages/gallery/presentation/widget/images/small_property_image.dart';
import 'package:real_estate_property/property_view/presentation/pages/gallery/presentation/widget/video/property_video_thumbnail.dart';

class GalleryLayout extends StatelessWidget {
  const GalleryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _images = [
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
    ];
    var _videos = [
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
    ];

    var gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 80);

    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          // Photo
          Row(
            children: [
              MyText.h3("Photo"),
              const SizedBox(width: 8),
              MyText.caption(
                "(6 Photos)",
                color: secondary,
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: size.height * .25,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: gridDelegate,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return SmallPropertyImage(_images[index]);
              },
            ),
          ),
          // Video
          const SizedBox(height: 24),
          Row(
            children: [
              MyText.h3("Video"),
              const SizedBox(width: 8),
              MyText.caption(
                "(3 Videos)",
                color: secondary,
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: size.height * .25,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: gridDelegate,
              itemCount: _videos.length,
              itemBuilder: (context, index) {
                return PropertyVideoThumbnail(_videos[index]);
              },
            ),
          ),
          // Actions
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MyText.h2(
                    "\$1,220",
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  MyText.regular(
                    "Per Month",
                    color: secondary,
                  ),
                ],
              ),
              MyButton(
                text: "Book Now",
                width: size.width * .5,
                onTap: () => GoRouter.of(context).pushNamed("book"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
