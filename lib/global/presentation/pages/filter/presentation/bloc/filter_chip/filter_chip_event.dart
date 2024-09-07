part of 'filter_chip_bloc.dart';

sealed class FilterChipEvent extends Equatable {
  const FilterChipEvent();

  @override
  List<Object?> get props => [];
}

class SelectedEvent extends FilterChipEvent {
  final int index;

  const SelectedEvent(this.index);

  @override
  List<Object?> get props => [index];
}
