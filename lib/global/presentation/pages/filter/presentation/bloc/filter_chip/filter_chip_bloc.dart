import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'filter_chip_event.dart';
part 'filter_chip_state.dart';

class FilterChipBloc extends Bloc<FilterChipEvent, FilterChipState> {
  FilterChipBloc() : super(const FilterChipState()) {
    on<SelectedEvent>(_mapSelectedState);
  }

  _mapSelectedState(SelectedEvent event, Emitter<FilterChipState> emit) async {
    emit(state.copyWith(status: FilterChipStatus.loading));
    emit(state.copyWith(status: FilterChipStatus.success, index: event.index));
  }
}
