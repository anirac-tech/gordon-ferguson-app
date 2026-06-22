// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

 int get id; int get count; String get description; String get link; String get name; String get slug; String get taxonomy; int get parent; List<dynamic> get meta; Links? get links;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.taxonomy, taxonomy) || other.taxonomy == taxonomy)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other.meta, meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,count,description,link,name,slug,taxonomy,parent,const DeepCollectionEquality().hash(meta),links);

@override
String toString() {
  return 'Category(id: $id, count: $count, description: $description, link: $link, name: $name, slug: $slug, taxonomy: $taxonomy, parent: $parent, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int id, int count, String description, String link, String name, String slug, String taxonomy, int parent, List<dynamic> meta, Links? links
});


$LinksCopyWith<$Res>? get links;

}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? count = null,Object? description = null,Object? link = null,Object? name = null,Object? slug = null,Object? taxonomy = null,Object? parent = null,Object? meta = null,Object? links = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,taxonomy: null == taxonomy ? _self.taxonomy : taxonomy // ignore: cast_nullable_to_non_nullable
as String,parent: null == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as List<dynamic>,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links?,
  ));
}
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $LinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int count,  String description,  String link,  String name,  String slug,  String taxonomy,  int parent,  List<dynamic> meta,  Links? links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.count,_that.description,_that.link,_that.name,_that.slug,_that.taxonomy,_that.parent,_that.meta,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int count,  String description,  String link,  String name,  String slug,  String taxonomy,  int parent,  List<dynamic> meta,  Links? links)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.count,_that.description,_that.link,_that.name,_that.slug,_that.taxonomy,_that.parent,_that.meta,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int count,  String description,  String link,  String name,  String slug,  String taxonomy,  int parent,  List<dynamic> meta,  Links? links)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.count,_that.description,_that.link,_that.name,_that.slug,_that.taxonomy,_that.parent,_that.meta,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category extends Category {
  const _Category({required this.id, required this.count, required this.description, required this.link, required this.name, required this.slug, required this.taxonomy, required this.parent, required final  List<dynamic> meta, this.links}): _meta = meta,super._();
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  int id;
@override final  int count;
@override final  String description;
@override final  String link;
@override final  String name;
@override final  String slug;
@override final  String taxonomy;
@override final  int parent;
 final  List<dynamic> _meta;
@override List<dynamic> get meta {
  if (_meta is EqualUnmodifiableListView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meta);
}

@override final  Links? links;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.taxonomy, taxonomy) || other.taxonomy == taxonomy)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other._meta, _meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,count,description,link,name,slug,taxonomy,parent,const DeepCollectionEquality().hash(_meta),links);

@override
String toString() {
  return 'Category(id: $id, count: $count, description: $description, link: $link, name: $name, slug: $slug, taxonomy: $taxonomy, parent: $parent, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, int count, String description, String link, String name, String slug, String taxonomy, int parent, List<dynamic> meta, Links? links
});


@override $LinksCopyWith<$Res>? get links;

}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? count = null,Object? description = null,Object? link = null,Object? name = null,Object? slug = null,Object? taxonomy = null,Object? parent = null,Object? meta = null,Object? links = freezed,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,taxonomy: null == taxonomy ? _self.taxonomy : taxonomy // ignore: cast_nullable_to_non_nullable
as String,parent: null == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as List<dynamic>,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links?,
  ));
}

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $LinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// @nodoc
mixin _$Links {

 List<Self> get self; List<About> get collection; List<About> get about; List<About> get wpPostType; List<Cury> get curies;
/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinksCopyWith<Links> get copyWith => _$LinksCopyWithImpl<Links>(this as Links, _$identity);

  /// Serializes this Links to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Links&&const DeepCollectionEquality().equals(other.self, self)&&const DeepCollectionEquality().equals(other.collection, collection)&&const DeepCollectionEquality().equals(other.about, about)&&const DeepCollectionEquality().equals(other.wpPostType, wpPostType)&&const DeepCollectionEquality().equals(other.curies, curies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(self),const DeepCollectionEquality().hash(collection),const DeepCollectionEquality().hash(about),const DeepCollectionEquality().hash(wpPostType),const DeepCollectionEquality().hash(curies));

@override
String toString() {
  return 'Links(self: $self, collection: $collection, about: $about, wpPostType: $wpPostType, curies: $curies)';
}


}

