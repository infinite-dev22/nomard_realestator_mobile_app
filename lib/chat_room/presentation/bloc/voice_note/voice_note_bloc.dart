import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'voice_note_event.dart';
part 'voice_note_state.dart';

class VoiceNoteBloc extends Bloc<VoiceNoteEvent, VoiceNoteState> {
  VoiceNoteBloc() : super(const VoiceNoteState()) {
    on<SeekEvent>(_mapSeekState);
  }

  _mapSeekState(SeekEvent event, Emitter<VoiceNoteState> emit) async {
    emit(state.copyWith(status: VoiceNoteStatus.loading));
    emit(state.copyWith(
        status: VoiceNoteStatus.success, seekValue: event.seekValue));
  }
}
