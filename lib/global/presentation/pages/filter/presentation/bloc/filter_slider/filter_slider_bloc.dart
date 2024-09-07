import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'filter_slider_event.dart';
part 'filter_slider_state.dart';

class FilterSliderBloc extends Bloc<FilterSliderEvent, FilterSliderState> {
  FilterSliderBloc() : super(const FilterSliderState()) {
    on<ChangeRangeEvent>(_mapChangeRangeState);
  }

  _mapChangeRangeState(
      ChangeRangeEvent event, Emitter<FilterSliderState> emit) async {
    emit(state.copyWith(status: FilterSliderStatus.loading));
    emit(state.copyWith(
        status: FilterSliderStatus.success,
        startRange: event.startRange,
        endRange: event.endRange));
  }
}