/// @nodoc
abstract mixin class $LinksCopyWith<$Res>  {
  factory $LinksCopyWith(Links value, $Res Function(Links) _then) = _$LinksCopyWithImpl;
@useResult
$Res call({
 List<Self> self, List<About> collection, List<About> about, List<About> wpPostType, List<Cury> curies
});




}
/// @nodoc
class _$LinksCopyWithImpl<$Res>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._self, this._then);

  final Links _self;
  final $Res Function(Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? self = null,Object? collection = null,Object? about = null,Object? wpPostType = null,Object? curies = null,}) {
  return _then(_self.copyWith(
self: null == self ? _self.self : self // ignore: cast_nullable_to_non_nullable
as List<Self>,collection: null == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as List<About>,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as List<About>,wpPostType: null == wpPostType ? _self.wpPostType : wpPostType // ignore: cast_nullable_to_non_nullable
as List<About>,curies: null == curies ? _self.curies : curies // ignore: cast_nullable_to_non_nullable
as List<Cury>,
  ));
}

}


/// Adds pattern-matching-related methods to [Links].
extension LinksPatterns on Links {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Links value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Links() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Links value)  $default,){
final _that = this;
switch (_that) {
case _Links():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Links value)?  $default,){
final _that = this;
switch (_that) {
case _Links() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Self> self,  List<About> collection,  List<About> about,  List<About> wpPostType,  List<Cury> curies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.self,_that.collection,_that.about,_that.wpPostType,_that.curies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Self> self,  List<About> collection,  List<About> about,  List<About> wpPostType,  List<Cury> curies)  $default,) {final _that = this;
switch (_that) {
case _Links():
return $default(_that.self,_that.collection,_that.about,_that.wpPostType,_that.curies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Self> self,  List<About> collection,  List<About> about,  List<About> wpPostType,  List<Cury> curies)?  $default,) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.self,_that.collection,_that.about,_that.wpPostType,_that.curies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Links implements Links {
  const _Links({required final  List<Self> self, required final  List<About> collection, required final  List<About> about, required final  List<About> wpPostType, required final  List<Cury> curies}): _self = self,_collection = collection,_about = about,_wpPostType = wpPostType,_curies = curies;
  factory _Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

 final  List<Self> _self;
@override List<Self> get self {
  if (_self is EqualUnmodifiableListView) return _self;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_self);
}

 final  List<About> _collection;
@override List<About> get collection {
  if (_collection is EqualUnmodifiableListView) return _collection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collection);
}

 final  List<About> _about;
@override List<About> get about {
  if (_about is EqualUnmodifiableListView) return _about;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_about);
}

 final  List<About> _wpPostType;
@override List<About> get wpPostType {
  if (_wpPostType is EqualUnmodifiableListView) return _wpPostType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wpPostType);
}

 final  List<Cury> _curies;
@override List<Cury> get curies {
  if (_curies is EqualUnmodifiableListView) return _curies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_curies);
}


/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinksCopyWith<_Links> get copyWith => __$LinksCopyWithImpl<_Links>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Links&&const DeepCollectionEquality().equals(other._self, _self)&&const DeepCollectionEquality().equals(other._collection, _collection)&&const DeepCollectionEquality().equals(other._about, _about)&&const DeepCollectionEquality().equals(other._wpPostType, _wpPostType)&&const DeepCollectionEquality().equals(other._curies, _curies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_self),const DeepCollectionEquality().hash(_collection),const DeepCollectionEquality().hash(_about),const DeepCollectionEquality().hash(_wpPostType),const DeepCollectionEquality().hash(_curies));

@override
String toString() {
  return 'Links(self: $self, collection: $collection, about: $about, wpPostType: $wpPostType, curies: $curies)';
}


}

