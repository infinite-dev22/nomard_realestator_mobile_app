part of 'theme_manager_bloc.dart';

sealed class ThemeManagerEvent extends Equatable {
  @override
  List<Object?> get props => [];

  const ThemeManagerEvent();
}

class SwitchThemeEvent extends ThemeManagerEvent {
  final bool isDark;

  @override
  List<Object?> get props => [isDark];

  const SwitchThemeEvent(this.isDark);
}

class InitialThemeEvent extends ThemeManagerEvent {}
