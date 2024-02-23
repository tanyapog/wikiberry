// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'berry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Berry _$BerryFromJson(Map<String, dynamic> json) {
  return _Berry.fromJson(json);
}

/// @nodoc
mixin _$Berry {
  String get name => throw _privateConstructorUsedError;
  String get latinName => throw _privateConstructorUsedError;
  List<String> get alternativeNames => throw _privateConstructorUsedError;
  bool get edible => throw _privateConstructorUsedError;
  String get imageAsset => throw _privateConstructorUsedError;
  String? get wikiUrl => throw _privateConstructorUsedError;
  List<String> get regions => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BerryCopyWith<Berry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BerryCopyWith<$Res> {
  factory $BerryCopyWith(Berry value, $Res Function(Berry) then) =
      _$BerryCopyWithImpl<$Res, Berry>;
  @useResult
  $Res call(
      {String name,
      String latinName,
      List<String> alternativeNames,
      bool edible,
      String imageAsset,
      String? wikiUrl,
      List<String> regions,
      String? description});
}

/// @nodoc
class _$BerryCopyWithImpl<$Res, $Val extends Berry>
    implements $BerryCopyWith<$Res> {
  _$BerryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latinName = null,
    Object? alternativeNames = null,
    Object? edible = null,
    Object? imageAsset = null,
    Object? wikiUrl = freezed,
    Object? regions = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      alternativeNames: null == alternativeNames
          ? _value.alternativeNames
          : alternativeNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      edible: null == edible
          ? _value.edible
          : edible // ignore: cast_nullable_to_non_nullable
              as bool,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: freezed == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BerryImplCopyWith<$Res> implements $BerryCopyWith<$Res> {
  factory _$$BerryImplCopyWith(
          _$BerryImpl value, $Res Function(_$BerryImpl) then) =
      __$$BerryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String latinName,
      List<String> alternativeNames,
      bool edible,
      String imageAsset,
      String? wikiUrl,
      List<String> regions,
      String? description});
}

/// @nodoc
class __$$BerryImplCopyWithImpl<$Res>
    extends _$BerryCopyWithImpl<$Res, _$BerryImpl>
    implements _$$BerryImplCopyWith<$Res> {
  __$$BerryImplCopyWithImpl(
      _$BerryImpl _value, $Res Function(_$BerryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latinName = null,
    Object? alternativeNames = null,
    Object? edible = null,
    Object? imageAsset = null,
    Object? wikiUrl = freezed,
    Object? regions = null,
    Object? description = freezed,
  }) {
    return _then(_$BerryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      alternativeNames: null == alternativeNames
          ? _value._alternativeNames
          : alternativeNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      edible: null == edible
          ? _value.edible
          : edible // ignore: cast_nullable_to_non_nullable
              as bool,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: freezed == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BerryImpl implements _Berry {
  const _$BerryImpl(
      {required this.name,
      required this.latinName,
      required final List<String> alternativeNames,
      required this.edible,
      required this.imageAsset,
      this.wikiUrl,
      required final List<String> regions,
      this.description})
      : _alternativeNames = alternativeNames,
        _regions = regions;

  factory _$BerryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BerryImplFromJson(json);

  @override
  final String name;
  @override
  final String latinName;
  final List<String> _alternativeNames;
  @override
  List<String> get alternativeNames {
    if (_alternativeNames is EqualUnmodifiableListView)
      return _alternativeNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alternativeNames);
  }

  @override
  final bool edible;
  @override
  final String imageAsset;
  @override
  final String? wikiUrl;
  final List<String> _regions;
  @override
  List<String> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  final String? description;

  @override
  String toString() {
    return 'Berry(name: $name, latinName: $latinName, alternativeNames: $alternativeNames, edible: $edible, imageAsset: $imageAsset, wikiUrl: $wikiUrl, regions: $regions, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BerryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            const DeepCollectionEquality()
                .equals(other._alternativeNames, _alternativeNames) &&
            (identical(other.edible, edible) || other.edible == edible) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      latinName,
      const DeepCollectionEquality().hash(_alternativeNames),
      edible,
      imageAsset,
      wikiUrl,
      const DeepCollectionEquality().hash(_regions),
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BerryImplCopyWith<_$BerryImpl> get copyWith =>
      __$$BerryImplCopyWithImpl<_$BerryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BerryImplToJson(
      this,
    );
  }
}

abstract class _Berry implements Berry {
  const factory _Berry(
      {required final String name,
      required final String latinName,
      required final List<String> alternativeNames,
      required final bool edible,
      required final String imageAsset,
      final String? wikiUrl,
      required final List<String> regions,
      final String? description}) = _$BerryImpl;

  factory _Berry.fromJson(Map<String, dynamic> json) = _$BerryImpl.fromJson;

  @override
  String get name;
  @override
  String get latinName;
  @override
  List<String> get alternativeNames;
  @override
  bool get edible;
  @override
  String get imageAsset;
  @override
  String? get wikiUrl;
  @override
  List<String> get regions;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$BerryImplCopyWith<_$BerryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
