part of 'help_item_bloc.dart';

sealed class HelpItemEvent extends Equatable {
  const HelpItemEvent();

  @override
  List<Object?> get props => [];
}

class ShowContentEvent extends HelpItemEvent {
  final bool showContent;

  const ShowContentEvent(this.showContent);

  @override
  List<Object?> get props => [showContent];
}
