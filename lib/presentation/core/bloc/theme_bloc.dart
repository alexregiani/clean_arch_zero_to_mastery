import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeChangeState> {
  ThemeBloc() : super(ThemeChangeState.initial()) {
    on<ThemeEvent>((event, emit) {
      final isDarkMode = event.isDarkMode;
      emit(state.copyWith(darkMode: isDarkMode));
    });
  }
}
