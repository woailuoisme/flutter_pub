// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SlotUpdateState {

 SlotUpdateStatus get status; String? get errorMessage;
/// Create a copy of SlotUpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlotUpdateStateCopyWith<SlotUpdateState> get copyWith => _$SlotUpdateStateCopyWithImpl<SlotUpdateState>(this as SlotUpdateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlotUpdateState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage);

@override
String toString() {
  return 'SlotUpdateState(status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SlotUpdateStateCopyWith<$Res>  {
  factory $SlotUpdateStateCopyWith(SlotUpdateState value, $Res Function(SlotUpdateState) _then) = _$SlotUpdateStateCopyWithImpl;
@useResult
$Res call({
 SlotUpdateStatus status, String? errorMessage
});




}
/// @nodoc
class _$SlotUpdateStateCopyWithImpl<$Res>
    implements $SlotUpdateStateCopyWith<$Res> {
  _$SlotUpdateStateCopyWithImpl(this._self, this._then);

  final SlotUpdateState _self;
  final $Res Function(SlotUpdateState) _then;

/// Create a copy of SlotUpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SlotUpdateStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SlotUpdateState].
extension SlotUpdateStatePatterns on SlotUpdateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlotUpdateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlotUpdateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlotUpdateState value)  $default,){
final _that = this;
switch (_that) {
case _SlotUpdateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlotUpdateState value)?  $default,){
final _that = this;
switch (_that) {
case _SlotUpdateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SlotUpdateStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlotUpdateState() when $default != null:
return $default(_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SlotUpdateStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SlotUpdateState():
return $default(_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SlotUpdateStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SlotUpdateState() when $default != null:
return $default(_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SlotUpdateState implements SlotUpdateState {
  const _SlotUpdateState({this.status = SlotUpdateStatus.initial, this.errorMessage});
  

@override@JsonKey() final  SlotUpdateStatus status;
@override final  String? errorMessage;

/// Create a copy of SlotUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlotUpdateStateCopyWith<_SlotUpdateState> get copyWith => __$SlotUpdateStateCopyWithImpl<_SlotUpdateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlotUpdateState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage);

@override
String toString() {
  return 'SlotUpdateState(status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SlotUpdateStateCopyWith<$Res> implements $SlotUpdateStateCopyWith<$Res> {
  factory _$SlotUpdateStateCopyWith(_SlotUpdateState value, $Res Function(_SlotUpdateState) _then) = __$SlotUpdateStateCopyWithImpl;
@override @useResult
$Res call({
 SlotUpdateStatus status, String? errorMessage
});




}
/// @nodoc
class __$SlotUpdateStateCopyWithImpl<$Res>
    implements _$SlotUpdateStateCopyWith<$Res> {
  __$SlotUpdateStateCopyWithImpl(this._self, this._then);

  final _SlotUpdateState _self;
  final $Res Function(_SlotUpdateState) _then;

/// Create a copy of SlotUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_SlotUpdateState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SlotUpdateStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
