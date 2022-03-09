import 'package:domain/service/local_storage/app_storage.dart';

class StorageEvent<T> {
  StorageEvent({
    required this.appStorage,
    required this.key,
    this.encode,
    this.decode,
  });

  final String key;
  final AppStorage appStorage;
  final String Function(T data)? encode;
  final T Function(String json)? decode;

  Future<bool> remove() async => await appStorage.remove(key);

  Future<bool> save(T data) async => await appStorage.setValue(key, data, encode);

  T? load() => appStorage.getValue<T>(key, decode);
}