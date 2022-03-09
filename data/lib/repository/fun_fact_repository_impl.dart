import 'package:injectable/injectable.dart';

import 'package:domain/model/fun_fact.dart';
import 'package:domain/service/api/api.dart';
import 'package:domain/repository/fun_fact_repository.dart';
import 'package:domain/service/local_storage/local_storage.dart';

@LazySingleton(as: FunFactRepository)
class FunFactRepositoryImpl implements FunFactRepository {

  final Api _api;
  final StorageService _storage;
  FunFactRepositoryImpl(this._api, this._storage);

  FunFact? _funFact;

  @override
  Future<FunFact?> getFunFact() async {
    final response = await _api.funFactApi.getFunFact();

    return response.when(
      success: (funFact) {
        _funFact = funFact;
        _storage.funFact.save(funFact!);
        return funFact;
      },
      failure: (error) {
        throw error;
      }
    );
  }

  @override
  FunFact? get funFact {
    _funFact ??= _storage.funFact.load();
    return _funFact;
  }
}