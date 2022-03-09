part of 'fun_fact_bloc.dart';

@freezed
class FunFactState with _$FunFactState {

  const factory FunFactState({
    required FunFact? fact
  }) = _FunFactState;

  factory FunFactState.initial() => FunFactState(
    fact: FunFact(text: 'Tap the button to get a random fact from the Fun Fact Bloc!')
  );
}