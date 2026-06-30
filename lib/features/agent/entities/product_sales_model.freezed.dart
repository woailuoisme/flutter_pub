// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_sales_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductSalesModel {

@JsonKey(name: 'product_name') String get productName; double get percentage; String get revenue;
/// Create a copy of ProductSalesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSalesModelCopyWith<ProductSalesModel> get copyWith => _$ProductSalesModelCopyWithImpl<ProductSalesModel>(this as ProductSalesModel, _$identity);

  /// Serializes this ProductSalesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSalesModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,percentage,revenue);

@override
String toString() {
  return 'ProductSalesModel(productName: $productName, percentage: $percentage, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $ProductSalesModelCopyWith<$Res>  {
  factory $ProductSalesModelCopyWith(ProductSalesModel value, $Res Function(ProductSalesModel) _then) = _$ProductSalesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_name') String productName, double percentage, String revenue
});




}
/// @nodoc
class _$ProductSalesModelCopyWithImpl<$Res>
    implements $ProductSalesModelCopyWith<$Res> {
  _$ProductSalesModelCopyWithImpl(this._self, this._then);

  final ProductSalesModel _self;
  final $Res Function(ProductSalesModel) _then;

/// Create a copy of ProductSalesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = null,Object? percentage = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSalesModel].
extension ProductSalesModelPatterns on ProductSalesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSalesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSalesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSalesModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductSalesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSalesModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSalesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  String productName,  double percentage,  String revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSalesModel() when $default != null:
return $default(_that.productName,_that.percentage,_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  String productName,  double percentage,  String revenue)  $default,) {final _that = this;
switch (_that) {
case _ProductSalesModel():
return $default(_that.productName,_that.percentage,_that.revenue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_name')  String productName,  double percentage,  String revenue)?  $default,) {final _that = this;
switch (_that) {
case _ProductSalesModel() when $default != null:
return $default(_that.productName,_that.percentage,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductSalesModel implements ProductSalesModel {
  const _ProductSalesModel({@JsonKey(name: 'product_name') required this.productName, required this.percentage, required this.revenue});
  factory _ProductSalesModel.fromJson(Map<String, dynamic> json) => _$ProductSalesModelFromJson(json);

@override@JsonKey(name: 'product_name') final  String productName;
@override final  double percentage;
@override final  String revenue;

/// Create a copy of ProductSalesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSalesModelCopyWith<_ProductSalesModel> get copyWith => __$ProductSalesModelCopyWithImpl<_ProductSalesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductSalesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSalesModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,percentage,revenue);

@override
String toString() {
  return 'ProductSalesModel(productName: $productName, percentage: $percentage, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$ProductSalesModelCopyWith<$Res> implements $ProductSalesModelCopyWith<$Res> {
  factory _$ProductSalesModelCopyWith(_ProductSalesModel value, $Res Function(_ProductSalesModel) _then) = __$ProductSalesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_name') String productName, double percentage, String revenue
});




}
/// @nodoc
class __$ProductSalesModelCopyWithImpl<$Res>
    implements _$ProductSalesModelCopyWith<$Res> {
  __$ProductSalesModelCopyWithImpl(this._self, this._then);

  final _ProductSalesModel _self;
  final $Res Function(_ProductSalesModel) _then;

/// Create a copy of ProductSalesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = null,Object? percentage = null,Object? revenue = null,}) {
  return _then(_ProductSalesModel(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
