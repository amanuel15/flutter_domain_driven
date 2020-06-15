// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ImageItem {
  UniqueId get id;
  ImageUrl get name;
  bool get done;

  ImageItem copyWith({UniqueId id, ImageUrl name, bool done});
}

class _$ImageItemTearOff {
  const _$ImageItemTearOff();

  _ImageItem call(
      {@required UniqueId id, @required ImageUrl name, @required bool done}) {
    return _ImageItem(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $ImageItem = _$ImageItemTearOff();

class _$_ImageItem implements _ImageItem {
  const _$_ImageItem(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  @override
  final UniqueId id;
  @override
  final ImageUrl name;
  @override
  final bool done;

  @override
  String toString() {
    return 'ImageItem(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageItem &&
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
  _$_ImageItem copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_ImageItem(
      id: id == freezed ? this.id : id as UniqueId,
      name: name == freezed ? this.name : name as ImageUrl,
      done: done == freezed ? this.done : done as bool,
    );
  }
}

abstract class _ImageItem implements ImageItem {
  const factory _ImageItem(
      {@required UniqueId id,
      @required ImageUrl name,
      @required bool done}) = _$_ImageItem;

  @override
  UniqueId get id;
  @override
  ImageUrl get name;
  @override
  bool get done;

  @override
  _ImageItem copyWith({UniqueId id, ImageUrl name, bool done});
}
