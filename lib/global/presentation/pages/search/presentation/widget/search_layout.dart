import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_widget_text.dart';

import '../../../../../../global/presentation/widget/texts/my_text.dart';

class SearchLayout extends StatelessWidget {
  const SearchLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var suggestions = List<String>.of(
      [
        "New apartment",
        "New apartment with garden",
        "New apartment with kitchen",
      ],
    );
    var recentSearches = List<String>.of(
      [
        "New apartment",
        "New apartment in London",
        "New apartment with 3 beds",
      ],
    );

    var _widgets = <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText.h3("Suggestions"),
          const SizedBox(height: 8),
          Column(
            children: List<Widget>.generate(suggestions.length, (int index) {
              return Column(
                children: [
                  MyWidgetText(
                    suggestions[index],
                    const Icon(
                      Icons.arrow_outward_rounded,
                      size: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              );
            }),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText.h3("Recent Searches"),
          const SizedBox(height: 8),
          Column(
            children: List<Widget>.generate(recentSearches.length, (int index) {
              return Column(
                children: [
                  MyWidgetText(
                    recentSearches[index],
                    const Icon(
                      MingCute.close_line,
                      size: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              );
            }),
          ),
        ],
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      itemCount: _widgets.length,
      itemBuilder: (context, index) => _widgets[index],
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
    );
  }
}
