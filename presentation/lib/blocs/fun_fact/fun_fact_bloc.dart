import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/model/fun_fact.dart';
import 'package:domain/repository/fun_fact_repository.dart';

part 'fun_fact_event.dart';
part 'fun_fact_state.dart';
part 'fun_fact_bloc.freezed.dart';

@injectable
class FunFactBloc extends Bloc<FunFactEvent, FunFactState> {

  final FunFactRepository _factRepository;

  FunFactBloc(this._factRepository) : super(FunFactState.initial()) {
    on<_DidTapButtonEvent>(_mapDidTapButtonEventToState);
  }

  void _mapDidTapButtonEventToState(_DidTapButtonEvent event, Emitter<FunFactState> emit) async {
    FunFact? _fact;

    try {
      _fact = await _factRepository.getFunFact();
      emit(state.copyWith(fact: _fact));
    } catch (e) {
      throw Exception(e);
    }
  }
}
