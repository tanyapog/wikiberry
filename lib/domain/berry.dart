import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'berry.freezed.dart';
part 'berry.g.dart';

@freezed
class Berry with _$Berry{
  const factory Berry({
    required String name,
    String? latinName,
    required List<String> alternativeNames,
    required bool edible,
    required String imageAsset,
    required List<String> regions,
    String? description,
  }) = _Berry;

  factory Berry.fromJson(json) => _$BerryFromJson(json);
}

Future<List<Berry>> loadBerries(BuildContext context) async {
  try {
    // throw("TEST ERROR");
    final String jsonCatalog = await DefaultAssetBundle.of(context).loadString('assets/data/berries_catalog.json');
    return (jsonDecode(jsonCatalog) as List)
        .map((jsonBerry) => Berry.fromJson(jsonBerry))
        .toList();
  } on Exception catch (e) {
    debugPrint("::::: $e");
    rethrow;
  }
}
