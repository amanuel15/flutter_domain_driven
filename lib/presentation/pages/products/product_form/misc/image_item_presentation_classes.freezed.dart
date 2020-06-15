// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_item_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ImageItemPrimitive {
  UniqueId get id;
  String get name;
  bool get done;

  ImageItemPrimitive copyWith({UniqueId id, String name, bool done});
}

class _$ImageItemPrimitiveTearOff {
  const _$ImageItemPrimitiveTearOff();

  _ImageItemPrimitive call(
      {@required UniqueId id, @required String name, @required bool done}) {
    return _ImageItemPrimitive(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $ImageItemPrimitive = _$ImageItemPrimitiveTearOff();

class _$_ImageItemPrimitive
    with DiagnosticableTreeMixin
    implements _ImageItemPrimitive {
  const _$_ImageItemPrimitive(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageItemPrimitive(id: $id, name: $name, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageItemPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$_ImageItemPrimitive copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_ImageItemPrimitive(
      id: id == freezed ? this.id : id as UniqueId,
      name: name == freezed ? this.name : name as String,
      done: done == freezed ? this.done : done as bool,
    );
  }
}

abstract class _ImageItemPrimitive implements ImageItemPrimitive {
  const factory _ImageItemPrimitive(
      {@required UniqueId id,
      @required String name,
      @required bool done}) = _$_ImageItemPrimitive;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  bool get done;

  @override
  _ImageItemPrimitive copyWith({UniqueId id, String name, bool done});
}
