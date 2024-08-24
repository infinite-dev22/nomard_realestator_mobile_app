import 'package:flutter/material.dart';

import '../../../global/presentation/constants/app_colors.dart';
import '../../../global/presentation/widget/images/user_profile_image.dart';
import '../../../global/presentation/widget/texts/my_text.dart';
import '../../data/model/chat_item_model.dart';

class ChatItem extends StatelessWidget {
  final ChatItemModel chatItem;

  const ChatItem(this.chatItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserProfileImage(chatItem.image),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyText.bold(chatItem.name),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: constraints.maxWidth - 170,
                    child: MyText.caption(
                      chatItem.messagePreview,
                      color: secondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Badge(
                label: MyText.regular(
                  chatItem.messageCount.toString(),
                  color: Colors.white,
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 10),
              MyText.caption(chatItem.time, color: secondary,),
            ],
          ),
        ],
      );
    });
  }
}
