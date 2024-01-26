part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  const ThemeState({required this.isDarkMode});

  factory ThemeState.initial() {
    return const ThemeState(isDarkMode: false);
  }
  final bool isDarkMode;

  ThemeState copyWith({bool? darkMode}) {
    return ThemeState(isDarkMode: darkMode ?? isDarkMode);
  }

  @override
  String toString() {
    return 'ThemeState{isDarkMode: $isDarkMode}';
  }

  @override
  List<Object> get props => [isDarkMode];
}
