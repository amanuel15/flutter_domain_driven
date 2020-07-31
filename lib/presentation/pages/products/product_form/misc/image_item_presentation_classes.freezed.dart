// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_item_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ImageItemPrimitive {
  String get name;

  ImageItemPrimitive copyWith({String name});
}

class _$ImageItemPrimitiveTearOff {
  const _$ImageItemPrimitiveTearOff();

  _ImageItemPrimitive call({@required String name}) {
    return _ImageItemPrimitive(
      name: name,
    );
  }
}

const $ImageItemPrimitive = _$ImageItemPrimitiveTearOff();

class _$_ImageItemPrimitive
    with DiagnosticableTreeMixin
    implements _ImageItemPrimitive {
  const _$_ImageItemPrimitive({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageItemPrimitive(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageItemPrimitive'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageItemPrimitive &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$_ImageItemPrimitive copyWith({
    Object name = freezed,
  }) {
    return _$_ImageItemPrimitive(
      name: name == freezed ? this.name : name as String,
    );
  }
}

abstract class _ImageItemPrimitive implements ImageItemPrimitive {
  const factory _ImageItemPrimitive({@required String name}) =
      _$_ImageItemPrimitive;

  @override
  String get name;

  @override
  _ImageItemPrimitive copyWith({String name});
}
