import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'property_view_event.dart';
part 'property_view_state.dart';

class PropertyImageViewBloc extends Bloc<PropertyImageViewEvent, PropertyImageViewState> {
  PropertyImageViewBloc() : super(const PropertyImageViewState()) {
    on<LikeEvent>(_mapLikeState);
  }

  _mapLikeState(LikeEvent event, Emitter<PropertyImageViewState> emit) async {
    emit(state.copyWith(status: PropertyImageViewStatus.loading));
    emit(state.copyWith(
        status: PropertyImageViewStatus.success, like: event.like));
  }
}
