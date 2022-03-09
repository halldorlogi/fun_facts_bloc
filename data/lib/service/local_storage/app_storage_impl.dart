import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/service/local_storage/app_storage.dart';

@LazySingleton(as: AppStorage)
class AppStorageImpl implements AppStorage {
  const AppStorageImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  T? getValue<T>(String key, [T Function(String json)? decode]) {
    if (decode != null) {
      final json = _preferences.getString(key);
      return json != null ? decode(json) : null;
    }
    return _preferences.get(key) as T?;
  }

  @override
  Future<bool> remove(String key) async => await _preferences.remove(key);

  @override
  Future<bool> setValue<T>(
      String key,
      T value, [
        String Function(T data)? encode,
      ]) async {
    if (encode != null) {
      return _preferences.setString(key, encode(value));
    }
    switch (T) {
      case double:
        return _preferences.setDouble(key, value as double);
      case bool:
        return _preferences.setBool(key, value as bool);
      case String:
        return _preferences.setString(key, value as String);
      default:
        throw Exception('The setter for ${value.runtimeType} is not implemented');
    }
  }
}
