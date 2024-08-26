import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'my_text_field_event.dart';
part 'my_text_field_state.dart';

class MyTextFieldBloc extends Bloc<MyTextFieldEvent, MyTextFieldState> {
  MyTextFieldBloc() : super(const MyTextFieldState()) {
    on<ObsecureEvent>(_mapObsecureState);
  }

  _mapObsecureState(ObsecureEvent event, Emitter<MyTextFieldState> emit) async {
    emit(state.copyWith(status: MyTextFieldStatus.loading));
    emit(state.copyWith(
        status: MyTextFieldStatus.success, obsecure: event.obsecure));
  }

  @override
  void onEvent(MyTextFieldEvent event) {
    log(event.toString());
    super.onEvent(event);
  }

  @override
  void onTransition(
      Transition<MyTextFieldEvent, MyTextFieldState> transition) {
    log(transition.toString());
    super.onTransition(transition);
  }

  @override
  void onChange(Change<MyTextFieldState> change) {
    log(change.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log(error.toString());
    log(stackTrace.toString());
    super.onError(error, stackTrace);
  }
}
