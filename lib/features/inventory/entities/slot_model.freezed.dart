// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SlotModel {

 String get id;@JsonKey(name: 'machine_id') String get machineId;@JsonKey(name: 'slot_number') String get slotNumber;@JsonKey(name: 'product_name') String get productName; int get quantity;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlotModelCopyWith<SlotModel> get copyWith => _$SlotModelCopyWithImpl<SlotModel>(this as SlotModel, _$identity);

  /// Serializes this SlotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SlotModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlotModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.machineId, _this.machineId) || other.machineId == _this.machineId)&&(identical(other.slotNumber, _this.slotNumber) || other.slotNumber == _this.slotNumber)&&(identical(other.productName, _this.productName) || other.productName == _this.productName)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SlotModel;
  return Object.hash(runtimeType,_this.id,_this.machineId,_this.slotNumber,_this.productName,_this.quantity,_this.updatedAt);
}

@override
String toString() {
  final _this = this as SlotModel;
  return 'SlotModel(id: ${_this.id}, machineId: ${_this.machineId}, slotNumber: ${_this.slotNumber}, productName: ${_this.productName}, quantity: ${_this.quantity}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $SlotModelCopyWith<$Res>  {
  factory $SlotModelCopyWith(SlotModel value, $Res Function(SlotModel) _then) = _$SlotModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'machine_id') String machineId,@JsonKey(name: 'slot_number') String slotNumber,@JsonKey(name: 'product_name') String productName, int quantity,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$SlotModelCopyWithImpl<$Res>
    implements $SlotModelCopyWith<$Res> {
  _$SlotModelCopyWithImpl(this._self, this._then);

  final SlotModel _self;
  final $Res Function(SlotModel) _then;

/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? machineId = null,Object? slotNumber = null,Object? productName = null,Object? quantity = null,Object? updatedAt = null,}) {
  return _then(SlotModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,machineId: null == machineId ? _self.machineId : machineId // ignore: cast_nullable_to_non_nullable
as String,slotNumber: null == slotNumber ? _self.slotNumber : slotNumber // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SlotModel].
extension SlotModelPatterns on SlotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlotModel value)  $default,){
final _that = this;
switch (_that) {
case _SlotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlotModel value)?  $default,){
final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'slot_number')  String slotNumber, @JsonKey(name: 'product_name')  String productName,  int quantity, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
return $default(_that.id,_that.machineId,_that.slotNumber,_that.productName,_that.quantity,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'slot_number')  String slotNumber, @JsonKey(name: 'product_name')  String productName,  int quantity, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SlotModel():
return $default(_that.id,_that.machineId,_that.slotNumber,_that.productName,_that.quantity,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'slot_number')  String slotNumber, @JsonKey(name: 'product_name')  String productName,  int quantity, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
return $default(_that.id,_that.machineId,_that.slotNumber,_that.productName,_that.quantity,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SlotModel implements SlotModel {
  const _SlotModel({required this.id, @JsonKey(name: 'machine_id') required this.machineId, @JsonKey(name: 'slot_number') required this.slotNumber, @JsonKey(name: 'product_name') required this.productName, this.quantity = 0, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _SlotModel.fromJson(Map<String, dynamic> json) => _$SlotModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'machine_id') final  String machineId;
@override@JsonKey(name: 'slot_number') final  String slotNumber;
@override@JsonKey(name: 'product_name') final  String productName;
@override@JsonKey() final  int quantity;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlotModelCopyWith<_SlotModel> get copyWith => __$SlotModelCopyWithImpl<_SlotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SlotModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.machineId, machineId) || other.machineId == machineId)&&(identical(other.slotNumber, slotNumber) || other.slotNumber == slotNumber)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,machineId,slotNumber,productName,quantity,updatedAt);
}

@override
String toString() {
    return 'SlotModel(id: $id, machineId: $machineId, slotNumber: $slotNumber, productName: $productName, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SlotModelCopyWith<$Res> implements $SlotModelCopyWith<$Res> {
  factory _$SlotModelCopyWith(_SlotModel value, $Res Function(_SlotModel) _then) = __$SlotModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'machine_id') String machineId,@JsonKey(name: 'slot_number') String slotNumber,@JsonKey(name: 'product_name') String productName, int quantity,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$SlotModelCopyWithImpl<$Res>
    implements _$SlotModelCopyWith<$Res> {
  __$SlotModelCopyWithImpl(this._self, this._then);

  final _SlotModel _self;
  final $Res Function(_SlotModel) _then;

/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? machineId = null,Object? slotNumber = null,Object? productName = null,Object? quantity = null,Object? updatedAt = null,}) {
  return _then(_SlotModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,machineId: null == machineId ? _self.machineId : machineId // ignore: cast_nullable_to_non_nullable
as String,slotNumber: null == slotNumber ? _self.slotNumber : slotNumber // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
