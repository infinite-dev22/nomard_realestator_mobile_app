import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/pages/filter/presentation/bloc/filter_chip/filter_chip_bloc.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/carousels/my_carousel.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class ScheduleLayout extends StatelessWidget {
  const ScheduleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _times = List<String>.of(
      [
        "8:00 AM",
        "8:30 AM",
        "9:00 AM",
        "9:30 AM",
        "10:00 AM",
        "10:30 AM",
        "11:00 AM",
        "11:30 AM",
        "12:00 AM",
        "12:30 AM",
        "2:00 AM",
        "2:30 AM",
        "3:00 AM",
        "3:30 AM",
        "4:00 AM",
        "4:30 AM",
        "5:00 AM",
        "5:30 AM",
      ],
    );
    var _scheduleType = List<String>.of(
      [
        "In Person",
        "Virtual",
      ],
    );

    var widgets = <Widget>[
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MyText.h3("Select A Date"),
          ),
        ],
      ),
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FilterChipBloc()),
        ],
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: MyText.h3("Select A Time"),
                ),
              ],
            ),
            SizedBox(
              height: 60,
              child: MyScrollView(
                itemCount: _times.length,
                viewPortFraction: .31,
                itemBuilder: (context, index) =>
                    BlocConsumer<FilterChipBloc, FilterChipState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                      child: FilterChip(
                        label: MyText.regular(
                          _times[index],
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
                ),
              ),
            ),
          ],
        ),
      ),
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FilterChipBloc()),
        ],
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: MyText.h3("Type"),
                ),
              ],
            ),
            SizedBox(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _scheduleType.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 8),
                itemBuilder: (context, index) =>
                    BlocConsumer<FilterChipBloc, FilterChipState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 4, bottom: 4),
                      child: MyButton(
                        onTap: () => context
                            .read<FilterChipBloc>()
                            .add(SelectedEvent(index)),
                        text: _scheduleType[index],
                        outlined: (state.index == index) ? false : true,
                        width: MediaQuery.of(context).size.width * .46,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemCount: widgets.length,
            itemBuilder: (context, index) => widgets[index],
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 16),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: MyButton(
              text: "Make A Schedule",
              onTap: () => GoRouter.of(context).pushNamed("tour"),
            ),
          ),
        ),
      ],
    );
  }
}
