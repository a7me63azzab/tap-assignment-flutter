/// Transformation failed.
class TransformationException implements Exception {
  final String msg;

  const TransformationException(this.msg);

  @override
  String toString() => 'TransformationException: $msg';
}

/// Saving/loading failed.
class StorageException implements Exception {
  final String msg;

  const StorageException(this.msg);

  @override
  String toString() => 'StorageException: $msg';
}

/// Serialization failed.
class SerializationException implements Exception {
  final String msg;

  const SerializationException(this.msg);

  @override
  String toString() => 'SerializationException: $msg';
}
