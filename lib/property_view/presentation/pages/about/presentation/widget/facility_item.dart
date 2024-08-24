import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/property_view/presentation/pages/about/data/model/facility_model.dart';

class FacilityItem extends StatelessWidget {
  final bool inline;
  final FacilityModel facility;

  const FacilityItem.nonInline(this.facility, {super.key}) : inline = false;

  const FacilityItem.inline(this.facility, {super.key}) : inline = true;

  @override
  Widget build(BuildContext context) {
    return (inline)
        ? Row(
            children: [
              MyRoundIcon.small(
                icon: facility.icon,
                backgroundColor: secondaryLight,
                iconColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 5),
              MyText.bold(facility.text),
            ],
          )
        : Column(
            children: [
              MyRoundIcon.small(
                icon: facility.icon,
                backgroundColor: secondaryLight,
                iconColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 5),
              MyText.bold(facility.text),
            ],
          );
  }
}
