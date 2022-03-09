import 'dart:convert';

import 'package:domain/model/fun_fact.dart';
import 'package:injectable/injectable.dart';

import 'package:domain/model/storage_event.dart';
import 'package:domain/service/local_storage/app_storage.dart';
import 'package:domain/service/local_storage/storage_key.dart';
import 'package:domain/service/local_storage/storage_service.dart';

@LazySingleton(as: StorageService)
class StorageServiceImpl implements StorageService {
  const StorageServiceImpl(this._appStorage);
  final AppStorage _appStorage;

  @override
  StorageEvent<FunFact> get funFact => StorageEvent<FunFact>(
    appStorage: _appStorage,
    key: StorageKey.funFact,
    encode: (FunFact object) => jsonEncode(object),
    decode: (String json) => FunFact.fromJson(jsonDecode(json)),
  );
}
