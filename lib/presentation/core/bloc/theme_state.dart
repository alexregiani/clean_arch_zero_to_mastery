part of 'theme_bloc.dart';

class ThemeChangeState extends Equatable {
  const ThemeChangeState({required this.isDarkMode});

  factory ThemeChangeState.initial() {
    return const ThemeChangeState(isDarkMode: false);
  }
  final bool isDarkMode;

  ThemeChangeState copyWith({bool? darkMode}) {
    return ThemeChangeState(isDarkMode: darkMode ?? isDarkMode);
  }

  @override
  String toString() {
    return 'ThemeChangeState{isDarkMode: $isDarkMode}';
  }

  @override
  List<Object> get props => [isDarkMode];
}
