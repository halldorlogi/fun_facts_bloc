import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/model/fun_fact.dart';
import 'package:domain/repository/fun_fact_repository.dart';

import 'package:presentation/blocs/loader/loader_bloc.dart';

part 'fun_fact_loader_event.dart';
part 'fun_fact_loader_bloc.freezed.dart';

@injectable
class FunFactLoaderBloc extends LoaderBloc<FunFact?, _InitFunFact> {
  FunFactLoaderBloc(this._factRepository) {
    on<_GetFunFactEvent>(_getFunFactEventToState);
  }

  final FunFactRepository _factRepository;

  @override
  FutureOr<FunFact?> load(event) {
    // return _funFact;
    return FunFact(text: 'Tap the button to get a random fact from the Fun Fact Loader bloc!');
  }

  FutureOr<void> _getFunFactEventToState(_GetFunFactEvent factEvent, Emitter<LoaderState> emit) async {
    emit(const LoaderState.loadInProgress());
    try {
      await _factRepository.getFunFact();
      emit(LoaderState.loadSuccess(_funFact));
    } catch (e) {
      emit(LoaderState.loadFailure(Exception(e)));
    }
  }

  FunFact? get _funFact => _factRepository.funFact;
}

