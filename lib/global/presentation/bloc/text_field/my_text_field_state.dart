part of 'my_text_field_bloc.dart';

enum MyTextFieldStatus {
  initial,
  loading,
  success,
  error,
}

extension MyTextFieldStatusX on MyTextFieldStatus {
  bool get isInitial => this == MyTextFieldStatus.initial;

  bool get isLoading => this == MyTextFieldStatus.loading;

  bool get isSuccess => this == MyTextFieldStatus.success;

  bool get isError => this == MyTextFieldStatus.error;
}

@immutable
class MyTextFieldState extends Equatable {
  final MyTextFieldStatus status;
  final bool obsecure;
  final String? message;

  const MyTextFieldState({
    this.status = MyTextFieldStatus.initial,
    this.obsecure = false,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        obsecure,
        message,
      ];

  MyTextFieldState copyWith({
    MyTextFieldStatus? status,
    bool? obsecure,
    String? message,
  }) {
    return MyTextFieldState(
      status: status ?? this.status,
      obsecure: obsecure ?? this.obsecure,
      message: message ?? this.message,
    );
  }
}
