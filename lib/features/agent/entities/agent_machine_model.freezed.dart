// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_machine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentMachineModel {

 String get id; String get name; String get location;@JsonKey(name: 'total_orders') int get totalOrders;@JsonKey(name: 'total_revenue') String get totalRevenue;@JsonKey(name: 'image_url') String? get imageUrl; double? get latitude; double? get longitude; String? get sn; String? get status; String? get description;
/// Create a copy of AgentMachineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentMachineModelCopyWith<AgentMachineModel> get copyWith => _$AgentMachineModelCopyWithImpl<AgentMachineModel>(this as AgentMachineModel, _$identity);

  /// Serializes this AgentMachineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentMachineModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.sn, sn) || other.sn == sn)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,totalOrders,totalRevenue,imageUrl,latitude,longitude,sn,status,description);

@override
String toString() {
  return 'AgentMachineModel(id: $id, name: $name, location: $location, totalOrders: $totalOrders, totalRevenue: $totalRevenue, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, sn: $sn, status: $status, description: $description)';
}


}

/// @nodoc
abstract mixin class $AgentMachineModelCopyWith<$Res>  {
  factory $AgentMachineModelCopyWith(AgentMachineModel value, $Res Function(AgentMachineModel) _then) = _$AgentMachineModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String location,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'total_revenue') String totalRevenue,@JsonKey(name: 'image_url') String? imageUrl, double? latitude, double? longitude, String? sn, String? status, String? description
});




}
/// @nodoc
class _$AgentMachineModelCopyWithImpl<$Res>
    implements $AgentMachineModelCopyWith<$Res> {
  _$AgentMachineModelCopyWithImpl(this._self, this._then);

  final AgentMachineModel _self;
  final $Res Function(AgentMachineModel) _then;

/// Create a copy of AgentMachineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? totalOrders = null,Object? totalRevenue = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? sn = freezed,Object? status = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,sn: freezed == sn ? _self.sn : sn // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentMachineModel].
extension AgentMachineModelPatterns on AgentMachineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentMachineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentMachineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentMachineModel value)  $default,){
final _that = this;
switch (_that) {
case _AgentMachineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentMachineModel value)?  $default,){
final _that = this;
switch (_that) {
case _AgentMachineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String location, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'total_revenue')  String totalRevenue, @JsonKey(name: 'image_url')  String? imageUrl,  double? latitude,  double? longitude,  String? sn,  String? status,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentMachineModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.totalOrders,_that.totalRevenue,_that.imageUrl,_that.latitude,_that.longitude,_that.sn,_that.status,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String location, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'total_revenue')  String totalRevenue, @JsonKey(name: 'image_url')  String? imageUrl,  double? latitude,  double? longitude,  String? sn,  String? status,  String? description)  $default,) {final _that = this;
switch (_that) {
case _AgentMachineModel():
return $default(_that.id,_that.name,_that.location,_that.totalOrders,_that.totalRevenue,_that.imageUrl,_that.latitude,_that.longitude,_that.sn,_that.status,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String location, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'total_revenue')  String totalRevenue, @JsonKey(name: 'image_url')  String? imageUrl,  double? latitude,  double? longitude,  String? sn,  String? status,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _AgentMachineModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.totalOrders,_that.totalRevenue,_that.imageUrl,_that.latitude,_that.longitude,_that.sn,_that.status,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentMachineModel implements AgentMachineModel {
  const _AgentMachineModel({required this.id, required this.name, required this.location, @JsonKey(name: 'total_orders') this.totalOrders = 0, @JsonKey(name: 'total_revenue') this.totalRevenue = '0.00', @JsonKey(name: 'image_url') this.imageUrl, this.latitude, this.longitude, this.sn, this.status, this.description});
  factory _AgentMachineModel.fromJson(Map<String, dynamic> json) => _$AgentMachineModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String location;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override@JsonKey(name: 'total_revenue') final  String totalRevenue;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? sn;
@override final  String? status;
@override final  String? description;

/// Create a copy of AgentMachineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentMachineModelCopyWith<_AgentMachineModel> get copyWith => __$AgentMachineModelCopyWithImpl<_AgentMachineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentMachineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentMachineModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.sn, sn) || other.sn == sn)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,totalOrders,totalRevenue,imageUrl,latitude,longitude,sn,status,description);

@override
String toString() {
  return 'AgentMachineModel(id: $id, name: $name, location: $location, totalOrders: $totalOrders, totalRevenue: $totalRevenue, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, sn: $sn, status: $status, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AgentMachineModelCopyWith<$Res> implements $AgentMachineModelCopyWith<$Res> {
  factory _$AgentMachineModelCopyWith(_AgentMachineModel value, $Res Function(_AgentMachineModel) _then) = __$AgentMachineModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String location,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'total_revenue') String totalRevenue,@JsonKey(name: 'image_url') String? imageUrl, double? latitude, double? longitude, String? sn, String? status, String? description
});




}
/// @nodoc
class __$AgentMachineModelCopyWithImpl<$Res>
    implements _$AgentMachineModelCopyWith<$Res> {
  __$AgentMachineModelCopyWithImpl(this._self, this._then);

  final _AgentMachineModel _self;
  final $Res Function(_AgentMachineModel) _then;

/// Create a copy of AgentMachineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? totalOrders = null,Object? totalRevenue = null,Object? imageUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? sn = freezed,Object? status = freezed,Object? description = freezed,}) {
  return _then(_AgentMachineModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,sn: freezed == sn ? _self.sn : sn // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
