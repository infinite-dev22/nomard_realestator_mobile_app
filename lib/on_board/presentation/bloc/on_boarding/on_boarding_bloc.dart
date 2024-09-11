import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState()) {
    on<NextEvent>(_mapNextState);
  }

  _mapNextState(NextEvent event, Emitter<OnBoardingState> emit) async {
    emit(state.copyWith(status: OnBoardingStatus.loading));
    var index = state.index + 1;
    emit(state.copyWith(status: OnBoardingStatus.success, index: index));
  }
}
