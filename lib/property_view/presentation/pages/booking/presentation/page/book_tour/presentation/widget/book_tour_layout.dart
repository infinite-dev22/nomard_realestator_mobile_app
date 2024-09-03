import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

import '../../../../../../../../../global/presentation/widget/buttons/my_button.dart';

class BookTourLayout extends StatelessWidget {
  const BookTourLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      const MyTextField(
        hint: "Full Name",
        prefixIcon: Icon(MingCute.user_2_line),
      ),
      const MyTextField(
        hint: "Email",
        prefixIcon: Icon(MingCute.mail_line),
      ),
      const MyTextField(
        hint: "Location",
        prefixIcon: Icon(MingCute.earth_2_line),
      ),
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
              text: "Continue",
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
