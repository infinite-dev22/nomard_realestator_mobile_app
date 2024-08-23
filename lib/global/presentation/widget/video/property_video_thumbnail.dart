import 'package:flutter/material.dart';

class PropertyVideoThumbnail extends StatelessWidget {
  final String file;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final BoxFit imageFit;
  final Function()? onTap;

  const PropertyVideoThumbnail(
    this.file, {
    super.key,
    this.width = 100,
    this.height = 60,
    this.bgColor,
    this.borderWidth = 0,
    this.borderColor,
    this.trBackground = false,
    this.imageFit = BoxFit.cover,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(file),
                fit: imageFit,
              ),
            ),
          ),
        ),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.3),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Theme.of(context).colorScheme.surface.withOpacity(.8),
              ),
            ),
            icon: const Icon(
              Icons.play_arrow_rounded,
              size: 20,
            )),
      ],
    );
  }
}
