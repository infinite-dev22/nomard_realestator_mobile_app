part of 'review_bloc.dart';

enum ReviewStatus {
  initial,
  loading,
  success,
  error,
}

extension ReviewStatusX on ReviewStatus {
  bool get isInitial => this == ReviewStatus.initial;

  bool get isLoading => this == ReviewStatus.loading;

  bool get isSuccess => this == ReviewStatus.success;

  bool get isError => this == ReviewStatus.error;
}

@immutable
class ReviewState extends Equatable {
  final ReviewStatus status;
  final int index;
  final String? message;

  const ReviewState({
    this.status = ReviewStatus.initial,
    this.index = 0,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        index,
        message,
      ];

  ReviewState copyWith({
    ReviewStatus? status,
    int? index,
    String? message,
  }) {
    return ReviewState(
      status: status ?? this.status,
      index: index ?? this.index,
      message: message ?? this.message,
    );
  }
}
