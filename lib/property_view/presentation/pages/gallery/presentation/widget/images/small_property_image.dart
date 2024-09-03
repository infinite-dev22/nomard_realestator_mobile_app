import 'package:flutter/material.dart';

class SmallPropertyImage extends StatelessWidget {
  final String file;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final BoxFit imageFit;
  final Function()? onTap;

  const SmallPropertyImage(
      this.file, {
        super.key,
        this.width = 120,
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
    return GestureDetector(
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
    );
  }
}
