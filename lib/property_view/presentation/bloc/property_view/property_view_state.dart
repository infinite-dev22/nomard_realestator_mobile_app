part of 'property_view_bloc.dart';

enum PropertyImageViewStatus {
  initial,
  loading,
  success,
  error,
}

extension PropertyImageViewStatusX on PropertyImageViewStatus {
  bool get isInitial => this == PropertyImageViewStatus.initial;

  bool get isLoading => this == PropertyImageViewStatus.loading;

  bool get isSuccess => this == PropertyImageViewStatus.success;

  bool get isError => this == PropertyImageViewStatus.error;
}

@immutable
class PropertyImageViewState extends Equatable {
  final PropertyImageViewStatus status;
  final bool like;
  final String? message;

  const PropertyImageViewState({
    this.status = PropertyImageViewStatus.initial,
    this.like = false,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        like,
        message,
      ];

  PropertyImageViewState copyWith({
    PropertyImageViewStatus? status,
    bool? like,
    String? message,
  }) {
    return PropertyImageViewState(
      status: status ?? this.status,
      like: like ?? this.like,
      message: message ?? this.message,
    );
  }
}
