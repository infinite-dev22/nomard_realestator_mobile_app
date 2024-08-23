import 'package:flutter/material.dart';

class PropertyCardImage extends StatelessWidget {
  final String file;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final BoxFit imageFit;
  final Function()? onTap;

  const PropertyCardImage(
    this.file, {
    super.key,
    this.width = 100,
    this.height = 100,
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
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(file),
                fit: imageFit,
              ),
            ),
          ),
        ),
        Positioned(
          top: 1,
          right: 1,
          child: IconButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.surface.withOpacity(.8),
                ),
              ),
              icon: Icon(
                Icons.favorite ?? Icons.favorite_border_outlined,
                color: Colors.red ?? Theme.of(context).colorScheme.primary,
                size: 24,
              )),
        ),
      ],
    );
  }
}
