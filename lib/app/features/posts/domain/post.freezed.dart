// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  Renderable get title => throw _privateConstructorUsedError;
  Renderable get content => throw _privateConstructorUsedError;
  Renderable get excerpt => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: '_embedded')
  Embedded? get embedded => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) = _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      Renderable title,
      Renderable content,
      Renderable excerpt,
      DateTime date,
      String link,
      @JsonKey(name: '_embedded') Embedded? embedded});

  $RenderableCopyWith<$Res> get title;
  $RenderableCopyWith<$Res> get content;
  $RenderableCopyWith<$Res> get excerpt;
  $EmbeddedCopyWith<$Res>? get embedded;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? excerpt = null,
    Object? date = null,
    Object? link = null,
    Object? embedded = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Renderable,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Renderable,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as Renderable,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      embedded: freezed == embedded
          ? _value.embedded
          : embedded // ignore: cast_nullable_to_non_nullable
              as Embedded?,
    ) as $Val);
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RenderableCopyWith<$Res> get title {
    return $RenderableCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RenderableCopyWith<$Res> get content {
    return $RenderableCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RenderableCopyWith<$Res> get excerpt {
    return $RenderableCopyWith<$Res>(_value.excerpt, (value) {
      return _then(_value.copyWith(excerpt: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmbeddedCopyWith<$Res>? get embedded {
    if (_value.embedded == null) {
      return null;
    }

    return $EmbeddedCopyWith<$Res>(_value.embedded!, (value) {
      return _then(_value.copyWith(embedded: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(_$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Renderable title,
      Renderable content,
      Renderable excerpt,
      DateTime date,
      String link,
      @JsonKey(name: '_embedded') Embedded? embedded});

  @override
  $RenderableCopyWith<$Res> get title;
  @override
  $RenderableCopyWith<$Res> get content;
  @override
  $RenderableCopyWith<$Res> get excerpt;
  @override
  $EmbeddedCopyWith<$Res>? get embedded;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? excerpt = null,
    Object? date = null,
    Object? link = null,
    Object? embedded = freezed,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Renderable,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Renderable,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as Renderable,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      embedded: freezed == embedded
          ? _value.embedded
          : embedded // ignore: cast_nullable_to_non_nullable
              as Embedded?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl extends _Post {
  const _$PostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.excerpt,
      required this.date,
      required this.link,
      @JsonKey(name: '_embedded') this.embedded})
      : super._();

  factory _$PostImpl.fromJson(Map<String, dynamic> json) => _$$PostImplFromJson(json);

  @override
  final int id;
  @override
  final Renderable title;
  @override
  final Renderable content;
  @override
  final Renderable excerpt;
  @override
  final DateTime date;
  @override
  final String link;
  @override
  @JsonKey(name: '_embedded')
  final Embedded? embedded;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, content: $content, excerpt: $excerpt, date: $date, link: $link, embedded: $embedded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.embedded, embedded) || other.embedded == embedded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, excerpt, date, link, embedded);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {required final int id,
      required final Renderable title,
      required final Renderable content,
      required final Renderable excerpt,
      required final DateTime date,
      required final String link,
      @JsonKey(name: '_embedded') final Embedded? embedded}) = _$PostImpl;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get id;
  @override
  Renderable get title;
  @override
  Renderable get content;
  @override
  Renderable get excerpt;
  @override
  DateTime get date;
  @override
  String get link;
  @override
  @JsonKey(name: '_embedded')
  Embedded? get embedded;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith => throw _privateConstructorUsedError;
}

Renderable _$RenderableFromJson(Map<String, dynamic> json) {
  return _Renderable.fromJson(json);
}

/// @nodoc
mixin _$Renderable {
  String get rendered => throw _privateConstructorUsedError;

  /// Serializes this Renderable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Renderable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RenderableCopyWith<Renderable> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderableCopyWith<$Res> {
  factory $RenderableCopyWith(Renderable value, $Res Function(Renderable) then) =
      _$RenderableCopyWithImpl<$Res, Renderable>;
  @useResult
  $Res call({String rendered});
}

/// @nodoc
class _$RenderableCopyWithImpl<$Res, $Val extends Renderable> implements $RenderableCopyWith<$Res> {
  _$RenderableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Renderable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rendered = null,
  }) {
    return _then(_value.copyWith(
      rendered: null == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RenderableImplCopyWith<$Res> implements $RenderableCopyWith<$Res> {
  factory _$$RenderableImplCopyWith(_$RenderableImpl value, $Res Function(_$RenderableImpl) then) =
      __$$RenderableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rendered});
}

/// @nodoc
class __$$RenderableImplCopyWithImpl<$Res> extends _$RenderableCopyWithImpl<$Res, _$RenderableImpl>
    implements _$$RenderableImplCopyWith<$Res> {
  __$$RenderableImplCopyWithImpl(_$RenderableImpl _value, $Res Function(_$RenderableImpl) _then)
      : super(_value, _then);

  /// Create a copy of Renderable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rendered = null,
  }) {
    return _then(_$RenderableImpl(
      rendered: null == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RenderableImpl implements _Renderable {
  const _$RenderableImpl({required this.rendered});

  factory _$RenderableImpl.fromJson(Map<String, dynamic> json) => _$$RenderableImplFromJson(json);

  @override
  final String rendered;

  @override
  String toString() {
    return 'Renderable(rendered: $rendered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenderableImpl &&
            (identical(other.rendered, rendered) || other.rendered == rendered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rendered);

  /// Create a copy of Renderable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenderableImplCopyWith<_$RenderableImpl> get copyWith =>
      __$$RenderableImplCopyWithImpl<_$RenderableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RenderableImplToJson(
      this,
    );
  }
}

abstract class _Renderable implements Renderable {
  const factory _Renderable({required final String rendered}) = _$RenderableImpl;

  factory _Renderable.fromJson(Map<String, dynamic> json) = _$RenderableImpl.fromJson;

  @override
  String get rendered;

  /// Create a copy of Renderable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenderableImplCopyWith<_$RenderableImpl> get copyWith => throw _privateConstructorUsedError;
}

Embedded _$EmbeddedFromJson(Map<String, dynamic> json) {
  return _Embedded.fromJson(json);
}

/// @nodoc
mixin _$Embedded {
  @JsonKey(name: 'wp:featuredmedia')
  List<WpFeaturedmedia>? get wpFeaturedmedia => throw _privateConstructorUsedError;

  /// Serializes this Embedded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Embedded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbeddedCopyWith<Embedded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddedCopyWith<$Res> {
  factory $EmbeddedCopyWith(Embedded value, $Res Function(Embedded) then) =
      _$EmbeddedCopyWithImpl<$Res, Embedded>;
  @useResult
  $Res call({@JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? wpFeaturedmedia});
}

/// @nodoc
class _$EmbeddedCopyWithImpl<$Res, $Val extends Embedded> implements $EmbeddedCopyWith<$Res> {
  _$EmbeddedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Embedded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wpFeaturedmedia = freezed,
  }) {
    return _then(_value.copyWith(
      wpFeaturedmedia: freezed == wpFeaturedmedia
          ? _value.wpFeaturedmedia
          : wpFeaturedmedia // ignore: cast_nullable_to_non_nullable
              as List<WpFeaturedmedia>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbeddedImplCopyWith<$Res> implements $EmbeddedCopyWith<$Res> {
  factory _$$EmbeddedImplCopyWith(_$EmbeddedImpl value, $Res Function(_$EmbeddedImpl) then) =
      __$$EmbeddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? wpFeaturedmedia});
}

/// @nodoc
class __$$EmbeddedImplCopyWithImpl<$Res> extends _$EmbeddedCopyWithImpl<$Res, _$EmbeddedImpl>
    implements _$$EmbeddedImplCopyWith<$Res> {
  __$$EmbeddedImplCopyWithImpl(_$EmbeddedImpl _value, $Res Function(_$EmbeddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Embedded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wpFeaturedmedia = freezed,
  }) {
    return _then(_$EmbeddedImpl(
      wpFeaturedmedia: freezed == wpFeaturedmedia
          ? _value._wpFeaturedmedia
          : wpFeaturedmedia // ignore: cast_nullable_to_non_nullable
              as List<WpFeaturedmedia>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbeddedImpl implements _Embedded {
  const _$EmbeddedImpl(
      {@JsonKey(name: 'wp:featuredmedia') final List<WpFeaturedmedia>? wpFeaturedmedia})
      : _wpFeaturedmedia = wpFeaturedmedia;

  factory _$EmbeddedImpl.fromJson(Map<String, dynamic> json) => _$$EmbeddedImplFromJson(json);

  final List<WpFeaturedmedia>? _wpFeaturedmedia;
  @override
  @JsonKey(name: 'wp:featuredmedia')
  List<WpFeaturedmedia>? get wpFeaturedmedia {
    final value = _wpFeaturedmedia;
    if (value == null) return null;
    if (_wpFeaturedmedia is EqualUnmodifiableListView) return _wpFeaturedmedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Embedded(wpFeaturedmedia: $wpFeaturedmedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddedImpl &&
            const DeepCollectionEquality().equals(other._wpFeaturedmedia, _wpFeaturedmedia));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wpFeaturedmedia));

  /// Create a copy of Embedded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddedImplCopyWith<_$EmbeddedImpl> get copyWith =>
      __$$EmbeddedImplCopyWithImpl<_$EmbeddedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbeddedImplToJson(
      this,
    );
  }
}

abstract class _Embedded implements Embedded {
  const factory _Embedded(
          {@JsonKey(name: 'wp:featuredmedia') final List<WpFeaturedmedia>? wpFeaturedmedia}) =
      _$EmbeddedImpl;

  factory _Embedded.fromJson(Map<String, dynamic> json) = _$EmbeddedImpl.fromJson;

  @override
  @JsonKey(name: 'wp:featuredmedia')
  List<WpFeaturedmedia>? get wpFeaturedmedia;

  /// Create a copy of Embedded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbeddedImplCopyWith<_$EmbeddedImpl> get copyWith => throw _privateConstructorUsedError;
}

WpFeaturedmedia _$WpFeaturedmediaFromJson(Map<String, dynamic> json) {
  return _WpFeaturedmedia.fromJson(json);
}

/// @nodoc
mixin _$WpFeaturedmedia {
  int get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_url')
  String get sourceUrl => throw _privateConstructorUsedError;

  /// Serializes this WpFeaturedmedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WpFeaturedmedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WpFeaturedmediaCopyWith<WpFeaturedmedia> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WpFeaturedmediaCopyWith<$Res> {
  factory $WpFeaturedmediaCopyWith(WpFeaturedmedia value, $Res Function(WpFeaturedmedia) then) =
      _$WpFeaturedmediaCopyWithImpl<$Res, WpFeaturedmedia>;
  @useResult
  $Res call(
      {int id,
      DateTime date,
      String slug,
      String type,
      @JsonKey(name: 'source_url') String sourceUrl});
}

/// @nodoc
class _$WpFeaturedmediaCopyWithImpl<$Res, $Val extends WpFeaturedmedia>
    implements $WpFeaturedmediaCopyWith<$Res> {
  _$WpFeaturedmediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WpFeaturedmedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? slug = null,
    Object? type = null,
    Object? sourceUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WpFeaturedmediaImplCopyWith<$Res> implements $WpFeaturedmediaCopyWith<$Res> {
  factory _$$WpFeaturedmediaImplCopyWith(
          _$WpFeaturedmediaImpl value, $Res Function(_$WpFeaturedmediaImpl) then) =
      __$$WpFeaturedmediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime date,
      String slug,
      String type,
      @JsonKey(name: 'source_url') String sourceUrl});
}

/// @nodoc
class __$$WpFeaturedmediaImplCopyWithImpl<$Res>
    extends _$WpFeaturedmediaCopyWithImpl<$Res, _$WpFeaturedmediaImpl>
    implements _$$WpFeaturedmediaImplCopyWith<$Res> {
  __$$WpFeaturedmediaImplCopyWithImpl(
      _$WpFeaturedmediaImpl _value, $Res Function(_$WpFeaturedmediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of WpFeaturedmedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? slug = null,
    Object? type = null,
    Object? sourceUrl = null,
  }) {
    return _then(_$WpFeaturedmediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WpFeaturedmediaImpl implements _WpFeaturedmedia {
  const _$WpFeaturedmediaImpl(
      {required this.id,
      required this.date,
      required this.slug,
      required this.type,
      @JsonKey(name: 'source_url') required this.sourceUrl});

  factory _$WpFeaturedmediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$WpFeaturedmediaImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime date;
  @override
  final String slug;
  @override
  final String type;
  @override
  @JsonKey(name: 'source_url')
  final String sourceUrl;

  @override
  String toString() {
    return 'WpFeaturedmedia(id: $id, date: $date, slug: $slug, type: $type, sourceUrl: $sourceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WpFeaturedmediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, slug, type, sourceUrl);

  /// Create a copy of WpFeaturedmedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WpFeaturedmediaImplCopyWith<_$WpFeaturedmediaImpl> get copyWith =>
      __$$WpFeaturedmediaImplCopyWithImpl<_$WpFeaturedmediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WpFeaturedmediaImplToJson(
      this,
    );
  }
}

abstract class _WpFeaturedmedia implements WpFeaturedmedia {
  const factory _WpFeaturedmedia(
      {required final int id,
      required final DateTime date,
      required final String slug,
      required final String type,
      @JsonKey(name: 'source_url') required final String sourceUrl}) = _$WpFeaturedmediaImpl;

  factory _WpFeaturedmedia.fromJson(Map<String, dynamic> json) = _$WpFeaturedmediaImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get date;
  @override
  String get slug;
  @override
  String get type;
  @override
  @JsonKey(name: 'source_url')
  String get sourceUrl;

  /// Create a copy of WpFeaturedmedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WpFeaturedmediaImplCopyWith<_$WpFeaturedmediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
