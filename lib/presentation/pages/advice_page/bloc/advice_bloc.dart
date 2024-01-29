import 'package:bloc/bloc.dart';
import 'package:clean_arch_zero_to_mastery/domain/entities/advice_entity.dart';
import 'package:clean_arch_zero_to_mastery/domain/use_cases/advice_use_cases.dart';
import 'package:equatable/equatable.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc({required this.adviceUseCases}) : super(AdviceInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdviceLoadingState());
      final advice = await adviceUseCases.adviceRequest();
      emit(AdviceLoadedState(advice: advice));
    });
  }
  final AdviceUseCases adviceUseCases;
}
