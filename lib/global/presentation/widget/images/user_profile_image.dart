import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String file;
  final double size;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final BoxFit imageFit;
  final Function()? onTap;

  const UserProfileImage(
    this.file, {
    super.key,
    this.size = 50,
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
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage(file),
            fit: imageFit,
          ),
        ),
      ),
    );
  }
}
