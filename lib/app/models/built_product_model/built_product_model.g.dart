// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_product_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltProductModel> _$builtProductModelSerializer =
    new _$BuiltProductModelSerializer();

class _$BuiltProductModelSerializer
    implements StructuredSerializer<BuiltProductModel> {
  @override
  final Iterable<Type> types = const [BuiltProductModel, _$BuiltProductModel];
  @override
  final String wireName = 'BuiltProductModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltProductModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'pice',
      serializers.serialize(object.pice, specifiedType: const FullType(num)),
    ];

    return result;
  }

  @override
  BuiltProductModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltProductModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pice':
          result.pice = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltProductModel extends BuiltProductModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final num pice;

  factory _$BuiltProductModel(
          [void Function(BuiltProductModelBuilder)? updates]) =>
      (new BuiltProductModelBuilder()..update(updates)).build();

  _$BuiltProductModel._(
      {required this.id,
      required this.name,
      required this.description,
      required this.pice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'BuiltProductModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'BuiltProductModel', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, 'BuiltProductModel', 'description');
    BuiltValueNullFieldError.checkNotNull(pice, 'BuiltProductModel', 'pice');
  }

  @override
  BuiltProductModel rebuild(void Function(BuiltProductModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltProductModelBuilder toBuilder() =>
      new BuiltProductModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltProductModel &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        pice == other.pice;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), description.hashCode),
        pice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltProductModel')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('pice', pice))
        .toString();
  }
}

class BuiltProductModelBuilder
    implements Builder<BuiltProductModel, BuiltProductModelBuilder> {
  _$BuiltProductModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _pice;
  num? get pice => _$this._pice;
  set pice(num? pice) => _$this._pice = pice;

  BuiltProductModelBuilder();

  BuiltProductModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _pice = $v.pice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltProductModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltProductModel;
  }

  @override
  void update(void Function(BuiltProductModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltProductModel build() {
    final _$result = _$v ??
        new _$BuiltProductModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'BuiltProductModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'BuiltProductModel', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'BuiltProductModel', 'description'),
            pice: BuiltValueNullFieldError.checkNotNull(
                pice, 'BuiltProductModel', 'pice'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
