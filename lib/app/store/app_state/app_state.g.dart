// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'allProductsState',
      serializers.serialize(object.allProductsState,
          specifiedType: const FullType(AllProductsState)),
      'settingsState',
      serializers.serialize(object.settingsState,
          specifiedType: const FullType(SettingsState)),
      'addProductState',
      serializers.serialize(object.addProductState,
          specifiedType: const FullType(AddProductState)),
      'isAvailableToAddProduct',
      serializers.serialize(object.isAvailableToAddProduct,
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
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allProductsState':
          result.allProductsState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AllProductsState))!
              as AllProductsState);
          break;
        case 'settingsState':
          result.settingsState.replace(serializers.deserialize(value,
              specifiedType: const FullType(SettingsState))! as SettingsState);
          break;
        case 'addProductState':
          result.addProductState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AddProductState))!
              as AddProductState);
          break;
        case 'isAvailableToAddProduct':
          result.isAvailableToAddProduct = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AllProductsState allProductsState;
  @override
  final SettingsState settingsState;
  @override
  final AddProductState addProductState;
  @override
  final bool isAvailableToAddProduct;
  @override
  final String? error;
  @override
  final String? success;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.allProductsState,
      required this.settingsState,
      required this.addProductState,
      required this.isAvailableToAddProduct,
      this.error,
      this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allProductsState, 'AppState', 'allProductsState');
    BuiltValueNullFieldError.checkNotNull(
        settingsState, 'AppState', 'settingsState');
    BuiltValueNullFieldError.checkNotNull(
        addProductState, 'AppState', 'addProductState');
    BuiltValueNullFieldError.checkNotNull(
        isAvailableToAddProduct, 'AppState', 'isAvailableToAddProduct');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        allProductsState == other.allProductsState &&
        settingsState == other.settingsState &&
        addProductState == other.addProductState &&
        isAvailableToAddProduct == other.isAvailableToAddProduct &&
        error == other.error &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, allProductsState.hashCode),
                        settingsState.hashCode),
                    addProductState.hashCode),
                isAvailableToAddProduct.hashCode),
            error.hashCode),
        success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('allProductsState', allProductsState)
          ..add('settingsState', settingsState)
          ..add('addProductState', addProductState)
          ..add('isAvailableToAddProduct', isAvailableToAddProduct)
          ..add('error', error)
          ..add('success', success))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AllProductsStateBuilder? _allProductsState;
  AllProductsStateBuilder get allProductsState =>
      _$this._allProductsState ??= new AllProductsStateBuilder();
  set allProductsState(AllProductsStateBuilder? allProductsState) =>
      _$this._allProductsState = allProductsState;

  SettingsStateBuilder? _settingsState;
  SettingsStateBuilder get settingsState =>
      _$this._settingsState ??= new SettingsStateBuilder();
  set settingsState(SettingsStateBuilder? settingsState) =>
      _$this._settingsState = settingsState;

  AddProductStateBuilder? _addProductState;
  AddProductStateBuilder get addProductState =>
      _$this._addProductState ??= new AddProductStateBuilder();
  set addProductState(AddProductStateBuilder? addProductState) =>
      _$this._addProductState = addProductState;

  bool? _isAvailableToAddProduct;
  bool? get isAvailableToAddProduct => _$this._isAvailableToAddProduct;
  set isAvailableToAddProduct(bool? isAvailableToAddProduct) =>
      _$this._isAvailableToAddProduct = isAvailableToAddProduct;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _success;
  String? get success => _$this._success;
  set success(String? success) => _$this._success = success;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allProductsState = $v.allProductsState.toBuilder();
      _settingsState = $v.settingsState.toBuilder();
      _addProductState = $v.addProductState.toBuilder();
      _isAvailableToAddProduct = $v.isAvailableToAddProduct;
      _error = $v.error;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              allProductsState: allProductsState.build(),
              settingsState: settingsState.build(),
              addProductState: addProductState.build(),
              isAvailableToAddProduct: BuiltValueNullFieldError.checkNotNull(
                  isAvailableToAddProduct,
                  'AppState',
                  'isAvailableToAddProduct'),
              error: error,
              success: success);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allProductsState';
        allProductsState.build();
        _$failedField = 'settingsState';
        settingsState.build();
        _$failedField = 'addProductState';
        addProductState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
