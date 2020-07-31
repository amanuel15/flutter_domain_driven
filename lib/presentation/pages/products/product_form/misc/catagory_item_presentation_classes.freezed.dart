// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catagory_item_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CatagoryItemPrimitive {
  String get name;

  CatagoryItemPrimitive copyWith({String name});
}

class _$CatagoryItemPrimitiveTearOff {
  const _$CatagoryItemPrimitiveTearOff();

  _CatagoryItemPrimitive call({@required String name}) {
    return _CatagoryItemPrimitive(
      name: name,
    );
  }
}

const $CatagoryItemPrimitive = _$CatagoryItemPrimitiveTearOff();

class _$_CatagoryItemPrimitive
    with DiagnosticableTreeMixin
    implements _CatagoryItemPrimitive {
  const _$_CatagoryItemPrimitive({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatagoryItemPrimitive(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatagoryItemPrimitive'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoryItemPrimitive &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$_CatagoryItemPrimitive copyWith({
    Object name = freezed,
  }) {
    return _$_CatagoryItemPrimitive(
      name: name == freezed ? this.name : name as String,
    );
  }
}

abstract class _CatagoryItemPrimitive implements CatagoryItemPrimitive {
  const factory _CatagoryItemPrimitive({@required String name}) =
      _$_CatagoryItemPrimitive;

  @override
  String get name;

  @override
  _CatagoryItemPrimitive copyWith({String name});
}
