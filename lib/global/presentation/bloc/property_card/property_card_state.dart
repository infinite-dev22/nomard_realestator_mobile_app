part of 'property_card_bloc.dart';

enum PropertyCardStatus {
  initial,
  loading,
  success,
  error,
}

extension PropertyCardStatusX on PropertyCardStatus {
  bool get isInitial => this == PropertyCardStatus.initial;

  bool get isLoading => this == PropertyCardStatus.loading;

  bool get isSuccess => this == PropertyCardStatus.success;

  bool get isError => this == PropertyCardStatus.error;
}

@immutable
class PropertyCardState extends Equatable {
  final PropertyCardStatus status;
  final bool like;
  final String? message;

  const PropertyCardState({
    this.status = PropertyCardStatus.initial,
    this.like = false,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        like,
        message,
      ];

  PropertyCardState copyWith({
    PropertyCardStatus? status,
    bool? like,
    String? message,
  }) {
    return PropertyCardState(
      status: status ?? this.status,
      like: like ?? this.like,
      message: message ?? this.message,
    );
  }
}
