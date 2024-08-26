import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'property_card_event.dart';
part 'property_card_state.dart';

class PropertyCardBloc extends Bloc<PropertyCardEvent, PropertyCardState> {
  PropertyCardBloc() : super(const PropertyCardState()) {
    on<LikeEvent>(_mapLikeState);
  }

  _mapLikeState(LikeEvent event, Emitter<PropertyCardState> emit) async {
    emit(state.copyWith(status: PropertyCardStatus.loading));
    emit(state.copyWith(
        status: PropertyCardStatus.success, like: event.like));
  }
}
