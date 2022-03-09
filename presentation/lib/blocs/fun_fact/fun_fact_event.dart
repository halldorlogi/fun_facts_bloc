part of 'fun_fact_bloc.dart';

@freezed
class FunFactEvent with _$FunFactEvent {
  const factory FunFactEvent.didTapButton() = _DidTapButtonEvent;
}
