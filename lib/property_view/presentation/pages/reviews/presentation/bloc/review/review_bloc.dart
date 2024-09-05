import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'review_event.dart';
part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc() : super(const ReviewState()) {
    on<AddReviewEvent>(_mapAddReviewState);
  }

  _mapAddReviewState(AddReviewEvent event, Emitter<ReviewState> emit) async {
    emit(state.copyWith(status: ReviewStatus.loading));
    emit(state.copyWith(status: ReviewStatus.success, index: event.index));
  }
}
