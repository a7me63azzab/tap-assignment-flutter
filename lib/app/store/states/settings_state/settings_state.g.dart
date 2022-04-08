// GENERATED CODE - DO NOT MODIFY BY HAND

part of settings_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsState> _$settingsStateSerializer =
    new _$SettingsStateSerializer();

class _$SettingsStateSerializer implements StructuredSerializer<SettingsState> {
  @override
  final Iterable<Type> types = const [SettingsState, _$SettingsState];
  @override
  final String wireName = 'SettingsState';

  @override
  Iterable<Object?> serialize(Serializers serializers, SettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appLng',
      serializers.serialize(object.appLng,
          specifiedType: const FullType(String)),
      'appTheme',
      serializers.serialize(object.appTheme,
          specifiedType: const FullType(String)),
      'googleFont',
      serializers.serialize(object.googleFont,
          specifiedType: const FullType(String)),
      'mainColor',
      serializers.serialize(object.mainColor,
          specifiedType: const FullType(String)),
      'secondColor',
      serializers.serialize(object.secondColor,
          specifiedType: const FullType(String)),
      'accentColor',
      serializers.serialize(object.accentColor,
          specifiedType: const FullType(String)),
      'mainDarkColor',
      serializers.serialize(object.mainDarkColor,
          specifiedType: const FullType(String)),
      'secondDarkColor',
      serializers.serialize(object.secondDarkColor,
          specifiedType: const FullType(String)),
      'accentDarkColor',
      serializers.serialize(object.accentDarkColor,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SettingsState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appLng':
          result.appLng = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appTheme':
          result.appTheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'googleFont':
          result.googleFont = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainColor':
          result.mainColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secondColor':
          result.secondColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accentColor':
          result.accentColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainDarkColor':
          result.mainDarkColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secondDarkColor':
          result.secondDarkColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accentDarkColor':
          result.accentDarkColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SettingsState extends SettingsState {
  @override
  final String appLng;
  @override
  final String appTheme;
  @override
  final String googleFont;
  @override
  final String mainColor;
  @override
  final String secondColor;
  @override
  final String accentColor;
  @override
  final String mainDarkColor;
  @override
  final String secondDarkColor;
  @override
  final String accentDarkColor;

  factory _$SettingsState([void Function(SettingsStateBuilder)? updates]) =>
      (new SettingsStateBuilder()..update(updates)).build();

  _$SettingsState._(
      {required this.appLng,
      required this.appTheme,
      required this.googleFont,
      required this.mainColor,
      required this.secondColor,
      required this.accentColor,
      required this.mainDarkColor,
      required this.secondDarkColor,
      required this.accentDarkColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(appLng, 'SettingsState', 'appLng');
    BuiltValueNullFieldError.checkNotNull(
        appTheme, 'SettingsState', 'appTheme');
    BuiltValueNullFieldError.checkNotNull(
        googleFont, 'SettingsState', 'googleFont');
    BuiltValueNullFieldError.checkNotNull(
        mainColor, 'SettingsState', 'mainColor');
    BuiltValueNullFieldError.checkNotNull(
        secondColor, 'SettingsState', 'secondColor');
    BuiltValueNullFieldError.checkNotNull(
        accentColor, 'SettingsState', 'accentColor');
    BuiltValueNullFieldError.checkNotNull(
        mainDarkColor, 'SettingsState', 'mainDarkColor');
    BuiltValueNullFieldError.checkNotNull(
        secondDarkColor, 'SettingsState', 'secondDarkColor');
    BuiltValueNullFieldError.checkNotNull(
        accentDarkColor, 'SettingsState', 'accentDarkColor');
  }

  @override
  SettingsState rebuild(void Function(SettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStateBuilder toBuilder() => new SettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsState &&
        appLng == other.appLng &&
        appTheme == other.appTheme &&
        googleFont == other.googleFont &&
        mainColor == other.mainColor &&
        secondColor == other.secondColor &&
        accentColor == other.accentColor &&
        mainDarkColor == other.mainDarkColor &&
        secondDarkColor == other.secondDarkColor &&
        accentDarkColor == other.accentDarkColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, appLng.hashCode), appTheme.hashCode),
                                googleFont.hashCode),
                            mainColor.hashCode),
                        secondColor.hashCode),
                    accentColor.hashCode),
                mainDarkColor.hashCode),
            secondDarkColor.hashCode),
        accentDarkColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsState')
          ..add('appLng', appLng)
          ..add('appTheme', appTheme)
          ..add('googleFont', googleFont)
          ..add('mainColor', mainColor)
          ..add('secondColor', secondColor)
          ..add('accentColor', accentColor)
          ..add('mainDarkColor', mainDarkColor)
          ..add('secondDarkColor', secondDarkColor)
          ..add('accentDarkColor', accentDarkColor))
        .toString();
  }
}

