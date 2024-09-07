import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/pages/filter/presentation/bloc/filter_chip/filter_chip_bloc.dart';
import 'package:real_estate_property/global/presentation/pages/filter/presentation/bloc/filter_slider/filter_slider_bloc.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class FilterLayout extends StatelessWidget {
  const FilterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var propertyTypes = List<String>.of(
      [
        "All",
        "Apartment",
        "Villa",
        "Bungalow",
        "House",
      ],
    );

    var _widgets = <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText.h3("Property Type"),
          const SizedBox(height: 8),
          Wrap(
            children: List<Widget>.generate(propertyTypes.length, (int index) {
              return BlocConsumer<FilterChipBloc, FilterChipState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                    child: FilterChip(
                      label: MyText.regular(
                        propertyTypes[index],
                        color: (state.index == index)
                            ? secondaryLightest
                            : secondaryDark,
                      ),
                      color: (state.index != index)
                          ? const WidgetStatePropertyAll(secondaryLightest)
                          : WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.primary),
                      selectedColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        side: BorderSide(color: secondaryLightest),
                      ),
                      onSelected: (bool value) => context
                          .read<FilterChipBloc>()
                          .add(SelectedEvent(index)),
                    ),
                  );
                },
              );
            }),
          ),
          const SizedBox(height: 16),
          MyText.h3("Leaving Spec"),
          const SizedBox(height: 8),
          //
          const SizedBox(height: 16),
          MyText.h3("Location"),
          const SizedBox(height: 8),
          //
          const SizedBox(height: 16),
          MyText.h3("Price"),
          const SizedBox(height: 8),
          BlocConsumer<FilterSliderBloc, FilterSliderState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return RangeSlider(
                min: 0,
                max: 1000000,
                values: RangeValues(state.startRange, state.endRange),
                onChanged: (RangeValues value) => context
                    .read<FilterSliderBloc>()
                    .add(ChangeRangeEvent(value.start, value.end)),
              );
            },
          ),
          const SizedBox(height: 16),
          MyText.h3("Rating"),
          const SizedBox(height: 8),
          RatingBar(
            itemSize: 40,
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
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => FilterChipBloc()),
              BlocProvider(create: (context) => FilterSliderBloc()),
            ],
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              itemCount: _widgets.length,
              itemBuilder: (context, index) => _widgets[index],
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 16),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: MyButton(
              text: "Apply",
              onTap: () => GoRouter.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }
}
