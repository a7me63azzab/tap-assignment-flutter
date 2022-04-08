// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_error_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltError> _$builtErrorSerializer = new _$BuiltErrorSerializer();

class _$BuiltErrorSerializer implements StructuredSerializer<BuiltError> {
  @override
  final Iterable<Type> types = const [BuiltError, _$BuiltError];
  @override
  final String wireName = 'BuiltError';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltError extends BuiltError {
  @override
  final bool status;
  @override
  final String error;

  factory _$BuiltError([void Function(BuiltErrorBuilder)? updates]) =>
      (new BuiltErrorBuilder()..update(updates)).build();

  _$BuiltError._({required this.status, required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'BuiltError', 'status');
    BuiltValueNullFieldError.checkNotNull(error, 'BuiltError', 'error');
  }

  @override
  BuiltError rebuild(void Function(BuiltErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltErrorBuilder toBuilder() => new BuiltErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltError &&
        status == other.status &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltError')
          ..add('status', status)
          ..add('error', error))
        .toString();
  }
}

class BuiltErrorBuilder implements Builder<BuiltError, BuiltErrorBuilder> {
  _$BuiltError? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BuiltErrorBuilder();

  BuiltErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltError;
  }

  @override
  void update(void Function(BuiltErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltError build() {
    final _$result = _$v ??
        new _$BuiltError._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'BuiltError', 'status'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'BuiltError', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
