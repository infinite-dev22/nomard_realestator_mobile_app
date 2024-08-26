part of 'my_text_field_bloc.dart';

sealed class MyTextFieldEvent extends Equatable {
  const MyTextFieldEvent();

  @override
  List<Object?> get props => [];
}

class ObsecureEvent extends MyTextFieldEvent {
  final bool obsecure;

  const ObsecureEvent(this.obsecure);

  @override
  List<Object?> get props => [obsecure];
}
