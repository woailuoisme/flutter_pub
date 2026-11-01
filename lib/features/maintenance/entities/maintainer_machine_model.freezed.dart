// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintainer_machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaintainerMachineModel {

 String get id; String get name; String get location;@JsonKey(name: 'fault_count') int get faultCount;@JsonKey(name: 'last_fault_at') String? get lastFaultAt;
/// Create a copy of MaintainerMachineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaintainerMachineModelCopyWith<MaintainerMachineModel> get copyWith => _$MaintainerMachineModelCopyWithImpl<MaintainerMachineModel>(this as MaintainerMachineModel, _$identity);

  /// Serializes this MaintainerMachineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MaintainerMachineModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaintainerMachineModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.faultCount, _this.faultCount) || other.faultCount == _this.faultCount)&&(identical(other.lastFaultAt, _this.lastFaultAt) || other.lastFaultAt == _this.lastFaultAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MaintainerMachineModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.location,_this.faultCount,_this.lastFaultAt);
}

@override
String toString() {
  final _this = this as MaintainerMachineModel;
  return 'MaintainerMachineModel(id: ${_this.id}, name: ${_this.name}, location: ${_this.location}, faultCount: ${_this.faultCount}, lastFaultAt: ${_this.lastFaultAt})';
}


}

/// @nodoc
abstract mixin class $MaintainerMachineModelCopyWith<$Res>  {
  factory $MaintainerMachineModelCopyWith(MaintainerMachineModel value, $Res Function(MaintainerMachineModel) _then) = _$MaintainerMachineModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String location,@JsonKey(name: 'fault_count') int faultCount,@JsonKey(name: 'last_fault_at') String? lastFaultAt
});




}
/// @nodoc
class _$MaintainerMachineModelCopyWithImpl<$Res>
    implements $MaintainerMachineModelCopyWith<$Res> {
  _$MaintainerMachineModelCopyWithImpl(this._self, this._then);

  final MaintainerMachineModel _self;
  final $Res Function(MaintainerMachineModel) _then;

/// Create a copy of MaintainerMachineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? faultCount = null,Object? lastFaultAt = freezed,}) {
  return _then(MaintainerMachineModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,faultCount: null == faultCount ? _self.faultCount : faultCount // ignore: cast_nullable_to_non_nullable
as int,lastFaultAt: freezed == lastFaultAt ? _self.lastFaultAt : lastFaultAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaintainerMachineModel].
extension MaintainerMachineModelPatterns on MaintainerMachineModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaintainerMachineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaintainerMachineModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaintainerMachineModel value)  $default,){
final _that = this;
switch (_that) {
case _MaintainerMachineModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaintainerMachineModel value)?  $default,){
final _that = this;
switch (_that) {
case _MaintainerMachineModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String location, @JsonKey(name: 'fault_count')  int faultCount, @JsonKey(name: 'last_fault_at')  String? lastFaultAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaintainerMachineModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.faultCount,_that.lastFaultAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String location, @JsonKey(name: 'fault_count')  int faultCount, @JsonKey(name: 'last_fault_at')  String? lastFaultAt)  $default,) {final _that = this;
switch (_that) {
case _MaintainerMachineModel():
return $default(_that.id,_that.name,_that.location,_that.faultCount,_that.lastFaultAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String location, @JsonKey(name: 'fault_count')  int faultCount, @JsonKey(name: 'last_fault_at')  String? lastFaultAt)?  $default,) {final _that = this;
switch (_that) {
case _MaintainerMachineModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.faultCount,_that.lastFaultAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaintainerMachineModel implements MaintainerMachineModel {
  const _MaintainerMachineModel({required this.id, required this.name, required this.location, @JsonKey(name: 'fault_count') this.faultCount = 0, @JsonKey(name: 'last_fault_at') this.lastFaultAt});
  factory _MaintainerMachineModel.fromJson(Map<String, dynamic> json) => _$MaintainerMachineModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String location;
@override@JsonKey(name: 'fault_count') final  int faultCount;
@override@JsonKey(name: 'last_fault_at') final  String? lastFaultAt;

/// Create a copy of MaintainerMachineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaintainerMachineModelCopyWith<_MaintainerMachineModel> get copyWith => __$MaintainerMachineModelCopyWithImpl<_MaintainerMachineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaintainerMachineModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaintainerMachineModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.faultCount, faultCount) || other.faultCount == faultCount)&&(identical(other.lastFaultAt, lastFaultAt) || other.lastFaultAt == lastFaultAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,location,faultCount,lastFaultAt);
}

@override
String toString() {
    return 'MaintainerMachineModel(id: $id, name: $name, location: $location, faultCount: $faultCount, lastFaultAt: $lastFaultAt)';
}


}

/// @nodoc
abstract mixin class _$MaintainerMachineModelCopyWith<$Res> implements $MaintainerMachineModelCopyWith<$Res> {
  factory _$MaintainerMachineModelCopyWith(_MaintainerMachineModel value, $Res Function(_MaintainerMachineModel) _then) = __$MaintainerMachineModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String location,@JsonKey(name: 'fault_count') int faultCount,@JsonKey(name: 'last_fault_at') String? lastFaultAt
});




}
/// @nodoc
class __$MaintainerMachineModelCopyWithImpl<$Res>
    implements _$MaintainerMachineModelCopyWith<$Res> {
  __$MaintainerMachineModelCopyWithImpl(this._self, this._then);

  final _MaintainerMachineModel _self;
  final $Res Function(_MaintainerMachineModel) _then;

/// Create a copy of MaintainerMachineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? faultCount = null,Object? lastFaultAt = freezed,}) {
  return _then(_MaintainerMachineModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,faultCount: null == faultCount ? _self.faultCount : faultCount // ignore: cast_nullable_to_non_nullable
as int,lastFaultAt: freezed == lastFaultAt ? _self.lastFaultAt : lastFaultAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
