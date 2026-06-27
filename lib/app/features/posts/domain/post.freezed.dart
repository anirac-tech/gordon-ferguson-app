// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Post {

 int get id; Renderable get title; Renderable get content; Renderable get excerpt; DateTime get date; String get link; List<int> get categories;@JsonKey(name: '_embedded') Embedded? get embedded;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.excerpt, excerpt) || other.excerpt == excerpt)&&(identical(other.date, date) || other.date == date)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.embedded, embedded) || other.embedded == embedded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,excerpt,date,link,const DeepCollectionEquality().hash(categories),embedded);

@override
String toString() {
  return 'Post(id: $id, title: $title, content: $content, excerpt: $excerpt, date: $date, link: $link, categories: $categories, embedded: $embedded)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 int id, Renderable title, Renderable content, Renderable excerpt, DateTime date, String link, List<int> categories,@JsonKey(name: '_embedded') Embedded? embedded
});


$RenderableCopyWith<$Res> get title;$RenderableCopyWith<$Res> get content;$RenderableCopyWith<$Res> get excerpt;$EmbeddedCopyWith<$Res>? get embedded;

}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? excerpt = null,Object? date = null,Object? link = null,Object? categories = null,Object? embedded = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Renderable,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Renderable,excerpt: null == excerpt ? _self.excerpt : excerpt // ignore: cast_nullable_to_non_nullable
as Renderable,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<int>,embedded: freezed == embedded ? _self.embedded : embedded // ignore: cast_nullable_to_non_nullable
as Embedded?,
  ));
}
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderableCopyWith<$Res> get title {
  
  return $RenderableCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderableCopyWith<$Res> get content {
  
  return $RenderableCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderableCopyWith<$Res> get excerpt {
  
  return $RenderableCopyWith<$Res>(_self.excerpt, (value) {
    return _then(_self.copyWith(excerpt: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbeddedCopyWith<$Res>? get embedded {
    if (_self.embedded == null) {
    return null;
  }

  return $EmbeddedCopyWith<$Res>(_self.embedded!, (value) {
    return _then(_self.copyWith(embedded: value));
  });
}
}


/// Adds pattern-matching-related methods to [Post].
extension PostPatterns on Post {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Post value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Post value)  $default,){
final _that = this;
switch (_that) {
case _Post():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Post value)?  $default,){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Renderable title,  Renderable content,  Renderable excerpt,  DateTime date,  String link,  List<int> categories, @JsonKey(name: '_embedded')  Embedded? embedded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.excerpt,_that.date,_that.link,_that.categories,_that.embedded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Renderable title,  Renderable content,  Renderable excerpt,  DateTime date,  String link,  List<int> categories, @JsonKey(name: '_embedded')  Embedded? embedded)  $default,) {final _that = this;
switch (_that) {
case _Post():
return $default(_that.id,_that.title,_that.content,_that.excerpt,_that.date,_that.link,_that.categories,_that.embedded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  Renderable title,  Renderable content,  Renderable excerpt,  DateTime date,  String link,  List<int> categories, @JsonKey(name: '_embedded')  Embedded? embedded)?  $default,) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.excerpt,_that.date,_that.link,_that.categories,_that.embedded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Post extends Post {
  const _Post({required this.id, required this.title, required this.content, required this.excerpt, required this.date, required this.link, final  List<int> categories = const <int>[], @JsonKey(name: '_embedded') this.embedded}): _categories = categories,super._();
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override final  int id;
@override final  Renderable title;
@override final  Renderable content;
@override final  Renderable excerpt;
@override final  DateTime date;
@override final  String link;
 final  List<int> _categories;
@override@JsonKey() List<int> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey(name: '_embedded') final  Embedded? embedded;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.excerpt, excerpt) || other.excerpt == excerpt)&&(identical(other.date, date) || other.date == date)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.embedded, embedded) || other.embedded == embedded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,excerpt,date,link,const DeepCollectionEquality().hash(_categories),embedded);

@override
String toString() {
  return 'Post(id: $id, title: $title, content: $content, excerpt: $excerpt, date: $date, link: $link, categories: $categories, embedded: $embedded)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 int id, Renderable title, Renderable content, Renderable excerpt, DateTime date, String link, List<int> categories,@JsonKey(name: '_embedded') Embedded? embedded
});


@override $RenderableCopyWith<$Res> get title;@override $RenderableCopyWith<$Res> get content;@override $RenderableCopyWith<$Res> get excerpt;@override $EmbeddedCopyWith<$Res>? get embedded;

}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? excerpt = null,Object? date = null,Object? link = null,Object? categories = null,Object? embedded = freezed,}) {
  return _then(_Post(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Renderable,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Renderable,excerpt: null == excerpt ? _self.excerpt : excerpt // ignore: cast_nullable_to_non_nullable
as Renderable,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<int>,embedded: freezed == embedded ? _self.embedded : embedded // ignore: cast_nullable_to_non_nullable
as Embedded?,
  ));
}

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderableCopyWith<$Res> get title {
  
  return $RenderableCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderableCopyWith<$Res> get content {
  
  return $RenderableCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderableCopyWith<$Res> get excerpt {
  
  return $RenderableCopyWith<$Res>(_self.excerpt, (value) {
    return _then(_self.copyWith(excerpt: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmbeddedCopyWith<$Res>? get embedded {
    if (_self.embedded == null) {
    return null;
  }

  return $EmbeddedCopyWith<$Res>(_self.embedded!, (value) {
    return _then(_self.copyWith(embedded: value));
  });
}
}


/// @nodoc
mixin _$Renderable {

 String get rendered;
/// Create a copy of Renderable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenderableCopyWith<Renderable> get copyWith => _$RenderableCopyWithImpl<Renderable>(this as Renderable, _$identity);

  /// Serializes this Renderable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Renderable&&(identical(other.rendered, rendered) || other.rendered == rendered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rendered);

@override
String toString() {
  return 'Renderable(rendered: $rendered)';
}


}

/// @nodoc
abstract mixin class $RenderableCopyWith<$Res>  {
  factory $RenderableCopyWith(Renderable value, $Res Function(Renderable) _then) = _$RenderableCopyWithImpl;
@useResult
$Res call({
 String rendered
});




}
/// @nodoc
class _$RenderableCopyWithImpl<$Res>
    implements $RenderableCopyWith<$Res> {
  _$RenderableCopyWithImpl(this._self, this._then);

  final Renderable _self;
  final $Res Function(Renderable) _then;

/// Create a copy of Renderable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rendered = null,}) {
  return _then(_self.copyWith(
rendered: null == rendered ? _self.rendered : rendered // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Renderable].
extension RenderablePatterns on Renderable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Renderable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Renderable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Renderable value)  $default,){
final _that = this;
switch (_that) {
case _Renderable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Renderable value)?  $default,){
final _that = this;
switch (_that) {
case _Renderable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rendered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Renderable() when $default != null:
return $default(_that.rendered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rendered)  $default,) {final _that = this;
switch (_that) {
case _Renderable():
return $default(_that.rendered);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rendered)?  $default,) {final _that = this;
switch (_that) {
case _Renderable() when $default != null:
return $default(_that.rendered);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Renderable implements Renderable {
  const _Renderable({required this.rendered});
  factory _Renderable.fromJson(Map<String, dynamic> json) => _$RenderableFromJson(json);

@override final  String rendered;

/// Create a copy of Renderable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenderableCopyWith<_Renderable> get copyWith => __$RenderableCopyWithImpl<_Renderable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RenderableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Renderable&&(identical(other.rendered, rendered) || other.rendered == rendered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rendered);

@override
String toString() {
  return 'Renderable(rendered: $rendered)';
}


}

/// @nodoc
abstract mixin class _$RenderableCopyWith<$Res> implements $RenderableCopyWith<$Res> {
  factory _$RenderableCopyWith(_Renderable value, $Res Function(_Renderable) _then) = __$RenderableCopyWithImpl;
@override @useResult
$Res call({
 String rendered
});




}
/// @nodoc
class __$RenderableCopyWithImpl<$Res>
    implements _$RenderableCopyWith<$Res> {
  __$RenderableCopyWithImpl(this._self, this._then);

  final _Renderable _self;
  final $Res Function(_Renderable) _then;

/// Create a copy of Renderable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rendered = null,}) {
  return _then(_Renderable(
rendered: null == rendered ? _self.rendered : rendered // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Embedded {

@JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? get wpFeaturedmedia;
/// Create a copy of Embedded
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbeddedCopyWith<Embedded> get copyWith => _$EmbeddedCopyWithImpl<Embedded>(this as Embedded, _$identity);

  /// Serializes this Embedded to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Embedded&&const DeepCollectionEquality().equals(other.wpFeaturedmedia, wpFeaturedmedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(wpFeaturedmedia));

@override
String toString() {
  return 'Embedded(wpFeaturedmedia: $wpFeaturedmedia)';
}


}

/// @nodoc
abstract mixin class $EmbeddedCopyWith<$Res>  {
  factory $EmbeddedCopyWith(Embedded value, $Res Function(Embedded) _then) = _$EmbeddedCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? wpFeaturedmedia
});




}
/// @nodoc
class _$EmbeddedCopyWithImpl<$Res>
    implements $EmbeddedCopyWith<$Res> {
  _$EmbeddedCopyWithImpl(this._self, this._then);

  final Embedded _self;
  final $Res Function(Embedded) _then;

/// Create a copy of Embedded
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wpFeaturedmedia = freezed,}) {
  return _then(_self.copyWith(
wpFeaturedmedia: freezed == wpFeaturedmedia ? _self.wpFeaturedmedia : wpFeaturedmedia // ignore: cast_nullable_to_non_nullable
as List<WpFeaturedmedia>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Embedded].
extension EmbeddedPatterns on Embedded {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Embedded value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Embedded() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Embedded value)  $default,){
final _that = this;
switch (_that) {
case _Embedded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Embedded value)?  $default,){
final _that = this;
switch (_that) {
case _Embedded() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'wp:featuredmedia')  List<WpFeaturedmedia>? wpFeaturedmedia)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Embedded() when $default != null:
return $default(_that.wpFeaturedmedia);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'wp:featuredmedia')  List<WpFeaturedmedia>? wpFeaturedmedia)  $default,) {final _that = this;
switch (_that) {
case _Embedded():
return $default(_that.wpFeaturedmedia);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'wp:featuredmedia')  List<WpFeaturedmedia>? wpFeaturedmedia)?  $default,) {final _that = this;
switch (_that) {
case _Embedded() when $default != null:
return $default(_that.wpFeaturedmedia);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Embedded implements Embedded {
  const _Embedded({@JsonKey(name: 'wp:featuredmedia') final  List<WpFeaturedmedia>? wpFeaturedmedia}): _wpFeaturedmedia = wpFeaturedmedia;
  factory _Embedded.fromJson(Map<String, dynamic> json) => _$EmbeddedFromJson(json);

 final  List<WpFeaturedmedia>? _wpFeaturedmedia;
@override@JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? get wpFeaturedmedia {
  final value = _wpFeaturedmedia;
  if (value == null) return null;
  if (_wpFeaturedmedia is EqualUnmodifiableListView) return _wpFeaturedmedia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Embedded
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbeddedCopyWith<_Embedded> get copyWith => __$EmbeddedCopyWithImpl<_Embedded>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbeddedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Embedded&&const DeepCollectionEquality().equals(other._wpFeaturedmedia, _wpFeaturedmedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_wpFeaturedmedia));

@override
String toString() {
  return 'Embedded(wpFeaturedmedia: $wpFeaturedmedia)';
}


}

/// @nodoc
abstract mixin class _$EmbeddedCopyWith<$Res> implements $EmbeddedCopyWith<$Res> {
  factory _$EmbeddedCopyWith(_Embedded value, $Res Function(_Embedded) _then) = __$EmbeddedCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? wpFeaturedmedia
});




}
/// @nodoc
class __$EmbeddedCopyWithImpl<$Res>
    implements _$EmbeddedCopyWith<$Res> {
  __$EmbeddedCopyWithImpl(this._self, this._then);

  final _Embedded _self;
  final $Res Function(_Embedded) _then;

/// Create a copy of Embedded
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wpFeaturedmedia = freezed,}) {
  return _then(_Embedded(
wpFeaturedmedia: freezed == wpFeaturedmedia ? _self._wpFeaturedmedia : wpFeaturedmedia // ignore: cast_nullable_to_non_nullable
as List<WpFeaturedmedia>?,
  ));
}


}


/// @nodoc
mixin _$WpFeaturedmedia {

 int get id; DateTime get date; String get slug; String get type;@JsonKey(name: 'source_url') String get sourceUrl;
/// Create a copy of WpFeaturedmedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WpFeaturedmediaCopyWith<WpFeaturedmedia> get copyWith => _$WpFeaturedmediaCopyWithImpl<WpFeaturedmedia>(this as WpFeaturedmedia, _$identity);

  /// Serializes this WpFeaturedmedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WpFeaturedmedia&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,slug,type,sourceUrl);

@override
String toString() {
  return 'WpFeaturedmedia(id: $id, date: $date, slug: $slug, type: $type, sourceUrl: $sourceUrl)';
}


}

/// @nodoc
abstract mixin class $WpFeaturedmediaCopyWith<$Res>  {
  factory $WpFeaturedmediaCopyWith(WpFeaturedmedia value, $Res Function(WpFeaturedmedia) _then) = _$WpFeaturedmediaCopyWithImpl;
@useResult
$Res call({
 int id, DateTime date, String slug, String type,@JsonKey(name: 'source_url') String sourceUrl
});




}
/// @nodoc
class _$WpFeaturedmediaCopyWithImpl<$Res>
    implements $WpFeaturedmediaCopyWith<$Res> {
  _$WpFeaturedmediaCopyWithImpl(this._self, this._then);

  final WpFeaturedmedia _self;
  final $Res Function(WpFeaturedmedia) _then;

/// Create a copy of WpFeaturedmedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? slug = null,Object? type = null,Object? sourceUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sourceUrl: null == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WpFeaturedmedia].
extension WpFeaturedmediaPatterns on WpFeaturedmedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WpFeaturedmedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WpFeaturedmedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WpFeaturedmedia value)  $default,){
final _that = this;
switch (_that) {
case _WpFeaturedmedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WpFeaturedmedia value)?  $default,){
final _that = this;
switch (_that) {
case _WpFeaturedmedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime date,  String slug,  String type, @JsonKey(name: 'source_url')  String sourceUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WpFeaturedmedia() when $default != null:
return $default(_that.id,_that.date,_that.slug,_that.type,_that.sourceUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime date,  String slug,  String type, @JsonKey(name: 'source_url')  String sourceUrl)  $default,) {final _that = this;
switch (_that) {
case _WpFeaturedmedia():
return $default(_that.id,_that.date,_that.slug,_that.type,_that.sourceUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime date,  String slug,  String type, @JsonKey(name: 'source_url')  String sourceUrl)?  $default,) {final _that = this;
switch (_that) {
case _WpFeaturedmedia() when $default != null:
return $default(_that.id,_that.date,_that.slug,_that.type,_that.sourceUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WpFeaturedmedia implements WpFeaturedmedia {
  const _WpFeaturedmedia({required this.id, required this.date, required this.slug, required this.type, @JsonKey(name: 'source_url') required this.sourceUrl});
  factory _WpFeaturedmedia.fromJson(Map<String, dynamic> json) => _$WpFeaturedmediaFromJson(json);

@override final  int id;
@override final  DateTime date;
@override final  String slug;
@override final  String type;
@override@JsonKey(name: 'source_url') final  String sourceUrl;

/// Create a copy of WpFeaturedmedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WpFeaturedmediaCopyWith<_WpFeaturedmedia> get copyWith => __$WpFeaturedmediaCopyWithImpl<_WpFeaturedmedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WpFeaturedmediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WpFeaturedmedia&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,slug,type,sourceUrl);

@override
String toString() {
  return 'WpFeaturedmedia(id: $id, date: $date, slug: $slug, type: $type, sourceUrl: $sourceUrl)';
}


}

/// @nodoc
abstract mixin class _$WpFeaturedmediaCopyWith<$Res> implements $WpFeaturedmediaCopyWith<$Res> {
  factory _$WpFeaturedmediaCopyWith(_WpFeaturedmedia value, $Res Function(_WpFeaturedmedia) _then) = __$WpFeaturedmediaCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime date, String slug, String type,@JsonKey(name: 'source_url') String sourceUrl
});




}
/// @nodoc
class __$WpFeaturedmediaCopyWithImpl<$Res>
    implements _$WpFeaturedmediaCopyWith<$Res> {
  __$WpFeaturedmediaCopyWithImpl(this._self, this._then);

  final _WpFeaturedmedia _self;
  final $Res Function(_WpFeaturedmedia) _then;

/// Create a copy of WpFeaturedmedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? slug = null,Object? type = null,Object? sourceUrl = null,}) {
  return _then(_WpFeaturedmedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sourceUrl: null == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
