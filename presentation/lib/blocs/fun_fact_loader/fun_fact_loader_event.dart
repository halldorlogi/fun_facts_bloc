part of 'fun_fact_loader_bloc.dart';

@freezed
class FunFactLoaderEvent with _$FunFactLoaderEvent, LoaderEvent {
  const factory FunFactLoaderEvent.init() = _InitFunFact;
  const factory FunFactLoaderEvent.getFunFact() = _GetFunFactEvent;
}