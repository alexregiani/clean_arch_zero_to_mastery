import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.initial());

  void toggleTheme({required bool switchValue}) {
    emit(state.copyWith(darkTheme: switchValue));
  }
}
