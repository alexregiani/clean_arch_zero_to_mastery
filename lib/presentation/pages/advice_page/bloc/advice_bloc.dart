import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(AdviceInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdviceLoadingState());
      debugPrint('Advice Triggered');
      await Future<void>.delayed(
        const Duration(seconds: 3),
      );
      emit(const AdviceLoadedState(advice: 'advice hard coded'));
    });
  }
}
