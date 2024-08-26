import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/chat/data/model/message_model.dart';
import 'package:real_estate_property/chat/presentation/widget/abstract_message_item.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import '../../../global/presentation/constants/app_colors.dart';
import '../bloc/voice_note/voice_note_bloc.dart';

class MessageItem extends StatelessWidget {
  final MessageModel message;

  const MessageItem(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VoiceNoteBloc(),
      child: AbstractMessageItem(message),
    );
  }
}
