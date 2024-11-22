// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      description: json['description'] as String,
      link: json['link'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      taxonomy: json['taxonomy'] as String,
      parent: (json['parent'] as num).toInt(),
      meta: json['meta'] as List<dynamic>,
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'count': instance.count,
    'description': instance.description,
    'link': instance.link,
    'name': instance.name,
    'slug': instance.slug,
    'taxonomy': instance.taxonomy,
    'parent': instance.parent,
    'meta': instance.meta,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links?.toJson());
  return val;
}

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: (json['self'] as List<dynamic>)
          .map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>)
          .map((e) => About.fromJson(e as Map<String, dynamic>))
          .toList(),
      about: (json['about'] as List<dynamic>)
          .map((e) => About.fromJson(e as Map<String, dynamic>))
          .toList(),
      wpPostType: (json['wpPostType'] as List<dynamic>)
          .map((e) => About.fromJson(e as Map<String, dynamic>))
          .toList(),
      curies: (json['curies'] as List<dynamic>)
          .map((e) => Cury.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self.map((e) => e.toJson()).toList(),
      'collection': instance.collection.map((e) => e.toJson()).toList(),
      'about': instance.about.map((e) => e.toJson()).toList(),
      'wpPostType': instance.wpPostType.map((e) => e.toJson()).toList(),
      'curies': instance.curies.map((e) => e.toJson()).toList(),
    };

_$AboutImpl _$$AboutImplFromJson(Map<String, dynamic> json) => _$AboutImpl(
      href: json['href'] as String,
    );

Map<String, dynamic> _$$AboutImplToJson(_$AboutImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

_$CuryImpl _$$CuryImplFromJson(Map<String, dynamic> json) => _$CuryImpl(
      name: json['name'] as String,
      href: json['href'] as String,
      templated: json['templated'] as bool,
    );

Map<String, dynamic> _$$CuryImplToJson(_$CuryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'href': instance.href,
      'templated': instance.templated,
    };

_$SelfImpl _$$SelfImplFromJson(Map<String, dynamic> json) => _$SelfImpl(
      href: json['href'] as String,
      targetHints:
          TargetHints.fromJson(json['targetHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SelfImplToJson(_$SelfImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'targetHints': instance.targetHints.toJson(),
    };

_$TargetHintsImpl _$$TargetHintsImplFromJson(Map<String, dynamic> json) =>
    _$TargetHintsImpl(
      allow: (json['allow'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TargetHintsImplToJson(_$TargetHintsImpl instance) =>
    <String, dynamic>{
      'allow': instance.allow,
    };
