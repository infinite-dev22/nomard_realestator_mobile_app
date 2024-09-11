part of 'on_boarding_bloc.dart';

enum OnBoardingStatus {
  initial,
  loading,
  success,
  error,
}

extension OnBoardingStatusX on OnBoardingStatus {
  bool get isInitial => this == OnBoardingStatus.initial;

  bool get isLoading => this == OnBoardingStatus.loading;

  bool get isSuccess => this == OnBoardingStatus.success;

  bool get isError => this == OnBoardingStatus.error;
}

@immutable
class OnBoardingState extends Equatable {
  final OnBoardingStatus status;
  final int index;
  final String? message;

  const OnBoardingState({
    this.status = OnBoardingStatus.initial,
    this.index = 0,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        index,
        message,
      ];

  OnBoardingState copyWith({
    OnBoardingStatus? status,
    int? index,
    String? message,
  }) {
    return OnBoardingState(
      status: status ?? this.status,
      index: index ?? this.index,
      message: message ?? this.message,
    );
  }
}
