// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_product_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddProductState> _$addProductStateSerializer =
    new _$AddProductStateSerializer();

class _$AddProductStateSerializer
    implements StructuredSerializer<AddProductState> {
  @override
  final Iterable<Type> types = const [AddProductState, _$AddProductState];
  @override
  final String wireName = 'AddProductState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddProductState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
      'hasError',
      serializers.serialize(object.hasError,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productId;
    if (value != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AddProductState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddProductStateBuilder();

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
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AddProductState extends AddProductState {
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? error;
  @override
  final int? productId;

  factory _$AddProductState([void Function(AddProductStateBuilder)? updates]) =>
      (new AddProductStateBuilder()..update(updates)).build();

  _$AddProductState._(
      {required this.isLoading,
      required this.hasError,
      this.error,
      this.productId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'AddProductState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        hasError, 'AddProductState', 'hasError');
  }

  @override
  AddProductState rebuild(void Function(AddProductStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddProductStateBuilder toBuilder() =>
      new AddProductStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddProductState &&
        isLoading == other.isLoading &&
        hasError == other.hasError &&
        error == other.error &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), hasError.hashCode), error.hashCode),
        productId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddProductState')
          ..add('isLoading', isLoading)
          ..add('hasError', hasError)
          ..add('error', error)
          ..add('productId', productId))
        .toString();
  }
}

class AddProductStateBuilder
    implements Builder<AddProductState, AddProductStateBuilder> {
  _$AddProductState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  AddProductStateBuilder();

  AddProductStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _hasError = $v.hasError;
      _error = $v.error;
      _productId = $v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddProductState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddProductState;
  }

  @override
  void update(void Function(AddProductStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddProductState build() {
    final _$result = _$v ??
        new _$AddProductState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'AddProductState', 'isLoading'),
            hasError: BuiltValueNullFieldError.checkNotNull(
                hasError, 'AddProductState', 'hasError'),
            error: error,
            productId: productId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
