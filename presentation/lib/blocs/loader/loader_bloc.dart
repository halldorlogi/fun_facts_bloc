import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_state.dart';
part 'loader_event.dart';
part 'loader_bloc.freezed.dart';

abstract class LoaderBloc<T, E extends LoaderEvent> extends Bloc<LoaderEvent, LoaderState> {
  LoaderBloc() : super(const _Initial()) {
    on<E>(loadToState);
  }

  FutureOr<void> loadToState(E event, Emitter<LoaderState> emit) async {
    emit(const LoaderState.loadInProgress());
    try {
      final T result = await load(event);
      emit(LoaderState.loadSuccess(result));
    } on Exception catch (error) {
      emit(LoaderState.loadFailure(error));
    }
  }

  FutureOr<T> load(E event);
}
