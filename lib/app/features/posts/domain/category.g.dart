// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
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

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'count': instance.count,
  'description': instance.description,
  'link': instance.link,
  'name': instance.name,
  'slug': instance.slug,
  'taxonomy': instance.taxonomy,
  'parent': instance.parent,
  'meta': instance.meta,
  'links': ?instance.links?.toJson(),
};

_Links _$LinksFromJson(Map<String, dynamic> json) => _Links(
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

Map<String, dynamic> _$LinksToJson(_Links instance) => <String, dynamic>{
  'self': instance.self.map((e) => e.toJson()).toList(),
  'collection': instance.collection.map((e) => e.toJson()).toList(),
  'about': instance.about.map((e) => e.toJson()).toList(),
  'wpPostType': instance.wpPostType.map((e) => e.toJson()).toList(),
  'curies': instance.curies.map((e) => e.toJson()).toList(),
};

_About _$AboutFromJson(Map<String, dynamic> json) =>
    _About(href: json['href'] as String);

Map<String, dynamic> _$AboutToJson(_About instance) => <String, dynamic>{
  'href': instance.href,
};

_Cury _$CuryFromJson(Map<String, dynamic> json) => _Cury(
  name: json['name'] as String,
  href: json['href'] as String,
  templated: json['templated'] as bool,
);

Map<String, dynamic> _$CuryToJson(_Cury instance) => <String, dynamic>{
  'name': instance.name,
  'href': instance.href,
  'templated': instance.templated,
};

_Self _$SelfFromJson(Map<String, dynamic> json) => _Self(
  href: json['href'] as String,
  targetHints: TargetHints.fromJson(
    json['targetHints'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$SelfToJson(_Self instance) => <String, dynamic>{
  'href': instance.href,
  'targetHints': instance.targetHints.toJson(),
};

_TargetHints _$TargetHintsFromJson(Map<String, dynamic> json) => _TargetHints(
  allow: (json['allow'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$TargetHintsToJson(_TargetHints instance) =>
    <String, dynamic>{'allow': instance.allow};
