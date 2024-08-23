import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_manager_event.dart';
part 'theme_manager_state.dart';

class ThemeManagerBloc extends Bloc<ThemeManagerEvent, ThemeManagerState> {
  ThemeManagerBloc() : super(const ThemeManagerState()) {
    on<InitialThemeEvent>(_mapInitialThemeEventToState);
    on<SwitchThemeEvent>(_mapSwitchThemeEventToState);
  }

  ThemeMode _themeMode = ThemeMode.system;

  get themeMode => _themeMode;

  _mapSwitchThemeEventToState(
      SwitchThemeEvent event, Emitter<ThemeManagerState> emit) {
    _themeMode = event.isDark ? ThemeMode.dark : ThemeMode.light;
    _saveTheme(event.isDark);
    emit(state.copyWith(isDark: event.isDark));
  }

  _mapInitialThemeEventToState(
      InitialThemeEvent event, Emitter<ThemeManagerState> emit) async {
    final isDark = await loadTheme();
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    emit(state.copyWith(isDark: isDark));
  }

  void _saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', isDark);
  }

  Future<bool> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDark') ?? false;
  }

  @override
  void onEvent(ThemeManagerEvent event) {
    log(event.toString());
    super.onEvent(event);
  }

  @override
  void onTransition(
      Transition<ThemeManagerEvent, ThemeManagerState> transition) {
    log(transition.toString());
    super.onTransition(transition);
  }

  @override
  void onChange(Change<ThemeManagerState> change) {
    log(change.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log(error.toString());
    log(stackTrace.toString());
    super.onError(error, stackTrace);
  }
}
