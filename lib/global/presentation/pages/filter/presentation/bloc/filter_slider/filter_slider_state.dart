part of 'filter_slider_bloc.dart';

enum FilterSliderStatus {
  initial,
  loading,
  success,
  error,
}

extension FilterSliderStatusX on FilterSliderStatus {
  bool get isInitial => this == FilterSliderStatus.initial;

  bool get isLoading => this == FilterSliderStatus.loading;

  bool get isSuccess => this == FilterSliderStatus.success;

  bool get isError => this == FilterSliderStatus.error;
}

@immutable
class FilterSliderState extends Equatable {
  final FilterSliderStatus status;
  final double startRange;
  final double endRange;
  final String? message;

  const FilterSliderState({
    this.status = FilterSliderStatus.initial,
    this.startRange = 0,
    this.endRange = 0,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        startRange,
    endRange,
        message,
      ];

  FilterSliderState copyWith({
    FilterSliderStatus? status,
    double? startRange,
    double? endRange,
    String? message,
  }) {
    return FilterSliderState(
      status: status ?? this.status,
      startRange: startRange ?? this.startRange,
      endRange: endRange ?? this.endRange,
      message: message ?? this.message,
    );
  }
}
