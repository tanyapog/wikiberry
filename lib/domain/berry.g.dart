// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BerryImpl _$$BerryImplFromJson(Map<String, dynamic> json) => _$BerryImpl(
      name: json['name'] as String,
      latinName: json['latinName'] as String,
      alternativeNames: (json['alternativeNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      edible: json['edible'] as bool,
      imageAsset: json['imageAsset'] as String,
      regions:
          (json['regions'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$BerryImplToJson(_$BerryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latinName': instance.latinName,
      'alternativeNames': instance.alternativeNames,
      'edible': instance.edible,
      'imageAsset': instance.imageAsset,
      'regions': instance.regions,
      'description': instance.description,
    };
