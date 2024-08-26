import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'help_item_event.dart';
part 'help_item_state.dart';

class HelpItemBloc extends Bloc<HelpItemEvent, HelpItemState> {
  HelpItemBloc() : super(const HelpItemState()) {
    on<ShowContentEvent>(_mapShowContentState);
  }

  _mapShowContentState(ShowContentEvent event, Emitter<HelpItemState> emit) async {
    emit(state.copyWith(status: HelpItemStatus.loading));
    emit(state.copyWith(
        status: HelpItemStatus.success, showContent: event.showContent));
  }

  @override
  void onEvent(HelpItemEvent event) {
    log(event.toString());
    super.onEvent(event);
  }

  @override
  void onTransition(
      Transition<HelpItemEvent, HelpItemState> transition) {
    log(transition.toString());
    super.onTransition(transition);
  }

  @override
  void onChange(Change<HelpItemState> change) {
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
