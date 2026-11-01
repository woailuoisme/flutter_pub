// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRole {

/// 角色名称
 UserRoleType get name;/// 角色描述
 String? get summary;
/// Create a copy of UserRole
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRoleCopyWith<UserRole> get copyWith => _$UserRoleCopyWithImpl<UserRole>(this as UserRole, _$identity);

  /// Serializes this UserRole to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserRole;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRole&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.summary, _this.summary) || other.summary == _this.summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserRole;
  return Object.hash(runtimeType,_this.name,_this.summary);
}

@override
String toString() {
  final _this = this as UserRole;
  return 'UserRole(name: ${_this.name}, summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $UserRoleCopyWith<$Res>  {
  factory $UserRoleCopyWith(UserRole value, $Res Function(UserRole) _then) = _$UserRoleCopyWithImpl;
@useResult
$Res call({
 UserRoleType name, String? summary
});




}
/// @nodoc
class _$UserRoleCopyWithImpl<$Res>
    implements $UserRoleCopyWith<$Res> {
  _$UserRoleCopyWithImpl(this._self, this._then);

  final UserRole _self;
  final $Res Function(UserRole) _then;

/// Create a copy of UserRole
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? summary = freezed,}) {
  return _then(UserRole(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as UserRoleType,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRole].
extension UserRolePatterns on UserRole {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRole value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRole() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRole value)  $default,){
final _that = this;
switch (_that) {
case _UserRole():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRole value)?  $default,){
final _that = this;
switch (_that) {
case _UserRole() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserRoleType name,  String? summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRole() when $default != null:
return $default(_that.name,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserRoleType name,  String? summary)  $default,) {final _that = this;
switch (_that) {
case _UserRole():
return $default(_that.name,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserRoleType name,  String? summary)?  $default,) {final _that = this;
switch (_that) {
case _UserRole() when $default != null:
return $default(_that.name,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRole implements UserRole {
  const _UserRole({required this.name, this.summary});
  factory _UserRole.fromJson(Map<String, dynamic> json) => _$UserRoleFromJson(json);

/// 角色名称
@override final  UserRoleType name;
/// 角色描述
@override final  String? summary;

/// Create a copy of UserRole
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRoleCopyWith<_UserRole> get copyWith => __$UserRoleCopyWithImpl<_UserRole>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRoleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRole&&(identical(other.name, name) || other.name == name)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,summary);
}

@override
String toString() {
    return 'UserRole(name: $name, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$UserRoleCopyWith<$Res> implements $UserRoleCopyWith<$Res> {
  factory _$UserRoleCopyWith(_UserRole value, $Res Function(_UserRole) _then) = __$UserRoleCopyWithImpl;
@override @useResult
$Res call({
 UserRoleType name, String? summary
});




}
/// @nodoc
class __$UserRoleCopyWithImpl<$Res>
    implements _$UserRoleCopyWith<$Res> {
  __$UserRoleCopyWithImpl(this._self, this._then);

  final _UserRole _self;
  final $Res Function(_UserRole) _then;

/// Create a copy of UserRole
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? summary = freezed,}) {
  return _then(_UserRole(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as UserRoleType,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LoginResponseData {

/// 认证 Token
 String get token;/// Token 类型 (例如: bearer)
@JsonKey(name: 'token_type') String? get tokenType;/// 管理员名称
 String? get name;/// 头像地址
 String? get avatar;/// 角色列表
 List<UserRole> get roles;/// 过期时长（字符串形式，如 "20160 minutes"）
@JsonKey(name: 'expires_in') String? get expiresIn;/// 创建时间 (注意后端返回的是 create_at 而不是 created_at)
@JsonKey(name: 'create_at') String? get createAt;/// 过期时间
@JsonKey(name: 'expires_at') String? get expiresAt;
/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseDataCopyWith<LoginResponseData> get copyWith => _$LoginResponseDataCopyWithImpl<LoginResponseData>(this as LoginResponseData, _$identity);

  /// Serializes this LoginResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LoginResponseData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseData&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.tokenType, _this.tokenType) || other.tokenType == _this.tokenType)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&const DeepCollectionEquality().equals(other.roles, _this.roles)&&(identical(other.expiresIn, _this.expiresIn) || other.expiresIn == _this.expiresIn)&&(identical(other.createAt, _this.createAt) || other.createAt == _this.createAt)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LoginResponseData;
  return Object.hash(runtimeType,_this.token,_this.tokenType,_this.name,_this.avatar,const DeepCollectionEquality().hash(_this.roles),_this.expiresIn,_this.createAt,_this.expiresAt);
}

@override
String toString() {
  final _this = this as LoginResponseData;
  return 'LoginResponseData(token: ${_this.token}, tokenType: ${_this.tokenType}, name: ${_this.name}, avatar: ${_this.avatar}, roles: ${_this.roles}, expiresIn: ${_this.expiresIn}, createAt: ${_this.createAt}, expiresAt: ${_this.expiresAt})';
}


}

/// @nodoc
abstract mixin class $LoginResponseDataCopyWith<$Res>  {
  factory $LoginResponseDataCopyWith(LoginResponseData value, $Res Function(LoginResponseData) _then) = _$LoginResponseDataCopyWithImpl;
@useResult
$Res call({
 String token,@JsonKey(name: 'token_type') String? tokenType, String? name, String? avatar, List<UserRole> roles,@JsonKey(name: 'expires_in') String? expiresIn,@JsonKey(name: 'create_at') String? createAt,@JsonKey(name: 'expires_at') String? expiresAt
});




}
/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._self, this._then);

  final LoginResponseData _self;
  final $Res Function(LoginResponseData) _then;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? tokenType = freezed,Object? name = freezed,Object? avatar = freezed,Object? roles = null,Object? expiresIn = freezed,Object? createAt = freezed,Object? expiresAt = freezed,}) {
  return _then(LoginResponseData(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<UserRole>,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as String?,createAt: freezed == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginResponseData].
extension LoginResponseDataPatterns on LoginResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseData value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'token_type')  String? tokenType,  String? name,  String? avatar,  List<UserRole> roles, @JsonKey(name: 'expires_in')  String? expiresIn, @JsonKey(name: 'create_at')  String? createAt, @JsonKey(name: 'expires_at')  String? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that.token,_that.tokenType,_that.name,_that.avatar,_that.roles,_that.expiresIn,_that.createAt,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'token_type')  String? tokenType,  String? name,  String? avatar,  List<UserRole> roles, @JsonKey(name: 'expires_in')  String? expiresIn, @JsonKey(name: 'create_at')  String? createAt, @JsonKey(name: 'expires_at')  String? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseData():
return $default(_that.token,_that.tokenType,_that.name,_that.avatar,_that.roles,_that.expiresIn,_that.createAt,_that.expiresAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token, @JsonKey(name: 'token_type')  String? tokenType,  String? name,  String? avatar,  List<UserRole> roles, @JsonKey(name: 'expires_in')  String? expiresIn, @JsonKey(name: 'create_at')  String? createAt, @JsonKey(name: 'expires_at')  String? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that.token,_that.tokenType,_that.name,_that.avatar,_that.roles,_that.expiresIn,_that.createAt,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseData implements LoginResponseData {
  const _LoginResponseData({required this.token, @JsonKey(name: 'token_type') this.tokenType, this.name, this.avatar,  List<UserRole> roles = const [], @JsonKey(name: 'expires_in') this.expiresIn, @JsonKey(name: 'create_at') this.createAt, @JsonKey(name: 'expires_at') this.expiresAt}): _roles = roles;
  factory _LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);

/// 认证 Token
@override final  String token;
/// Token 类型 (例如: bearer)
@override@JsonKey(name: 'token_type') final  String? tokenType;
/// 管理员名称
@override final  String? name;
/// 头像地址
@override final  String? avatar;
/// 角色列表
 final  List<UserRole> _roles;
/// 角色列表
@override@JsonKey() List<UserRole> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

/// 过期时长（字符串形式，如 "20160 minutes"）
@override@JsonKey(name: 'expires_in') final  String? expiresIn;
/// 创建时间 (注意后端返回的是 create_at 而不是 created_at)
@override@JsonKey(name: 'create_at') final  String? createAt;
/// 过期时间
@override@JsonKey(name: 'expires_at') final  String? expiresAt;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseDataCopyWith<_LoginResponseData> get copyWith => __$LoginResponseDataCopyWithImpl<_LoginResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseData&&(identical(other.token, token) || other.token == token)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&const DeepCollectionEquality().equals(other.roles, _roles)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,token,tokenType,name,avatar,const DeepCollectionEquality().hash(_roles),expiresIn,createAt,expiresAt);
}

@override
String toString() {
    return 'LoginResponseData(token: $token, tokenType: $tokenType, name: $name, avatar: $avatar, roles: $roles, expiresIn: $expiresIn, createAt: $createAt, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseDataCopyWith<$Res> implements $LoginResponseDataCopyWith<$Res> {
  factory _$LoginResponseDataCopyWith(_LoginResponseData value, $Res Function(_LoginResponseData) _then) = __$LoginResponseDataCopyWithImpl;
@override @useResult
$Res call({
 String token,@JsonKey(name: 'token_type') String? tokenType, String? name, String? avatar, List<UserRole> roles,@JsonKey(name: 'expires_in') String? expiresIn,@JsonKey(name: 'create_at') String? createAt,@JsonKey(name: 'expires_at') String? expiresAt
});




}
/// @nodoc
class __$LoginResponseDataCopyWithImpl<$Res>
    implements _$LoginResponseDataCopyWith<$Res> {
  __$LoginResponseDataCopyWithImpl(this._self, this._then);

  final _LoginResponseData _self;
  final $Res Function(_LoginResponseData) _then;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? tokenType = freezed,Object? name = freezed,Object? avatar = freezed,Object? roles = null,Object? expiresIn = freezed,Object? createAt = freezed,Object? expiresAt = freezed,}) {
  return _then(_LoginResponseData(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<UserRole>,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as String?,createAt: freezed == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
