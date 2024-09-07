part of 'filter_slider_bloc.dart';

sealed class FilterSliderEvent extends Equatable {
  const FilterSliderEvent();

  @override
  List<Object?> get props => [];
}

class ChangeRangeEvent extends FilterSliderEvent {
  final double startRange;
  final double endRange;

  const ChangeRangeEvent(this.startRange, this.endRange);

  @override
  List<Object?> get props => [startRange, endRange];
}
