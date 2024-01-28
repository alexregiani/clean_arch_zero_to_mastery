part of 'advice_bloc.dart';

abstract class AdviceState extends Equatable {
  const AdviceState();
}

class AdviceInitial extends AdviceState {
  @override
  List<Object> get props => [];
}

class AdviceLoadedState extends AdviceState {
  const AdviceLoadedState({required this.advice});

  final String advice;
  @override
  List<Object> get props => [advice];
}

class AdviceLoadingState extends AdviceState {
  @override
  List<Object> get props => [];
}

class AdviceErrorState extends AdviceState {
  const AdviceErrorState({required this.error});

  final String error;
  @override
  List<Object> get props => [error];
}
