import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';

import '../../bloc/property_card/property_card_bloc.dart';

class PropertyCardImage extends StatelessWidget {
  final PropertyModel propertyModel;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final BoxFit imageFit;
  final Function()? onTap;

  const PropertyCardImage(
    this.propertyModel, {
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
    return BlocConsumer<PropertyCardBloc, PropertyCardState>(
      listener: (blocContext, state) {
        if (state.status.isInitial) {
          blocContext.read<PropertyCardBloc>().add(LikeEvent(propertyModel.isFavorite));
        }
      },
      builder: (blocContext, state) {
        blocContext.read<PropertyCardBloc>().add(LikeEvent(propertyModel.isFavorite));
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
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                    image: AssetImage(propertyModel.images[0]),
                    fit: imageFit,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: SizedBox(
                height: 35,
                width: 35,
                child: IconButton(
                    onPressed: () => blocContext.read<PropertyCardBloc>().add(LikeEvent(!state.like)),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surface.withOpacity(.8),
                      ),
                    ),
                    icon: Icon(
                      (state.like)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: (state.like)
                          ? Colors.red
                          : Theme.of(context).colorScheme.primary,
                      size: 16,
                    )),
              ),
            ),
          ],
        );
      },
    );
  }
}
