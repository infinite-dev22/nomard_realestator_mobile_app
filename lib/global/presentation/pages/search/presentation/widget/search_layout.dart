import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_titled_text.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_widget_text.dart';

import '../../../../../../global/presentation/widget/icon_holders/my_round_icon.dart';
import '../../../../../../global/presentation/widget/property_card/my_property_card.dart';
import '../../../../../../global/presentation/widget/text_fields/my_text_field.dart';
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

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          pinned: true,
          forceElevated: true,
          leading: const MyRoundIcon.small(
            icon: Icons.arrow_back,
            elevated: true,
          ),
          title: MyText.h2("Search"),
          bottom: PreferredSize(
            preferredSize: Size(70, 70),
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 10,
                left: 16,
                right: 16,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * .88,
                      child: const MyTextField(
                        hint: "Search",
                        prefixIcon: Icon(MingCute.search_2_fill),
                      ),
                    ),
                    MyRoundIcon.small(
                      icon: MingCute.settings_6_line,
                      radius: 10,
                      elevated: false,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText.h3("Suggestions"),
                    const SizedBox(height: 8),
                    Column(
                      children: List<Widget>.generate(suggestions.length,
                          (int index) {
                        return MyWidgetText(
                            suggestions[index],
                            Icon(
                              Icons.arrow_outward_rounded,
                              size: 18,
                            ));
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
                      children: List<Widget>.generate(recentSearches.length,
                          (int index) {
                        return MyWidgetText(
                            recentSearches[index],
                            Icon(
                              MingCute.close_line,
                              size: 18,
                            ));
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
