part of 'property_view_bloc.dart';

sealed class PropertyImageViewEvent extends Equatable {
  const PropertyImageViewEvent();

  @override
  List<Object?> get props => [];
}

class LikeEvent extends PropertyImageViewEvent {
  final bool like;

  const LikeEvent(this.like);

  @override
  List<Object?> get props => [like];
}
