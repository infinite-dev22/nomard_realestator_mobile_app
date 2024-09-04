import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/profile/presentation/pages/help_center/data/model/help_model.dart';

import '../bloc/help_item_bloc.dart';

class HelpAbstractItem extends StatelessWidget {
  final HelpModel help;

  const HelpAbstractItem(this.help, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HelpItemBloc, HelpItemState>(
      listener: (blocContext, state) {
        // TODO: implement listener
      },
      builder: (blocContext, state) {
        return GestureDetector(
          onTap: () => blocContext
              .read<HelpItemBloc>()
              .add(ShowContentEvent(!state.showContent)),
          child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            duration: const Duration(milliseconds: 350),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
                  spreadRadius: 1,
                  blurRadius: .1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText.bold(
                      help.title,
                      color: secondaryDark,
                    ),
                    (state.showContent == true)
                        ? const Icon(FontAwesome.chevron_up_solid, size: 16,)
                        : const Icon(FontAwesome.chevron_down_solid, size: 16,),
                  ],
                ),
                if ((state.showContent == true))
                  Column(
                    children: [
                      const SizedBox(height: 16),
                      MyText.regular(
                        help.body,
                        color: secondary,textAlign: TextAlign.left,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
