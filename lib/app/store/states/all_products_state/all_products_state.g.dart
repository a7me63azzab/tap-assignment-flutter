// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_products_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllProductsState> _$allProductsStateSerializer =
    new _$AllProductsStateSerializer();

class _$AllProductsStateSerializer
    implements StructuredSerializer<AllProductsState> {
  @override
  final Iterable<Type> types = const [AllProductsState, _$AllProductsState];
  @override
  final String wireName = 'AllProductsState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AllProductsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
      'hasError',
      serializers.serialize(object.hasError,
          specifiedType: const FullType(bool)),
      'allProducts',
      serializers.serialize(object.allProducts,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltProductModel)])),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AllProductsState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllProductsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasError':
          result.hasError = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
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

class _$AllProductsState extends AllProductsState {
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? error;
  @override
  final BuiltList<BuiltProductModel> allProducts;

  factory _$AllProductsState(
          [void Function(AllProductsStateBuilder)? updates]) =>
      (new AllProductsStateBuilder()..update(updates)).build();

  _$AllProductsState._(
      {required this.isLoading,
      required this.hasError,
      this.error,
      required this.allProducts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'AllProductsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        hasError, 'AllProductsState', 'hasError');
    BuiltValueNullFieldError.checkNotNull(
        allProducts, 'AllProductsState', 'allProducts');
  }

  @override
  AllProductsState rebuild(void Function(AllProductsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllProductsStateBuilder toBuilder() =>
      new AllProductsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllProductsState &&
        isLoading == other.isLoading &&
        hasError == other.hasError &&
        error == other.error &&
        allProducts == other.allProducts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), hasError.hashCode), error.hashCode),
        allProducts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllProductsState')
          ..add('isLoading', isLoading)
          ..add('hasError', hasError)
          ..add('error', error)
          ..add('allProducts', allProducts))
        .toString();
  }
}

class AllProductsStateBuilder
    implements Builder<AllProductsState, AllProductsStateBuilder> {
  _$AllProductsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ListBuilder<BuiltProductModel>? _allProducts;
  ListBuilder<BuiltProductModel> get allProducts =>
      _$this._allProducts ??= new ListBuilder<BuiltProductModel>();
  set allProducts(ListBuilder<BuiltProductModel>? allProducts) =>
      _$this._allProducts = allProducts;

  AllProductsStateBuilder();

  AllProductsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _hasError = $v.hasError;
      _error = $v.error;
      _allProducts = $v.allProducts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllProductsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllProductsState;
  }

  @override
  void update(void Function(AllProductsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllProductsState build() {
    _$AllProductsState _$result;
    try {
      _$result = _$v ??
          new _$AllProductsState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'AllProductsState', 'isLoading'),
              hasError: BuiltValueNullFieldError.checkNotNull(
                  hasError, 'AllProductsState', 'hasError'),
              error: error,
              allProducts: allProducts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allProducts';
        allProducts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllProductsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
