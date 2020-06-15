// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catagory_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CatagoryItem {
  UniqueId get id;
  Catagory get name;
  bool get done;

  CatagoryItem copyWith({UniqueId id, Catagory name, bool done});
}

class _$CatagoryItemTearOff {
  const _$CatagoryItemTearOff();

  _CatagoryItem call(
      {@required UniqueId id, @required Catagory name, @required bool done}) {
    return _CatagoryItem(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $CatagoryItem = _$CatagoryItemTearOff();

class _$_CatagoryItem implements _CatagoryItem {
  const _$_CatagoryItem(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  @override
  final UniqueId id;
  @override
  final Catagory name;
  @override
  final bool done;

  @override
  String toString() {
    return 'CatagoryItem(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoryItem &&
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
  _$_CatagoryItem copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_CatagoryItem(
      id: id == freezed ? this.id : id as UniqueId,
      name: name == freezed ? this.name : name as Catagory,
      done: done == freezed ? this.done : done as bool,
    );
  }
}

abstract class _CatagoryItem implements CatagoryItem {
  const factory _CatagoryItem(
      {@required UniqueId id,
      @required Catagory name,
      @required bool done}) = _$_CatagoryItem;

  @override
  UniqueId get id;
  @override
  Catagory get name;
  @override
  bool get done;

  @override
  _CatagoryItem copyWith({UniqueId id, Catagory name, bool done});
}
