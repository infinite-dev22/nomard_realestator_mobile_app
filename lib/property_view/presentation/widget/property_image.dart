import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';

import '../bloc/property_view/property_view_bloc.dart';

class PropertyViewImage extends StatelessWidget {
  final String file;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final BoxFit imageFit;
  final Function()? onTap;

  const PropertyViewImage(
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
    return BlocConsumer<PropertyImageViewBloc, PropertyImageViewState>(
      listener: (blocContext, state) {
        // TODO: implement listener
      },
      builder: (blocContext, state) {
        return Stack(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: bgColor,
                  image: DecorationImage(
                    image: AssetImage(file),
                    fit: imageFit,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                onPressed: () => blocContext
                    .read<PropertyImageViewBloc>()
                    .add(LikeEvent(!state.like)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.surface.withOpacity(.8),
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_back,
                  size: 16,
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => blocContext
                        .read<PropertyImageViewBloc>()
                        .add(LikeEvent(!state.like)),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surface.withOpacity(.8),
                      ),
                    ),
                    icon: const Icon(
                      MingCute.upload_2_line,
                      color: secondaryDark,
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () => blocContext
                        .read<PropertyImageViewBloc>()
                        .add(LikeEvent(!state.like)),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surface.withOpacity(.8),
                      ),
                    ),
                    icon: Icon(
                      (state.like == false)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: (state.like == false)
                          ? Colors.red
                          : Theme.of(context).colorScheme.primary,
                      size: 16,
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
