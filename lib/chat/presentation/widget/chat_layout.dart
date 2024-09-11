import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/chat/presentation/widget/chat_item.dart';

import '../../../global/data/model/property_model.dart';
import '../../data/model/chat_item_model.dart';

class ChatLayout extends StatelessWidget {
  const ChatLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var chats = List<ChatItemModel>.of(
      [
        ChatItemModel(
          "assets/images/user_0.jpg",
          "Micheal Angelo",
          "Deseruisse maiorum petentium cras ante ludus eirmod mea tellus menandri posuere",
          "1:23 PM",
          1,
        ),
        ChatItemModel(
          "assets/images/user_1.jpg",
          "Morris Lane",
          "Falli neque alterum pellentesque viris consul persius molestie sociis habemus maecenas",
          "11:25 AM",
          3,
        ),
        ChatItemModel(
          "assets/images/user_2.jpg",
          "Luioze Jackas",
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
          "11:23 AM",
          0,
        ),
        ChatItemModel(
          "assets/images/user_3.jpg",
          "Camelo Baranta",
          "Ligula veritus usu vulputate minim class arcu ne fuisset taciti assueverit",
          "10:56 AM",
          0,
        ),
      ],
    );

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: chats.length,
      itemBuilder: (context, index) => ChatItem(chats[index],onTap: () => GoRouter.of(context).pushNamed("chat_room"),),
      separatorBuilder: (BuildContext context, int index) =>
      const SizedBox(height: 16),
    );
  }
}
