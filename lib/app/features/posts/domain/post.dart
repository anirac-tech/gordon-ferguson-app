import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    required int id,
    required Renderable title,
    required Renderable content,
    required Renderable excerpt,
    required DateTime date,
    required String link,
    @Default(<int>[]) List<int> categories,
    @JsonKey(name: '_embedded') Embedded? embedded,
  }) = _Post;
  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
  const Post._();

  String? get imageUrl => embedded?.wpFeaturedmedia?.firstOrNull?.sourceUrl;

  static drift.TypeConverter<Post, String> converter = drift.TypeConverter.json2(
    fromJson: (json) => Post.fromJson(json! as Map<String, Object?>),
    toJson: (pref) => pref.toJson(),
  );
}

@freezed
abstract class Renderable with _$Renderable {
  const factory Renderable({required String rendered}) = _Renderable;

  factory Renderable.fromJson(Map<String, Object?> json) => _$RenderableFromJson(json);
}

@freezed
abstract class Embedded with _$Embedded {
  const factory Embedded({
    @JsonKey(name: 'wp:featuredmedia') List<WpFeaturedmedia>? wpFeaturedmedia,
  }) = _Embedded;

  factory Embedded.fromJson(Map<String, dynamic> json) => _$EmbeddedFromJson(json);
}

@freezed
abstract class WpFeaturedmedia with _$WpFeaturedmedia {
  const factory WpFeaturedmedia({
    required int id,
    required DateTime date,
    required String slug,
    required String type,
    @JsonKey(name: 'source_url') required String sourceUrl,
  }) = _WpFeaturedmedia;

  factory WpFeaturedmedia.fromJson(Map<String, dynamic> json) => _$WpFeaturedmediaFromJson(json);
}
