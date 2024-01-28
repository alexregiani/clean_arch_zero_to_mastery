part of 'advice_bloc.dart';

abstract class AdviceEvent extends Equatable {
  const AdviceEvent();
}

class AdviceRequestedEvent extends AdviceEvent {
  @override
  List<Object> get props => [];
}