class SettingsStateBuilder
    implements Builder<SettingsState, SettingsStateBuilder> {
  _$SettingsState? _$v;

  String? _appLng;
  String? get appLng => _$this._appLng;
  set appLng(String? appLng) => _$this._appLng = appLng;

  String? _appTheme;
  String? get appTheme => _$this._appTheme;
  set appTheme(String? appTheme) => _$this._appTheme = appTheme;

  String? _googleFont;
  String? get googleFont => _$this._googleFont;
  set googleFont(String? googleFont) => _$this._googleFont = googleFont;

  String? _mainColor;
  String? get mainColor => _$this._mainColor;
  set mainColor(String? mainColor) => _$this._mainColor = mainColor;

  String? _secondColor;
  String? get secondColor => _$this._secondColor;
  set secondColor(String? secondColor) => _$this._secondColor = secondColor;

  String? _accentColor;
  String? get accentColor => _$this._accentColor;
  set accentColor(String? accentColor) => _$this._accentColor = accentColor;

  String? _mainDarkColor;
  String? get mainDarkColor => _$this._mainDarkColor;
  set mainDarkColor(String? mainDarkColor) =>
      _$this._mainDarkColor = mainDarkColor;

  String? _secondDarkColor;
  String? get secondDarkColor => _$this._secondDarkColor;
  set secondDarkColor(String? secondDarkColor) =>
      _$this._secondDarkColor = secondDarkColor;

  String? _accentDarkColor;
  String? get accentDarkColor => _$this._accentDarkColor;
  set accentDarkColor(String? accentDarkColor) =>
      _$this._accentDarkColor = accentDarkColor;

  SettingsStateBuilder();

  SettingsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appLng = $v.appLng;
      _appTheme = $v.appTheme;
      _googleFont = $v.googleFont;
      _mainColor = $v.mainColor;
      _secondColor = $v.secondColor;
      _accentColor = $v.accentColor;
      _mainDarkColor = $v.mainDarkColor;
      _secondDarkColor = $v.secondDarkColor;
      _accentDarkColor = $v.accentDarkColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsState;
  }

  @override
  void update(void Function(SettingsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsState build() {
    final _$result = _$v ??
        new _$SettingsState._(
            appLng: BuiltValueNullFieldError.checkNotNull(
                appLng, 'SettingsState', 'appLng'),
            appTheme: BuiltValueNullFieldError.checkNotNull(
                appTheme, 'SettingsState', 'appTheme'),
            googleFont: BuiltValueNullFieldError.checkNotNull(
                googleFont, 'SettingsState', 'googleFont'),
            mainColor: BuiltValueNullFieldError.checkNotNull(
                mainColor, 'SettingsState', 'mainColor'),
            secondColor: BuiltValueNullFieldError.checkNotNull(
                secondColor, 'SettingsState', 'secondColor'),
            accentColor: BuiltValueNullFieldError.checkNotNull(
                accentColor, 'SettingsState', 'accentColor'),
            mainDarkColor: BuiltValueNullFieldError.checkNotNull(
                mainDarkColor, 'SettingsState', 'mainDarkColor'),
            secondDarkColor: BuiltValueNullFieldError.checkNotNull(
                secondDarkColor, 'SettingsState', 'secondDarkColor'),
            accentDarkColor: BuiltValueNullFieldError.checkNotNull(
                accentDarkColor, 'SettingsState', 'accentDarkColor'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
