part of 'filter_slider_bloc.dart';

enum FilterChipStatus {
  initial,
  loading,
  success,
  error,
}

extension FilterChipStatusX on FilterChipStatus {
  bool get isInitial => this == FilterChipStatus.initial;

  bool get isLoading => this == FilterChipStatus.loading;

  bool get isSuccess => this == FilterChipStatus.success;

  bool get isError => this == FilterChipStatus.error;
}

@immutable
class FilterChipState extends Equatable {
  final FilterChipStatus status;
  final int index;
  final String? message;

  const FilterChipState({
    this.status = FilterChipStatus.initial,
    this.index = 0,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        index,
        message,
      ];

  FilterChipState copyWith({
    FilterChipStatus? status,
    int? index,
    String? message,
  }) {
    return FilterChipState(
      status: status ?? this.status,
      index: index ?? this.index,
      message: message ?? this.message,
    );
  }
}
