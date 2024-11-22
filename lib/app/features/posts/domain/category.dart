import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const Category._();

  const factory Category({
    required int id,
    required int count,
    required String description,
    required String link,
    required String name,
    required String slug,
    required String taxonomy,
    required int parent,
    required List<dynamic> meta,
    Links? links,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    required List<Self> self,
    required List<About> collection,
    required List<About> about,
    required List<About> wpPostType,
    required List<Cury> curies,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class About with _$About {
  const factory About({
    required String href,
  }) = _About;

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
}

@freezed
class Cury with _$Cury {
  const factory Cury({
    required String name,
    required String href,
    required bool templated,
  }) = _Cury;

  factory Cury.fromJson(Map<String, dynamic> json) => _$CuryFromJson(json);
}

@freezed
class Self with _$Self {
  const factory Self({
    required String href,
    required TargetHints targetHints,
  }) = _Self;

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
}

@freezed
class TargetHints with _$TargetHints {
  const factory TargetHints({
    required List<String> allow,
  }) = _TargetHints;

  factory TargetHints.fromJson(Map<String, dynamic> json) => _$TargetHintsFromJson(json);
}
