part of 'voice_note_bloc.dart';

enum VoiceNoteStatus {
  initial,
  loading,
  success,
  error,
}

extension VoiceNoteStatusX on VoiceNoteStatus {
  bool get isInitial => this == VoiceNoteStatus.initial;

  bool get isLoading => this == VoiceNoteStatus.loading;

  bool get isSuccess => this == VoiceNoteStatus.success;

  bool get isError => this == VoiceNoteStatus.error;
}

@immutable
class VoiceNoteState extends Equatable {
  final VoiceNoteStatus status;
  final double seekValue;
  final String? message;

  const VoiceNoteState({
    this.status = VoiceNoteStatus.initial,
    this.seekValue = 0.0,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        seekValue,
        message,
      ];

  VoiceNoteState copyWith({
    VoiceNoteStatus? status,
    double? seekValue,
    String? message,
  }) {
    return VoiceNoteState(
      status: status ?? this.status,
      seekValue: seekValue ?? this.seekValue,
      message: message ?? this.message,
    );
  }
}
