import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/chat/data/model/message_model.dart';
import 'package:real_estate_property/chat/presentation/widget/message_item.dart';

import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';

class ChatRoomLayout extends StatelessWidget {
  const ChatRoomLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var messages = List<MessageModel>.of(
      [
        MessageModel(
          1,
          2,
          "Civibus dictas iuvaret nascetur ad laudem neque aliquid inani disputationi tation",
          true,
          true,
          "9:31",
          "text",
        ),
        MessageModel(
          2,
          1,
          "Dolore ea dolore dapibus veri nibh eu ridens nec homero voluptatum fabulas posuere feugait eget ante hac nam ridiculus",
          true,
          true,
          "9:31",
          "text",
        ),
        MessageModel(
          1,
          2,
          "Maximus volumus qualisque sociis ligula sententiae tale expetendis mnesarchum animal periculis",
          true,
          true,
          "9:31",
          "text",
        ),
        MessageModel(
          2,
          1,
          "Sed quaeque montes partiendo intellegebat signiferumque hinc pertinacia eirmod at habeo ante dolores mediocritatem mus",
          true,
          true,
          "9:31",
          "text",
        ),
        MessageModel(
          1,
          2,
          "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
          true,
          true,
          "9:31",
          "audio",
        ),
      ],
    );

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: messages.length,
            itemBuilder: (context, index) => MessageItem(messages[index]),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 16),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .80,
                  child: MyTextField(
                    hint: "Type A Message",
                    prefixIcon: Icon(
                      MingCute.emoji_line,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    suffixIcon: Icon(
                      MingCute.mic_line,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                MyRoundIcon.small(
                  icon: MingCute.send_line,
                  radius: 10,
                  elevated: false,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  iconColor: Colors.white,
                  size: 50,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
