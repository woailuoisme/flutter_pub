// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeSeriesPoint {

 String get label;// X 轴标签，如 "01/15"、"1月"
 double get value;
/// Create a copy of TimeSeriesPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeSeriesPointCopyWith<TimeSeriesPoint> get copyWith => _$TimeSeriesPointCopyWithImpl<TimeSeriesPoint>(this as TimeSeriesPoint, _$identity);

  /// Serializes this TimeSeriesPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeSeriesPoint&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'TimeSeriesPoint(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $TimeSeriesPointCopyWith<$Res>  {
  factory $TimeSeriesPointCopyWith(TimeSeriesPoint value, $Res Function(TimeSeriesPoint) _then) = _$TimeSeriesPointCopyWithImpl;
@useResult
$Res call({
 String label, double value
});




}
/// @nodoc
class _$TimeSeriesPointCopyWithImpl<$Res>
    implements $TimeSeriesPointCopyWith<$Res> {
  _$TimeSeriesPointCopyWithImpl(this._self, this._then);

  final TimeSeriesPoint _self;
  final $Res Function(TimeSeriesPoint) _then;

/// Create a copy of TimeSeriesPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeSeriesPoint].
extension TimeSeriesPointPatterns on TimeSeriesPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeSeriesPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeSeriesPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeSeriesPoint value)  $default,){
final _that = this;
switch (_that) {
case _TimeSeriesPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeSeriesPoint value)?  $default,){
final _that = this;
switch (_that) {
case _TimeSeriesPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeSeriesPoint() when $default != null:
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double value)  $default,) {final _that = this;
switch (_that) {
case _TimeSeriesPoint():
return $default(_that.label,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double value)?  $default,) {final _that = this;
switch (_that) {
case _TimeSeriesPoint() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeSeriesPoint implements TimeSeriesPoint {
  const _TimeSeriesPoint({required this.label, required this.value});
  factory _TimeSeriesPoint.fromJson(Map<String, dynamic> json) => _$TimeSeriesPointFromJson(json);

@override final  String label;
// X 轴标签，如 "01/15"、"1月"
@override final  double value;

/// Create a copy of TimeSeriesPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeSeriesPointCopyWith<_TimeSeriesPoint> get copyWith => __$TimeSeriesPointCopyWithImpl<_TimeSeriesPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeSeriesPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeSeriesPoint&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'TimeSeriesPoint(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$TimeSeriesPointCopyWith<$Res> implements $TimeSeriesPointCopyWith<$Res> {
  factory _$TimeSeriesPointCopyWith(_TimeSeriesPoint value, $Res Function(_TimeSeriesPoint) _then) = __$TimeSeriesPointCopyWithImpl;
@override @useResult
$Res call({
 String label, double value
});




}
/// @nodoc
class __$TimeSeriesPointCopyWithImpl<$Res>
    implements _$TimeSeriesPointCopyWith<$Res> {
  __$TimeSeriesPointCopyWithImpl(this._self, this._then);

  final _TimeSeriesPoint _self;
  final $Res Function(_TimeSeriesPoint) _then;

/// Create a copy of TimeSeriesPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_TimeSeriesPoint(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$MachineRevenuePoint {

@JsonKey(name: 'machine_id') String get machineId;@JsonKey(name: 'machine_name') String get machineName; double get revenue;
/// Create a copy of MachineRevenuePoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MachineRevenuePointCopyWith<MachineRevenuePoint> get copyWith => _$MachineRevenuePointCopyWithImpl<MachineRevenuePoint>(this as MachineRevenuePoint, _$identity);

  /// Serializes this MachineRevenuePoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MachineRevenuePoint&&(identical(other.machineId, machineId) || other.machineId == machineId)&&(identical(other.machineName, machineName) || other.machineName == machineName)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,machineId,machineName,revenue);

@override
String toString() {
  return 'MachineRevenuePoint(machineId: $machineId, machineName: $machineName, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $MachineRevenuePointCopyWith<$Res>  {
  factory $MachineRevenuePointCopyWith(MachineRevenuePoint value, $Res Function(MachineRevenuePoint) _then) = _$MachineRevenuePointCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'machine_id') String machineId,@JsonKey(name: 'machine_name') String machineName, double revenue
});




}
/// @nodoc
class _$MachineRevenuePointCopyWithImpl<$Res>
    implements $MachineRevenuePointCopyWith<$Res> {
  _$MachineRevenuePointCopyWithImpl(this._self, this._then);

  final MachineRevenuePoint _self;
  final $Res Function(MachineRevenuePoint) _then;

/// Create a copy of MachineRevenuePoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? machineId = null,Object? machineName = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
machineId: null == machineId ? _self.machineId : machineId // ignore: cast_nullable_to_non_nullable
as String,machineName: null == machineName ? _self.machineName : machineName // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MachineRevenuePoint].
extension MachineRevenuePointPatterns on MachineRevenuePoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MachineRevenuePoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MachineRevenuePoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MachineRevenuePoint value)  $default,){
final _that = this;
switch (_that) {
case _MachineRevenuePoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MachineRevenuePoint value)?  $default,){
final _that = this;
switch (_that) {
case _MachineRevenuePoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'machine_name')  String machineName,  double revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MachineRevenuePoint() when $default != null:
return $default(_that.machineId,_that.machineName,_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'machine_name')  String machineName,  double revenue)  $default,) {final _that = this;
switch (_that) {
case _MachineRevenuePoint():
return $default(_that.machineId,_that.machineName,_that.revenue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'machine_id')  String machineId, @JsonKey(name: 'machine_name')  String machineName,  double revenue)?  $default,) {final _that = this;
switch (_that) {
case _MachineRevenuePoint() when $default != null:
return $default(_that.machineId,_that.machineName,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MachineRevenuePoint implements MachineRevenuePoint {
  const _MachineRevenuePoint({@JsonKey(name: 'machine_id') required this.machineId, @JsonKey(name: 'machine_name') required this.machineName, required this.revenue});
  factory _MachineRevenuePoint.fromJson(Map<String, dynamic> json) => _$MachineRevenuePointFromJson(json);

@override@JsonKey(name: 'machine_id') final  String machineId;
@override@JsonKey(name: 'machine_name') final  String machineName;
@override final  double revenue;

/// Create a copy of MachineRevenuePoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MachineRevenuePointCopyWith<_MachineRevenuePoint> get copyWith => __$MachineRevenuePointCopyWithImpl<_MachineRevenuePoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MachineRevenuePointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MachineRevenuePoint&&(identical(other.machineId, machineId) || other.machineId == machineId)&&(identical(other.machineName, machineName) || other.machineName == machineName)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,machineId,machineName,revenue);

@override
String toString() {
  return 'MachineRevenuePoint(machineId: $machineId, machineName: $machineName, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$MachineRevenuePointCopyWith<$Res> implements $MachineRevenuePointCopyWith<$Res> {
  factory _$MachineRevenuePointCopyWith(_MachineRevenuePoint value, $Res Function(_MachineRevenuePoint) _then) = __$MachineRevenuePointCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'machine_id') String machineId,@JsonKey(name: 'machine_name') String machineName, double revenue
});




}
/// @nodoc
class __$MachineRevenuePointCopyWithImpl<$Res>
    implements _$MachineRevenuePointCopyWith<$Res> {
  __$MachineRevenuePointCopyWithImpl(this._self, this._then);

  final _MachineRevenuePoint _self;
  final $Res Function(_MachineRevenuePoint) _then;

/// Create a copy of MachineRevenuePoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? machineId = null,Object? machineName = null,Object? revenue = null,}) {
  return _then(_MachineRevenuePoint(
machineId: null == machineId ? _self.machineId : machineId // ignore: cast_nullable_to_non_nullable
as String,machineName: null == machineName ? _self.machineName : machineName // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$RevenueStatsModel {

@JsonKey(name: 'total_revenue') String get totalRevenue;@JsonKey(name: 'total_orders') int get totalOrders;@JsonKey(name: 'daily_avg_revenue') String get dailyAvgRevenue;@JsonKey(name: 'growth_rate') double get growthRate;@JsonKey(name: 'revenue_trend') List<TimeSeriesPoint> get revenueTrend;@JsonKey(name: 'order_trend') List<TimeSeriesPoint> get orderTrend;@JsonKey(name: 'product_sales') List<ProductSalesModel> get productSales;@JsonKey(name: 'machine_revenues') List<MachineRevenuePoint> get machineRevenues;
/// Create a copy of RevenueStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RevenueStatsModelCopyWith<RevenueStatsModel> get copyWith => _$RevenueStatsModelCopyWithImpl<RevenueStatsModel>(this as RevenueStatsModel, _$identity);

  /// Serializes this RevenueStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RevenueStatsModel&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.dailyAvgRevenue, dailyAvgRevenue) || other.dailyAvgRevenue == dailyAvgRevenue)&&(identical(other.growthRate, growthRate) || other.growthRate == growthRate)&&const DeepCollectionEquality().equals(other.revenueTrend, revenueTrend)&&const DeepCollectionEquality().equals(other.orderTrend, orderTrend)&&const DeepCollectionEquality().equals(other.productSales, productSales)&&const DeepCollectionEquality().equals(other.machineRevenues, machineRevenues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,totalOrders,dailyAvgRevenue,growthRate,const DeepCollectionEquality().hash(revenueTrend),const DeepCollectionEquality().hash(orderTrend),const DeepCollectionEquality().hash(productSales),const DeepCollectionEquality().hash(machineRevenues));

@override
String toString() {
  return 'RevenueStatsModel(totalRevenue: $totalRevenue, totalOrders: $totalOrders, dailyAvgRevenue: $dailyAvgRevenue, growthRate: $growthRate, revenueTrend: $revenueTrend, orderTrend: $orderTrend, productSales: $productSales, machineRevenues: $machineRevenues)';
}


}

/// @nodoc
abstract mixin class $RevenueStatsModelCopyWith<$Res>  {
  factory $RevenueStatsModelCopyWith(RevenueStatsModel value, $Res Function(RevenueStatsModel) _then) = _$RevenueStatsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_revenue') String totalRevenue,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'daily_avg_revenue') String dailyAvgRevenue,@JsonKey(name: 'growth_rate') double growthRate,@JsonKey(name: 'revenue_trend') List<TimeSeriesPoint> revenueTrend,@JsonKey(name: 'order_trend') List<TimeSeriesPoint> orderTrend,@JsonKey(name: 'product_sales') List<ProductSalesModel> productSales,@JsonKey(name: 'machine_revenues') List<MachineRevenuePoint> machineRevenues
});




}
/// @nodoc
class _$RevenueStatsModelCopyWithImpl<$Res>
    implements $RevenueStatsModelCopyWith<$Res> {
  _$RevenueStatsModelCopyWithImpl(this._self, this._then);

  final RevenueStatsModel _self;
  final $Res Function(RevenueStatsModel) _then;

/// Create a copy of RevenueStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRevenue = null,Object? totalOrders = null,Object? dailyAvgRevenue = null,Object? growthRate = null,Object? revenueTrend = null,Object? orderTrend = null,Object? productSales = null,Object? machineRevenues = null,}) {
  return _then(_self.copyWith(
totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as String,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,dailyAvgRevenue: null == dailyAvgRevenue ? _self.dailyAvgRevenue : dailyAvgRevenue // ignore: cast_nullable_to_non_nullable
as String,growthRate: null == growthRate ? _self.growthRate : growthRate // ignore: cast_nullable_to_non_nullable
as double,revenueTrend: null == revenueTrend ? _self.revenueTrend : revenueTrend // ignore: cast_nullable_to_non_nullable
as List<TimeSeriesPoint>,orderTrend: null == orderTrend ? _self.orderTrend : orderTrend // ignore: cast_nullable_to_non_nullable
as List<TimeSeriesPoint>,productSales: null == productSales ? _self.productSales : productSales // ignore: cast_nullable_to_non_nullable
as List<ProductSalesModel>,machineRevenues: null == machineRevenues ? _self.machineRevenues : machineRevenues // ignore: cast_nullable_to_non_nullable
as List<MachineRevenuePoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [RevenueStatsModel].
extension RevenueStatsModelPatterns on RevenueStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RevenueStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RevenueStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RevenueStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _RevenueStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RevenueStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _RevenueStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_revenue')  String totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'daily_avg_revenue')  String dailyAvgRevenue, @JsonKey(name: 'growth_rate')  double growthRate, @JsonKey(name: 'revenue_trend')  List<TimeSeriesPoint> revenueTrend, @JsonKey(name: 'order_trend')  List<TimeSeriesPoint> orderTrend, @JsonKey(name: 'product_sales')  List<ProductSalesModel> productSales, @JsonKey(name: 'machine_revenues')  List<MachineRevenuePoint> machineRevenues)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RevenueStatsModel() when $default != null:
return $default(_that.totalRevenue,_that.totalOrders,_that.dailyAvgRevenue,_that.growthRate,_that.revenueTrend,_that.orderTrend,_that.productSales,_that.machineRevenues);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_revenue')  String totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'daily_avg_revenue')  String dailyAvgRevenue, @JsonKey(name: 'growth_rate')  double growthRate, @JsonKey(name: 'revenue_trend')  List<TimeSeriesPoint> revenueTrend, @JsonKey(name: 'order_trend')  List<TimeSeriesPoint> orderTrend, @JsonKey(name: 'product_sales')  List<ProductSalesModel> productSales, @JsonKey(name: 'machine_revenues')  List<MachineRevenuePoint> machineRevenues)  $default,) {final _that = this;
switch (_that) {
case _RevenueStatsModel():
return $default(_that.totalRevenue,_that.totalOrders,_that.dailyAvgRevenue,_that.growthRate,_that.revenueTrend,_that.orderTrend,_that.productSales,_that.machineRevenues);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_revenue')  String totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'daily_avg_revenue')  String dailyAvgRevenue, @JsonKey(name: 'growth_rate')  double growthRate, @JsonKey(name: 'revenue_trend')  List<TimeSeriesPoint> revenueTrend, @JsonKey(name: 'order_trend')  List<TimeSeriesPoint> orderTrend, @JsonKey(name: 'product_sales')  List<ProductSalesModel> productSales, @JsonKey(name: 'machine_revenues')  List<MachineRevenuePoint> machineRevenues)?  $default,) {final _that = this;
switch (_that) {
case _RevenueStatsModel() when $default != null:
return $default(_that.totalRevenue,_that.totalOrders,_that.dailyAvgRevenue,_that.growthRate,_that.revenueTrend,_that.orderTrend,_that.productSales,_that.machineRevenues);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RevenueStatsModel implements RevenueStatsModel {
  const _RevenueStatsModel({@JsonKey(name: 'total_revenue') this.totalRevenue = '0.00', @JsonKey(name: 'total_orders') this.totalOrders = 0, @JsonKey(name: 'daily_avg_revenue') this.dailyAvgRevenue = '0.00', @JsonKey(name: 'growth_rate') this.growthRate = 0.0, @JsonKey(name: 'revenue_trend') final  List<TimeSeriesPoint> revenueTrend = const [], @JsonKey(name: 'order_trend') final  List<TimeSeriesPoint> orderTrend = const [], @JsonKey(name: 'product_sales') final  List<ProductSalesModel> productSales = const [], @JsonKey(name: 'machine_revenues') final  List<MachineRevenuePoint> machineRevenues = const []}): _revenueTrend = revenueTrend,_orderTrend = orderTrend,_productSales = productSales,_machineRevenues = machineRevenues;
  factory _RevenueStatsModel.fromJson(Map<String, dynamic> json) => _$RevenueStatsModelFromJson(json);

@override@JsonKey(name: 'total_revenue') final  String totalRevenue;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override@JsonKey(name: 'daily_avg_revenue') final  String dailyAvgRevenue;
@override@JsonKey(name: 'growth_rate') final  double growthRate;
 final  List<TimeSeriesPoint> _revenueTrend;
@override@JsonKey(name: 'revenue_trend') List<TimeSeriesPoint> get revenueTrend {
  if (_revenueTrend is EqualUnmodifiableListView) return _revenueTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenueTrend);
}

 final  List<TimeSeriesPoint> _orderTrend;
@override@JsonKey(name: 'order_trend') List<TimeSeriesPoint> get orderTrend {
  if (_orderTrend is EqualUnmodifiableListView) return _orderTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderTrend);
}

 final  List<ProductSalesModel> _productSales;
@override@JsonKey(name: 'product_sales') List<ProductSalesModel> get productSales {
  if (_productSales is EqualUnmodifiableListView) return _productSales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productSales);
}

 final  List<MachineRevenuePoint> _machineRevenues;
@override@JsonKey(name: 'machine_revenues') List<MachineRevenuePoint> get machineRevenues {
  if (_machineRevenues is EqualUnmodifiableListView) return _machineRevenues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_machineRevenues);
}


/// Create a copy of RevenueStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RevenueStatsModelCopyWith<_RevenueStatsModel> get copyWith => __$RevenueStatsModelCopyWithImpl<_RevenueStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RevenueStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RevenueStatsModel&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.dailyAvgRevenue, dailyAvgRevenue) || other.dailyAvgRevenue == dailyAvgRevenue)&&(identical(other.growthRate, growthRate) || other.growthRate == growthRate)&&const DeepCollectionEquality().equals(other._revenueTrend, _revenueTrend)&&const DeepCollectionEquality().equals(other._orderTrend, _orderTrend)&&const DeepCollectionEquality().equals(other._productSales, _productSales)&&const DeepCollectionEquality().equals(other._machineRevenues, _machineRevenues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,totalOrders,dailyAvgRevenue,growthRate,const DeepCollectionEquality().hash(_revenueTrend),const DeepCollectionEquality().hash(_orderTrend),const DeepCollectionEquality().hash(_productSales),const DeepCollectionEquality().hash(_machineRevenues));

@override
String toString() {
  return 'RevenueStatsModel(totalRevenue: $totalRevenue, totalOrders: $totalOrders, dailyAvgRevenue: $dailyAvgRevenue, growthRate: $growthRate, revenueTrend: $revenueTrend, orderTrend: $orderTrend, productSales: $productSales, machineRevenues: $machineRevenues)';
}


}

/// @nodoc
abstract mixin class _$RevenueStatsModelCopyWith<$Res> implements $RevenueStatsModelCopyWith<$Res> {
  factory _$RevenueStatsModelCopyWith(_RevenueStatsModel value, $Res Function(_RevenueStatsModel) _then) = __$RevenueStatsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_revenue') String totalRevenue,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'daily_avg_revenue') String dailyAvgRevenue,@JsonKey(name: 'growth_rate') double growthRate,@JsonKey(name: 'revenue_trend') List<TimeSeriesPoint> revenueTrend,@JsonKey(name: 'order_trend') List<TimeSeriesPoint> orderTrend,@JsonKey(name: 'product_sales') List<ProductSalesModel> productSales,@JsonKey(name: 'machine_revenues') List<MachineRevenuePoint> machineRevenues
});




}
/// @nodoc
class __$RevenueStatsModelCopyWithImpl<$Res>
    implements _$RevenueStatsModelCopyWith<$Res> {
  __$RevenueStatsModelCopyWithImpl(this._self, this._then);

  final _RevenueStatsModel _self;
  final $Res Function(_RevenueStatsModel) _then;

/// Create a copy of RevenueStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRevenue = null,Object? totalOrders = null,Object? dailyAvgRevenue = null,Object? growthRate = null,Object? revenueTrend = null,Object? orderTrend = null,Object? productSales = null,Object? machineRevenues = null,}) {
  return _then(_RevenueStatsModel(
totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as String,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,dailyAvgRevenue: null == dailyAvgRevenue ? _self.dailyAvgRevenue : dailyAvgRevenue // ignore: cast_nullable_to_non_nullable
as String,growthRate: null == growthRate ? _self.growthRate : growthRate // ignore: cast_nullable_to_non_nullable
as double,revenueTrend: null == revenueTrend ? _self._revenueTrend : revenueTrend // ignore: cast_nullable_to_non_nullable
as List<TimeSeriesPoint>,orderTrend: null == orderTrend ? _self._orderTrend : orderTrend // ignore: cast_nullable_to_non_nullable
as List<TimeSeriesPoint>,productSales: null == productSales ? _self._productSales : productSales // ignore: cast_nullable_to_non_nullable
as List<ProductSalesModel>,machineRevenues: null == machineRevenues ? _self._machineRevenues : machineRevenues // ignore: cast_nullable_to_non_nullable
as List<MachineRevenuePoint>,
  ));
}


}

// dart format on
