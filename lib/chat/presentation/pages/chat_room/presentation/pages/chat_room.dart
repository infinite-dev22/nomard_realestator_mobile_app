import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/chat/presentation/pages/chat_room/presentation/widget/chat_room_layout.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_appbar_actions_button.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: (context) => MyBackButton(
            onTap: () {},
          ),
        ),
        title: MyText.h2("Chat Room Name"),
        actions: [
          MyAppbarActionsButton(
            icon: MingCute.more_1_line,
            onTap: () {},
          ),
        ],
      ),
      body: const ChatRoomLayout(),
    );
  }
}