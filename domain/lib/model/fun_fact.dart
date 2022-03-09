import 'package:freezed_annotation/freezed_annotation.dart';

part 'fun_fact.freezed.dart';
part 'fun_fact.g.dart';

@freezed
class FunFact with _$FunFact {
  factory FunFact({
    String? text
  }) = _FunFact;

  factory FunFact.fromJson(Map<String, dynamic> json) => _$FunFactFromJson(json);
}