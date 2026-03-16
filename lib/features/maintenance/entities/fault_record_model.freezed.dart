// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fault_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaultRecordModel {

 String get id;@JsonKey(name: 'machine_id') String get machineId;@JsonKey(name: 'fault_type') String get faultType; String get description; FaultStatus get status;@JsonKey(name: 'occurred_at') String get occurredAt;
/// Create a copy of FaultRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaultRecordModelCopyWith<FaultRecordModel> get copyWith => _$FaultRecordModelCopyWithImpl<FaultRecordModel>(this as FaultRecordModel, _$identity);

  /// Serializes this FaultRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaultRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.machineId, machineId) || other.machineId == machineId)&&(identical(other.faultType, faultType) || other.faultType == faultType)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,machineId,faultType,description,status,occurredAt);

@override
String toString() {
  return 'FaultRecordModel(id: $id, machineId: $machineId, faultType: $faultType, description: $description, status: $status, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class $FaultRecordModelCopyWith<$Res>  {
  factory $FaultRecordModelCopyWith(FaultRecordModel value, $Res Function(FaultRecordModel) _then) = _$FaultRecordModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'machine_id') String machineId,@JsonKey(name: 'fault_type') String faultType, String description, FaultStatus status,@JsonKey(name: 'occurred_at') String occurredAt
});




}
/// @nodoc
class _$FaultRecordModelCopyWithImpl<$Res>
    implements $FaultRecordModelCopyWith<$Res> {
  _$FaultRecordModelCopyWithImpl(this._self, this._then);

  final FaultRecordModel _self;
  final $Res Function(FaultRecordModel) _then;

/// Create a copy of FaultRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? machineId = null,Object? faultType = null,Object? description = null,Object? status = null,Object? occurredAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,machineId: null == machineId ? _self.machineId : machineId // ignore: cast_nullable_to_non_nullable
as String,faultType: null == faultType ? _self.faultType : faultType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FaultStatus,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FaultRecordModel].
extension FaultRecordModelPatterns on FaultRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaultRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaultRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaultRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _FaultRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaultRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _FaultRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'fault_type')  String faultType,  String description,  FaultStatus status, @JsonKey(name: 'occurred_at')  String occurredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaultRecordModel() when $default != null:
return $default(_that.id,_that.machineId,_that.faultType,_that.description,_that.status,_that.occurredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'fault_type')  String faultType,  String description,  FaultStatus status, @JsonKey(name: 'occurred_at')  String occurredAt)  $default,) {final _that = this;
switch (_that) {
case _FaultRecordModel():
return $default(_that.id,_that.machineId,_that.faultType,_that.description,_that.status,_that.occurredAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'fault_type')  String faultType,  String description,  FaultStatus status, @JsonKey(name: 'occurred_at')  String occurredAt)?  $default,) {final _that = this;
switch (_that) {
case _FaultRecordModel() when $default != null:
return $default(_that.id,_that.machineId,_that.faultType,_that.description,_that.status,_that.occurredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaultRecordModel implements FaultRecordModel {
  const _FaultRecordModel({required this.id, @JsonKey(name: 'machine_id') required this.machineId, @JsonKey(name: 'fault_type') required this.faultType, required this.description, this.status = FaultStatus.pending, @JsonKey(name: 'occurred_at') required this.occurredAt});
  factory _FaultRecordModel.fromJson(Map<String, dynamic> json) => _$FaultRecordModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'machine_id') final  String machineId;
@override@JsonKey(name: 'fault_type') final  String faultType;
@override final  String description;
@override@JsonKey() final  FaultStatus status;
@override@JsonKey(name: 'occurred_at') final  String occurredAt;

/// Create a copy of FaultRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaultRecordModelCopyWith<_FaultRecordModel> get copyWith => __$FaultRecordModelCopyWithImpl<_FaultRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaultRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaultRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.machineId, machineId) || other.machineId == machineId)&&(identical(other.faultType, faultType) || other.faultType == faultType)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,machineId,faultType,description,status,occurredAt);

@override
String toString() {
  return 'FaultRecordModel(id: $id, machineId: $machineId, faultType: $faultType, description: $description, status: $status, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class _$FaultRecordModelCopyWith<$Res> implements $FaultRecordModelCopyWith<$Res> {
  factory _$FaultRecordModelCopyWith(_FaultRecordModel value, $Res Function(_FaultRecordModel) _then) = __$FaultRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'machine_id') String machineId,@JsonKey(name: 'fault_type') String faultType, String description, FaultStatus status,@JsonKey(name: 'occurred_at') String occurredAt
});




}
/// @nodoc
class __$FaultRecordModelCopyWithImpl<$Res>
    implements _$FaultRecordModelCopyWith<$Res> {
  __$FaultRecordModelCopyWithImpl(this._self, this._then);

  final _FaultRecordModel _self;
  final $Res Function(_FaultRecordModel) _then;

/// Create a copy of FaultRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? machineId = null,Object? faultType = null,Object? description = null,Object? status = null,Object? occurredAt = null,}) {
  return _then(_FaultRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,machineId: null == machineId ? _self.machineId : machineId // ignore: cast_nullable_to_non_nullable
as String,faultType: null == faultType ? _self.faultType : faultType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FaultStatus,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
