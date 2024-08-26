part of 'help_item_bloc.dart';

enum HelpItemStatus {
  initial,
  loading,
  success,
  error,
}

extension HelpItemStatusX on HelpItemStatus {
  bool get isInitial => this == HelpItemStatus.initial;

  bool get isLoading => this == HelpItemStatus.loading;

  bool get isSuccess => this == HelpItemStatus.success;

  bool get isError => this == HelpItemStatus.error;
}

@immutable
class HelpItemState extends Equatable {
  final HelpItemStatus status;
  final bool showContent;
  final String? message;

  const HelpItemState({
    this.status = HelpItemStatus.initial,
    this.showContent = false,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        showContent,
        message,
      ];

  HelpItemState copyWith({
    HelpItemStatus? status,
    bool? showContent,
    String? message,
  }) {
    return HelpItemState(
      status: status ?? this.status,
      showContent: showContent ?? this.showContent,
      message: message ?? this.message,
    );
  }
}
