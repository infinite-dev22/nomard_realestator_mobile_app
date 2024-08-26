part of 'property_card_bloc.dart';

sealed class PropertyCardEvent extends Equatable {
  const PropertyCardEvent();

  @override
  List<Object?> get props => [];
}

class LikeEvent extends PropertyCardEvent {
  final bool like;

  const LikeEvent(this.like);

  @override
  List<Object?> get props => [like];
}
