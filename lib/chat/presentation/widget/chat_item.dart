import 'package:flutter/material.dart';

import '../../../global/presentation/constants/app_colors.dart';
import '../../../global/presentation/widget/images/user_profile_image.dart';
import '../../../global/presentation/widget/texts/my_text.dart';
import '../../data/model/chat_item_model.dart';

class ChatItem extends StatelessWidget {
  final ChatItemModel chatItem;
  final Function()? onTap;

  const ChatItem(
    this.chatItem, {
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            UserProfileImage(chatItem.image),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText.bold(chatItem.name),
                      if (chatItem.messageCount! > 0)
                        Badge(
                          label: MyText.caption(
                            chatItem.messageCount.toString(),
                            color: Colors.white,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth - 160,
                        child: MyText.caption(
                          chatItem.messagePreview,
                          color: secondary,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      MyText.caption(
                        chatItem.time,
                        color: secondary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