/// @nodoc
abstract mixin class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) _then) = __$LinksCopyWithImpl;
@override @useResult
$Res call({
 List<Self> self, List<About> collection, List<About> about, List<About> wpPostType, List<Cury> curies
});




}
/// @nodoc
class __$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(this._self, this._then);

  final _Links _self;
  final $Res Function(_Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? self = null,Object? collection = null,Object? about = null,Object? wpPostType = null,Object? curies = null,}) {
  return _then(_Links(
self: null == self ? _self._self : self // ignore: cast_nullable_to_non_nullable
as List<Self>,collection: null == collection ? _self._collection : collection // ignore: cast_nullable_to_non_nullable
as List<About>,about: null == about ? _self._about : about // ignore: cast_nullable_to_non_nullable
as List<About>,wpPostType: null == wpPostType ? _self._wpPostType : wpPostType // ignore: cast_nullable_to_non_nullable
as List<About>,curies: null == curies ? _self._curies : curies // ignore: cast_nullable_to_non_nullable
as List<Cury>,
  ));
}


}


/// @nodoc
mixin _$About {

 String get href;
/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutCopyWith<About> get copyWith => _$AboutCopyWithImpl<About>(this as About, _$identity);

  /// Serializes this About to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is About&&(identical(other.href, href) || other.href == href));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,href);

@override
String toString() {
  return 'About(href: $href)';
}


}

/// @nodoc
abstract mixin class $AboutCopyWith<$Res>  {
  factory $AboutCopyWith(About value, $Res Function(About) _then) = _$AboutCopyWithImpl;
@useResult
$Res call({
 String href
});




}
/// @nodoc
class _$AboutCopyWithImpl<$Res>
    implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._self, this._then);

  final About _self;
  final $Res Function(About) _then;

/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? href = null,}) {
  return _then(_self.copyWith(
href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [About].
extension AboutPatterns on About {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _About value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _About() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _About value)  $default,){
final _that = this;
switch (_that) {
case _About():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _About value)?  $default,){
final _that = this;
switch (_that) {
case _About() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String href)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _About() when $default != null:
return $default(_that.href);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String href)  $default,) {final _that = this;
switch (_that) {
case _About():
return $default(_that.href);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String href)?  $default,) {final _that = this;
switch (_that) {
case _About() when $default != null:
return $default(_that.href);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _About implements About {
  const _About({required this.href});
  factory _About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);

@override final  String href;

/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutCopyWith<_About> get copyWith => __$AboutCopyWithImpl<_About>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AboutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _About&&(identical(other.href, href) || other.href == href));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,href);

@override
String toString() {
  return 'About(href: $href)';
}


}

