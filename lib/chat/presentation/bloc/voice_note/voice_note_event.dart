part of 'voice_note_bloc.dart';

sealed class VoiceNoteEvent extends Equatable {
  const VoiceNoteEvent();

  @override
  List<Object?> get props => [];
}

class SeekEvent extends VoiceNoteEvent {
  final double seekValue;

  const SeekEvent(this.seekValue);

  @override
  List<Object?> get props => [seekValue];
}
