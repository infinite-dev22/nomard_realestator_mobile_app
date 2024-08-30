import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/property_view/presentation/pages/about/data/model/agent_model.dart';

import '../../../../../../global/presentation/constants/app_colors.dart';
import '../../../../../../global/presentation/widget/images/user_profile_image.dart';
import '../../../../../../global/presentation/widget/texts/my_text.dart';

class AgentItem extends StatelessWidget {
  final AgentModel agent;

  const AgentItem(this.agent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            UserProfileImage(agent.image),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText.bold(agent.name),
                const SizedBox(width: 5),
                MyText.caption(
                  agent.type,
                  color: secondary,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_outlined),
              color: secondaryDark,
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  secondaryLight,
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone_outlined),
              color: secondaryDark,
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  secondaryLight,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
