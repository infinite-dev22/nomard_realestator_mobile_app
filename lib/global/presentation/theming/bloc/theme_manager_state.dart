part of 'theme_manager_bloc.dart';

enum ThemeManagerStatus {
  initial,
  darkening,
  darkened,
}

extension ThemeManagerStatusX on ThemeManagerStatus {
  bool get isInitial => this == ThemeManagerStatus.initial;

  bool get isDark => this == ThemeManagerStatus.darkening;

  bool get isDarkened => this == ThemeManagerStatus.darkened;
}

@immutable
class ThemeManagerState extends Equatable {
  final bool isDark;

  const ThemeManagerState({
    this.isDark = false,
  });

  @override
  List<Object> get props => [isDark];

  ThemeManagerState copyWith({
    required bool isDark,
  }) {
    return ThemeManagerState(
      isDark: isDark,
    );
  }
}
