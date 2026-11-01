// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stocker_machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockerMachineModel {

 String get id; String get name; String get location;@JsonKey(name: 'total_slots') int get totalSlots;@JsonKey(name: 'low_stock_slots') int get lowStockSlots;@JsonKey(name: 'empty_slots') int get emptySlots;
/// Create a copy of StockerMachineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockerMachineModelCopyWith<StockerMachineModel> get copyWith => _$StockerMachineModelCopyWithImpl<StockerMachineModel>(this as StockerMachineModel, _$identity);

  /// Serializes this StockerMachineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockerMachineModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockerMachineModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.totalSlots, _this.totalSlots) || other.totalSlots == _this.totalSlots)&&(identical(other.lowStockSlots, _this.lowStockSlots) || other.lowStockSlots == _this.lowStockSlots)&&(identical(other.emptySlots, _this.emptySlots) || other.emptySlots == _this.emptySlots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockerMachineModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.location,_this.totalSlots,_this.lowStockSlots,_this.emptySlots);
}

@override
String toString() {
  final _this = this as StockerMachineModel;
  return 'StockerMachineModel(id: ${_this.id}, name: ${_this.name}, location: ${_this.location}, totalSlots: ${_this.totalSlots}, lowStockSlots: ${_this.lowStockSlots}, emptySlots: ${_this.emptySlots})';
}


}

/// @nodoc
abstract mixin class $StockerMachineModelCopyWith<$Res>  {
  factory $StockerMachineModelCopyWith(StockerMachineModel value, $Res Function(StockerMachineModel) _then) = _$StockerMachineModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String location,@JsonKey(name: 'total_slots') int totalSlots,@JsonKey(name: 'low_stock_slots') int lowStockSlots,@JsonKey(name: 'empty_slots') int emptySlots
});




}
/// @nodoc
class _$StockerMachineModelCopyWithImpl<$Res>
    implements $StockerMachineModelCopyWith<$Res> {
  _$StockerMachineModelCopyWithImpl(this._self, this._then);

  final StockerMachineModel _self;
  final $Res Function(StockerMachineModel) _then;

/// Create a copy of StockerMachineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? totalSlots = null,Object? lowStockSlots = null,Object? emptySlots = null,}) {
  return _then(StockerMachineModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,totalSlots: null == totalSlots ? _self.totalSlots : totalSlots // ignore: cast_nullable_to_non_nullable
as int,lowStockSlots: null == lowStockSlots ? _self.lowStockSlots : lowStockSlots // ignore: cast_nullable_to_non_nullable
as int,emptySlots: null == emptySlots ? _self.emptySlots : emptySlots // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StockerMachineModel].
extension StockerMachineModelPatterns on StockerMachineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockerMachineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockerMachineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockerMachineModel value)  $default,){
final _that = this;
switch (_that) {
case _StockerMachineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockerMachineModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockerMachineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String location, @JsonKey(name: 'total_slots')  int totalSlots, @JsonKey(name: 'low_stock_slots')  int lowStockSlots, @JsonKey(name: 'empty_slots')  int emptySlots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockerMachineModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.totalSlots,_that.lowStockSlots,_that.emptySlots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String location, @JsonKey(name: 'total_slots')  int totalSlots, @JsonKey(name: 'low_stock_slots')  int lowStockSlots, @JsonKey(name: 'empty_slots')  int emptySlots)  $default,) {final _that = this;
switch (_that) {
case _StockerMachineModel():
return $default(_that.id,_that.name,_that.location,_that.totalSlots,_that.lowStockSlots,_that.emptySlots);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String location, @JsonKey(name: 'total_slots')  int totalSlots, @JsonKey(name: 'low_stock_slots')  int lowStockSlots, @JsonKey(name: 'empty_slots')  int emptySlots)?  $default,) {final _that = this;
switch (_that) {
case _StockerMachineModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.totalSlots,_that.lowStockSlots,_that.emptySlots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockerMachineModel implements StockerMachineModel {
  const _StockerMachineModel({required this.id, required this.name, required this.location, @JsonKey(name: 'total_slots') this.totalSlots = 0, @JsonKey(name: 'low_stock_slots') this.lowStockSlots = 0, @JsonKey(name: 'empty_slots') this.emptySlots = 0});
  factory _StockerMachineModel.fromJson(Map<String, dynamic> json) => _$StockerMachineModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String location;
@override@JsonKey(name: 'total_slots') final  int totalSlots;
@override@JsonKey(name: 'low_stock_slots') final  int lowStockSlots;
@override@JsonKey(name: 'empty_slots') final  int emptySlots;

/// Create a copy of StockerMachineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockerMachineModelCopyWith<_StockerMachineModel> get copyWith => __$StockerMachineModelCopyWithImpl<_StockerMachineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockerMachineModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockerMachineModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.totalSlots, totalSlots) || other.totalSlots == totalSlots)&&(identical(other.lowStockSlots, lowStockSlots) || other.lowStockSlots == lowStockSlots)&&(identical(other.emptySlots, emptySlots) || other.emptySlots == emptySlots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,location,totalSlots,lowStockSlots,emptySlots);
}

@override
String toString() {
    return 'StockerMachineModel(id: $id, name: $name, location: $location, totalSlots: $totalSlots, lowStockSlots: $lowStockSlots, emptySlots: $emptySlots)';
}


}

/// @nodoc
abstract mixin class _$StockerMachineModelCopyWith<$Res> implements $StockerMachineModelCopyWith<$Res> {
  factory _$StockerMachineModelCopyWith(_StockerMachineModel value, $Res Function(_StockerMachineModel) _then) = __$StockerMachineModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String location,@JsonKey(name: 'total_slots') int totalSlots,@JsonKey(name: 'low_stock_slots') int lowStockSlots,@JsonKey(name: 'empty_slots') int emptySlots
});




}
/// @nodoc
class __$StockerMachineModelCopyWithImpl<$Res>
    implements _$StockerMachineModelCopyWith<$Res> {
  __$StockerMachineModelCopyWithImpl(this._self, this._then);

  final _StockerMachineModel _self;
  final $Res Function(_StockerMachineModel) _then;

/// Create a copy of StockerMachineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? totalSlots = null,Object? lowStockSlots = null,Object? emptySlots = null,}) {
  return _then(_StockerMachineModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,totalSlots: null == totalSlots ? _self.totalSlots : totalSlots // ignore: cast_nullable_to_non_nullable
as int,lowStockSlots: null == lowStockSlots ? _self.lowStockSlots : lowStockSlots // ignore: cast_nullable_to_non_nullable
as int,emptySlots: null == emptySlots ? _self.emptySlots : emptySlots // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
