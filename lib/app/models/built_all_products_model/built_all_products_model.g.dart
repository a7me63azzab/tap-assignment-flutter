// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_all_products_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAllProductsModel> _$builtAllProductsModelSerializer =
    new _$BuiltAllProductsModelSerializer();

class _$BuiltAllProductsModelSerializer
    implements StructuredSerializer<BuiltAllProductsModel> {
  @override
  final Iterable<Type> types = const [
    BuiltAllProductsModel,
    _$BuiltAllProductsModel
  ];
  @override
  final String wireName = 'BuiltAllProductsModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BuiltAllProductsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'allProducts',
      serializers.serialize(object.allProducts,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltProductModel)])),
    ];

    return result;
  }

  @override
  BuiltAllProductsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllProductsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allProducts':
          result.allProducts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltProductModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllProductsModel extends BuiltAllProductsModel {
  @override
  final BuiltList<BuiltProductModel> allProducts;

  factory _$BuiltAllProductsModel(
          [void Function(BuiltAllProductsModelBuilder)? updates]) =>
      (new BuiltAllProductsModelBuilder()..update(updates)).build();

  _$BuiltAllProductsModel._({required this.allProducts}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allProducts, 'BuiltAllProductsModel', 'allProducts');
  }

  @override
  BuiltAllProductsModel rebuild(
          void Function(BuiltAllProductsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllProductsModelBuilder toBuilder() =>
      new BuiltAllProductsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllProductsModel && allProducts == other.allProducts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, allProducts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllProductsModel')
          ..add('allProducts', allProducts))
        .toString();
  }
}

class BuiltAllProductsModelBuilder
    implements Builder<BuiltAllProductsModel, BuiltAllProductsModelBuilder> {
  _$BuiltAllProductsModel? _$v;

  ListBuilder<BuiltProductModel>? _allProducts;
  ListBuilder<BuiltProductModel> get allProducts =>
      _$this._allProducts ??= new ListBuilder<BuiltProductModel>();
  set allProducts(ListBuilder<BuiltProductModel>? allProducts) =>
      _$this._allProducts = allProducts;

  BuiltAllProductsModelBuilder();

  BuiltAllProductsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allProducts = $v.allProducts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllProductsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltAllProductsModel;
  }

  @override
  void update(void Function(BuiltAllProductsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllProductsModel build() {
    _$BuiltAllProductsModel _$result;
    try {
      _$result = _$v ??
          new _$BuiltAllProductsModel._(allProducts: allProducts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allProducts';
        allProducts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAllProductsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
