// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: (json['id'] as num).toInt(),
      title: Renderable.fromJson(json['title'] as Map<String, dynamic>),
      content: Renderable.fromJson(json['content'] as Map<String, dynamic>),
      excerpt: Renderable.fromJson(json['excerpt'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      link: json['link'] as String,
      embedded: json['_embedded'] == null
          ? null
          : Embedded.fromJson(json['_embedded'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title.toJson(),
    'content': instance.content.toJson(),
    'excerpt': instance.excerpt.toJson(),
    'date': instance.date.toIso8601String(),
    'link': instance.link,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_embedded', instance.embedded?.toJson());
  return val;
}

_$RenderableImpl _$$RenderableImplFromJson(Map<String, dynamic> json) => _$RenderableImpl(
      rendered: json['rendered'] as String,
    );

Map<String, dynamic> _$$RenderableImplToJson(_$RenderableImpl instance) => <String, dynamic>{
      'rendered': instance.rendered,
    };

_$EmbeddedImpl _$$EmbeddedImplFromJson(Map<String, dynamic> json) => _$EmbeddedImpl(
      wpFeaturedmedia: (json['wp:featuredmedia'] as List<dynamic>?)
          ?.map((e) => WpFeaturedmedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmbeddedImplToJson(_$EmbeddedImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wp:featuredmedia', instance.wpFeaturedmedia?.map((e) => e.toJson()).toList());
  return val;
}

_$WpFeaturedmediaImpl _$$WpFeaturedmediaImplFromJson(Map<String, dynamic> json) =>
    _$WpFeaturedmediaImpl(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      slug: json['slug'] as String,
      type: json['type'] as String,
      sourceUrl: json['source_url'] as String,
    );

Map<String, dynamic> _$$WpFeaturedmediaImplToJson(_$WpFeaturedmediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'slug': instance.slug,
      'type': instance.type,
      'source_url': instance.sourceUrl,
    };
