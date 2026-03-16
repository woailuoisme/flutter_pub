// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AgentDashboardState {

 TimePeriod get selectedPeriod; AsyncValue<RevenueStatsModel>? get stats;
/// Create a copy of AgentDashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentDashboardStateCopyWith<AgentDashboardState> get copyWith => _$AgentDashboardStateCopyWithImpl<AgentDashboardState>(this as AgentDashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentDashboardState&&(identical(other.selectedPeriod, selectedPeriod) || other.selectedPeriod == selectedPeriod)&&(identical(other.stats, stats) || other.stats == stats));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPeriod,stats);

@override
String toString() {
  return 'AgentDashboardState(selectedPeriod: $selectedPeriod, stats: $stats)';
}


}

/// @nodoc
abstract mixin class $AgentDashboardStateCopyWith<$Res>  {
  factory $AgentDashboardStateCopyWith(AgentDashboardState value, $Res Function(AgentDashboardState) _then) = _$AgentDashboardStateCopyWithImpl;
@useResult
$Res call({
 TimePeriod selectedPeriod, AsyncValue<RevenueStatsModel>? stats
});




}
/// @nodoc
class _$AgentDashboardStateCopyWithImpl<$Res>
    implements $AgentDashboardStateCopyWith<$Res> {
  _$AgentDashboardStateCopyWithImpl(this._self, this._then);

  final AgentDashboardState _self;
  final $Res Function(AgentDashboardState) _then;

/// Create a copy of AgentDashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedPeriod = null,Object? stats = freezed,}) {
  return _then(_self.copyWith(
selectedPeriod: null == selectedPeriod ? _self.selectedPeriod : selectedPeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as AsyncValue<RevenueStatsModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentDashboardState].
extension AgentDashboardStatePatterns on AgentDashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentDashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentDashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentDashboardState value)  $default,){
final _that = this;
switch (_that) {
case _AgentDashboardState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentDashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _AgentDashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TimePeriod selectedPeriod,  AsyncValue<RevenueStatsModel>? stats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentDashboardState() when $default != null:
return $default(_that.selectedPeriod,_that.stats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TimePeriod selectedPeriod,  AsyncValue<RevenueStatsModel>? stats)  $default,) {final _that = this;
switch (_that) {
case _AgentDashboardState():
return $default(_that.selectedPeriod,_that.stats);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TimePeriod selectedPeriod,  AsyncValue<RevenueStatsModel>? stats)?  $default,) {final _that = this;
switch (_that) {
case _AgentDashboardState() when $default != null:
return $default(_that.selectedPeriod,_that.stats);case _:
  return null;

}
}

}

/// @nodoc


class _AgentDashboardState implements AgentDashboardState {
  const _AgentDashboardState({this.selectedPeriod = TimePeriod.month, this.stats});
  

@override@JsonKey() final  TimePeriod selectedPeriod;
@override final  AsyncValue<RevenueStatsModel>? stats;

/// Create a copy of AgentDashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentDashboardStateCopyWith<_AgentDashboardState> get copyWith => __$AgentDashboardStateCopyWithImpl<_AgentDashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentDashboardState&&(identical(other.selectedPeriod, selectedPeriod) || other.selectedPeriod == selectedPeriod)&&(identical(other.stats, stats) || other.stats == stats));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPeriod,stats);

@override
String toString() {
  return 'AgentDashboardState(selectedPeriod: $selectedPeriod, stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$AgentDashboardStateCopyWith<$Res> implements $AgentDashboardStateCopyWith<$Res> {
  factory _$AgentDashboardStateCopyWith(_AgentDashboardState value, $Res Function(_AgentDashboardState) _then) = __$AgentDashboardStateCopyWithImpl;
@override @useResult
$Res call({
 TimePeriod selectedPeriod, AsyncValue<RevenueStatsModel>? stats
});




}
/// @nodoc
class __$AgentDashboardStateCopyWithImpl<$Res>
    implements _$AgentDashboardStateCopyWith<$Res> {
  __$AgentDashboardStateCopyWithImpl(this._self, this._then);

  final _AgentDashboardState _self;
  final $Res Function(_AgentDashboardState) _then;

/// Create a copy of AgentDashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedPeriod = null,Object? stats = freezed,}) {
  return _then(_AgentDashboardState(
selectedPeriod: null == selectedPeriod ? _self.selectedPeriod : selectedPeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as AsyncValue<RevenueStatsModel>?,
  ));
}


}

// dart format on
