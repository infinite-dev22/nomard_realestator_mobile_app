part of 'review_bloc.dart';

sealed class ReviewEvent extends Equatable {
  const ReviewEvent();

  @override
  List<Object?> get props => [];
}

class AddReviewEvent extends ReviewEvent {
  final int index;

  const AddReviewEvent(this.index);

  @override
  List<Object?> get props => [index];
}
