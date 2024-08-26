import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/profile/presentation/pages/help_center/presentation/widget/help_abstract_item.dart';

import '../../data/model/help_model.dart';
import '../bloc/help_item_bloc.dart';

class HelpItem extends StatelessWidget {
  final HelpModel help;

  const HelpItem(this.help, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HelpItemBloc(),
      child: HelpAbstractItem(help),
    );
  }
}
