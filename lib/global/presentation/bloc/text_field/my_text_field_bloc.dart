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
}
