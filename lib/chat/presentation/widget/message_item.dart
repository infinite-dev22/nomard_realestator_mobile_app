import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/chat/presentation/bloc/voice_note/voice_note_bloc.dart';
import 'package:real_estate_property/chat/presentation/widget/abstract_message_item.dart';

import '../../data/model/message_model.dart';

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
