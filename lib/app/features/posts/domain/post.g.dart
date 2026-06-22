// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  id: (json['id'] as num).toInt(),
  title: Renderable.fromJson(json['title'] as Map<String, dynamic>),
  content: Renderable.fromJson(json['content'] as Map<String, dynamic>),
  excerpt: Renderable.fromJson(json['excerpt'] as Map<String, dynamic>),
  date: DateTime.parse(json['date'] as String),
  link: json['link'] as String,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  embedded: json['_embedded'] == null
      ? null
      : Embedded.fromJson(json['_embedded'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title.toJson(),
  'content': instance.content.toJson(),
  'excerpt': instance.excerpt.toJson(),
  'date': instance.date.toIso8601String(),
  'link': instance.link,
  'categories': instance.categories,
  '_embedded': ?instance.embedded?.toJson(),
};

_Renderable _$RenderableFromJson(Map<String, dynamic> json) =>
    _Renderable(rendered: json['rendered'] as String);

Map<String, dynamic> _$RenderableToJson(_Renderable instance) =>
    <String, dynamic>{'rendered': instance.rendered};

_Embedded _$EmbeddedFromJson(Map<String, dynamic> json) => _Embedded(
  wpFeaturedmedia: (json['wp:featuredmedia'] as List<dynamic>?)
      ?.map((e) => WpFeaturedmedia.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EmbeddedToJson(_Embedded instance) => <String, dynamic>{
  'wp:featuredmedia': ?instance.wpFeaturedmedia
      ?.map((e) => e.toJson())
      .toList(),
};

_WpFeaturedmedia _$WpFeaturedmediaFromJson(Map<String, dynamic> json) =>
    _WpFeaturedmedia(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      slug: json['slug'] as String,
      type: json['type'] as String,
      sourceUrl: json['source_url'] as String,
    );

Map<String, dynamic> _$WpFeaturedmediaToJson(_WpFeaturedmedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'slug': instance.slug,
      'type': instance.type,
      'source_url': instance.sourceUrl,
    };
