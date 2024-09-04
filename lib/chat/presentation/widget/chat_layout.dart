import 'package:flutter/material.dart';
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
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          1,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          3,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
        ChatItemModel(
          "assets/images/house_1.jpg",
          "Micheal Angelo",
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          "1:23",
          0,
        ),
      ],
    );

    var size = MediaQuery.of(context).size;

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: chats.length,
      itemBuilder: (context, index) => ChatItem(chats[index]),
      separatorBuilder: (BuildContext context, int index) =>
      const SizedBox(height: 16),
    );
  }
}
