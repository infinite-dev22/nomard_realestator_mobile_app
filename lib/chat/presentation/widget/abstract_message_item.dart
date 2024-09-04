import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/chat/presentation/bloc/voice_note/voice_note_bloc.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import '../../data/model/message_model.dart';

class AbstractMessageItem extends StatelessWidget {
  final MessageModel message;

  const AbstractMessageItem(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenWidth = size.width;
    var trackProgress = 0.0;

    return Row(
      mainAxisAlignment: (message.senderId == 1)
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          width: screenWidth * .8,
          // alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (message.senderId == 1)
                ? Theme.of(context).colorScheme.primary
                : secondaryLightest,
            border: Border.all(
              color: (message.senderId == 1)
                  ? Theme.of(context).colorScheme.primary
                  : secondaryLightest,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              (message.type == "text")
                  ? MyText.regular(
                      message.message,
                      color: (message.senderId == 1)
                          ? secondaryLight
                          : secondaryDark,
                    )
                  : Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 20,
                        child: BlocConsumer<VoiceNoteBloc, VoiceNoteState>(
                          listener: (blocContext, state) {
                            // TODO: implement listener
                          },
                          builder: (blocContext, state) {
                            return Slider(
                              value: state.seekValue,
                              overlayColor: WidgetStatePropertyAll(
                                  Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(.3)),
                              onChanged: (value) => blocContext
                                  .read<VoiceNoteBloc>()
                                  .add(SeekEvent(value)),
                              thumbColor: Colors.white,
                              activeColor: Colors.blueAccent,
                            );
                          },
                        ),
                      ),
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyText.caption(
                    message.time,
                    color: (message.senderId == 1) ? secondaryLight : secondary,
                  ),
                  const SizedBox(width: 5),
                  if (message.senderId == 1)
                    (!message.delivered && !message.read)
                        ? const Icon(
                            Icons.done,
                            color: secondary,
                            size: 15,
                            weight: 10,
                          )
                        : (message.delivered && !message.read)
                            ? const Icon(
                                Icons.done_all,
                                color: secondary,
                                size: 15,
                                weight: 10,
                              )
                            : (message.read)
                                ? const Icon(
                                    Icons.done_all,
                                    color: Colors.lightBlue,
                                    size: 15,
                                  )
                                : const SizedBox.shrink(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
