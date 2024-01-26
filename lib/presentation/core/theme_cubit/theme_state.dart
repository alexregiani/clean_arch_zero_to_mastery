part of 'theme_cubit.dart';

class ThemeCubitState extends Equatable {
  const ThemeCubitState({required this.isDarkTheme});

  factory ThemeCubitState.initial() {
    return const ThemeCubitState(isDarkTheme: false);
  }

  final bool isDarkTheme;

  ThemeCubitState copyWith({bool? darkTheme}) {
    return ThemeCubitState(isDarkTheme: darkTheme ?? isDarkTheme);
  }

  @override
  List<Object> get props => [isDarkTheme];
}
