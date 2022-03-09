import 'package:domain/model/fun_fact.dart';
import 'package:domain/model/storage_event.dart';

abstract class StorageService {
  StorageEvent<FunFact> get funFact;
}