/// @nodoc
abstract mixin class _$AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$AboutCopyWith(_About value, $Res Function(_About) _then) = __$AboutCopyWithImpl;
@override @useResult
$Res call({
 String href
});




}
/// @nodoc
class __$AboutCopyWithImpl<$Res>
    implements _$AboutCopyWith<$Res> {
  __$AboutCopyWithImpl(this._self, this._then);

  final _About _self;
  final $Res Function(_About) _then;

/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? href = null,}) {
  return _then(_About(
href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Cury {

 String get name; String get href; bool get templated;
/// Create a copy of Cury
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuryCopyWith<Cury> get copyWith => _$CuryCopyWithImpl<Cury>(this as Cury, _$identity);

  /// Serializes this Cury to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cury&&(identical(other.name, name) || other.name == name)&&(identical(other.href, href) || other.href == href)&&(identical(other.templated, templated) || other.templated == templated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,href,templated);

@override
String toString() {
  return 'Cury(name: $name, href: $href, templated: $templated)';
}


}

/// @nodoc
abstract mixin class $CuryCopyWith<$Res>  {
  factory $CuryCopyWith(Cury value, $Res Function(Cury) _then) = _$CuryCopyWithImpl;
@useResult
$Res call({
 String name, String href, bool templated
});




}
/// @nodoc
class _$CuryCopyWithImpl<$Res>
    implements $CuryCopyWith<$Res> {
  _$CuryCopyWithImpl(this._self, this._then);

  final Cury _self;
  final $Res Function(Cury) _then;

/// Create a copy of Cury
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? href = null,Object? templated = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,templated: null == templated ? _self.templated : templated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Cury].
extension CuryPatterns on Cury {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cury value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cury() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cury value)  $default,){
final _that = this;
switch (_that) {
case _Cury():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cury value)?  $default,){
final _that = this;
switch (_that) {
case _Cury() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String href,  bool templated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cury() when $default != null:
return $default(_that.name,_that.href,_that.templated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String href,  bool templated)  $default,) {final _that = this;
switch (_that) {
case _Cury():
return $default(_that.name,_that.href,_that.templated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String href,  bool templated)?  $default,) {final _that = this;
switch (_that) {
case _Cury() when $default != null:
return $default(_that.name,_that.href,_that.templated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cury implements Cury {
  const _Cury({required this.name, required this.href, required this.templated});
  factory _Cury.fromJson(Map<String, dynamic> json) => _$CuryFromJson(json);

@override final  String name;
@override final  String href;
@override final  bool templated;

/// Create a copy of Cury
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuryCopyWith<_Cury> get copyWith => __$CuryCopyWithImpl<_Cury>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CuryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cury&&(identical(other.name, name) || other.name == name)&&(identical(other.href, href) || other.href == href)&&(identical(other.templated, templated) || other.templated == templated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,href,templated);

@override
String toString() {
  return 'Cury(name: $name, href: $href, templated: $templated)';
}


}

/// @nodoc
abstract mixin class _$CuryCopyWith<$Res> implements $CuryCopyWith<$Res> {
  factory _$CuryCopyWith(_Cury value, $Res Function(_Cury) _then) = __$CuryCopyWithImpl;
@override @useResult
$Res call({
 String name, String href, bool templated
});




}
/// @nodoc
class __$CuryCopyWithImpl<$Res>
    implements _$CuryCopyWith<$Res> {
  __$CuryCopyWithImpl(this._self, this._then);

  final _Cury _self;
  final $Res Function(_Cury) _then;

/// Create a copy of Cury
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? href = null,Object? templated = null,}) {
  return _then(_Cury(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,templated: null == templated ? _self.templated : templated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Self {

 String get href; TargetHints get targetHints;
/// Create a copy of Self
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelfCopyWith<Self> get copyWith => _$SelfCopyWithImpl<Self>(this as Self, _$identity);

  /// Serializes this Self to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Self&&(identical(other.href, href) || other.href == href)&&(identical(other.targetHints, targetHints) || other.targetHints == targetHints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,href,targetHints);

@override
String toString() {
  return 'Self(href: $href, targetHints: $targetHints)';
}


}

/// @nodoc
abstract mixin class $SelfCopyWith<$Res>  {
  factory $SelfCopyWith(Self value, $Res Function(Self) _then) = _$SelfCopyWithImpl;
@useResult
$Res call({
 String href, TargetHints targetHints
});


$TargetHintsCopyWith<$Res> get targetHints;

}
/// @nodoc
class _$SelfCopyWithImpl<$Res>
    implements $SelfCopyWith<$Res> {
  _$SelfCopyWithImpl(this._self, this._then);

  final Self _self;
  final $Res Function(Self) _then;

/// Create a copy of Self
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? href = null,Object? targetHints = null,}) {
  return _then(_self.copyWith(
href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,targetHints: null == targetHints ? _self.targetHints : targetHints // ignore: cast_nullable_to_non_nullable
as TargetHints,
  ));
}
/// Create a copy of Self
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetHintsCopyWith<$Res> get targetHints {

  return $TargetHintsCopyWith<$Res>(_self.targetHints, (value) {
    return _then(_self.copyWith(targetHints: value));
  });
}
}


/// Adds pattern-matching-related methods to [Self].
extension SelfPatterns on Self {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Self value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Self() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Self value)  $default,){
final _that = this;
switch (_that) {
case _Self():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Self value)?  $default,){
final _that = this;
switch (_that) {
case _Self() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String href,  TargetHints targetHints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Self() when $default != null:
return $default(_that.href,_that.targetHints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String href,  TargetHints targetHints)  $default,) {final _that = this;
switch (_that) {
case _Self():
return $default(_that.href,_that.targetHints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String href,  TargetHints targetHints)?  $default,) {final _that = this;
switch (_that) {
case _Self() when $default != null:
return $default(_that.href,_that.targetHints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Self implements Self {
  const _Self({required this.href, required this.targetHints});
  factory _Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);

@override final  String href;
@override final  TargetHints targetHints;

/// Create a copy of Self
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelfCopyWith<_Self> get copyWith => __$SelfCopyWithImpl<_Self>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SelfToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Self&&(identical(other.href, href) || other.href == href)&&(identical(other.targetHints, targetHints) || other.targetHints == targetHints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,href,targetHints);

@override
String toString() {
  return 'Self(href: $href, targetHints: $targetHints)';
}


}

/// @nodoc
abstract mixin class _$SelfCopyWith<$Res> implements $SelfCopyWith<$Res> {
  factory _$SelfCopyWith(_Self value, $Res Function(_Self) _then) = __$SelfCopyWithImpl;
@override @useResult
$Res call({
 String href, TargetHints targetHints
});


@override $TargetHintsCopyWith<$Res> get targetHints;

}
/// @nodoc
class __$SelfCopyWithImpl<$Res>
    implements _$SelfCopyWith<$Res> {
  __$SelfCopyWithImpl(this._self, this._then);

  final _Self _self;
  final $Res Function(_Self) _then;

/// Create a copy of Self
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? href = null,Object? targetHints = null,}) {
  return _then(_Self(
href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,targetHints: null == targetHints ? _self.targetHints : targetHints // ignore: cast_nullable_to_non_nullable
as TargetHints,
  ));
}

/// Create a copy of Self
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetHintsCopyWith<$Res> get targetHints {

  return $TargetHintsCopyWith<$Res>(_self.targetHints, (value) {
    return _then(_self.copyWith(targetHints: value));
  });
}
}


/// @nodoc
mixin _$TargetHints {

 List<String> get allow;
/// Create a copy of TargetHints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetHintsCopyWith<TargetHints> get copyWith => _$TargetHintsCopyWithImpl<TargetHints>(this as TargetHints, _$identity);

  /// Serializes this TargetHints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetHints&&const DeepCollectionEquality().equals(other.allow, allow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allow));

@override
String toString() {
  return 'TargetHints(allow: $allow)';
}


}

/// @nodoc
abstract mixin class $TargetHintsCopyWith<$Res>  {
  factory $TargetHintsCopyWith(TargetHints value, $Res Function(TargetHints) _then) = _$TargetHintsCopyWithImpl;
@useResult
$Res call({
 List<String> allow
});




}
/// @nodoc
class _$TargetHintsCopyWithImpl<$Res>
    implements $TargetHintsCopyWith<$Res> {
  _$TargetHintsCopyWithImpl(this._self, this._then);

  final TargetHints _self;
  final $Res Function(TargetHints) _then;

/// Create a copy of TargetHints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allow = null,}) {
  return _then(_self.copyWith(
allow: null == allow ? _self.allow : allow // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TargetHints].
extension TargetHintsPatterns on TargetHints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetHints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetHints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetHints value)  $default,){
final _that = this;
switch (_that) {
case _TargetHints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetHints value)?  $default,){
final _that = this;
switch (_that) {
case _TargetHints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> allow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetHints() when $default != null:
return $default(_that.allow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> allow)  $default,) {final _that = this;
switch (_that) {
case _TargetHints():
return $default(_that.allow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> allow)?  $default,) {final _that = this;
switch (_that) {
case _TargetHints() when $default != null:
return $default(_that.allow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TargetHints implements TargetHints {
  const _TargetHints({required final  List<String> allow}): _allow = allow;
  factory _TargetHints.fromJson(Map<String, dynamic> json) => _$TargetHintsFromJson(json);

 final  List<String> _allow;
@override List<String> get allow {
  if (_allow is EqualUnmodifiableListView) return _allow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allow);
}


/// Create a copy of TargetHints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetHintsCopyWith<_TargetHints> get copyWith => __$TargetHintsCopyWithImpl<_TargetHints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TargetHintsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetHints&&const DeepCollectionEquality().equals(other._allow, _allow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allow));

@override
String toString() {
  return 'TargetHints(allow: $allow)';
}


}

/// @nodoc
abstract mixin class _$TargetHintsCopyWith<$Res> implements $TargetHintsCopyWith<$Res> {
  factory _$TargetHintsCopyWith(_TargetHints value, $Res Function(_TargetHints) _then) = __$TargetHintsCopyWithImpl;
@override @useResult
$Res call({
 List<String> allow
});




}
/// @nodoc
class __$TargetHintsCopyWithImpl<$Res>
    implements _$TargetHintsCopyWith<$Res> {
  __$TargetHintsCopyWithImpl(this._self, this._then);

  final _TargetHints _self;
  final $Res Function(_TargetHints) _then;

/// Create a copy of TargetHints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allow = null,}) {
  return _then(_TargetHints(
allow: null == allow ? _self._allow : allow // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
