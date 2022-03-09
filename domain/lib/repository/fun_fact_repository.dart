import 'package:domain/model/fun_fact.dart';

abstract class FunFactRepository {
  FunFact? get funFact;
  Future<FunFact?> getFunFact();
}