import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WpaImage extends StatelessWidget {
  const WpaImage(this.imageUrl, {super.key, this.fit});

  final String imageUrl;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) => kIsWeb
      // coverage:ignore-start
      ? Image.network(
          imageUrl,
          errorBuilder: (_, __, ___) => const SizedBox(),
          fit: fit,
        )
      // coverage:ignore-end
      : CachedNetworkImage(
          imageUrl: imageUrl,
          errorWidget: (_, __, ___) => const Icon(Icons.cloud_off), //coverage:ignore-line
          fit: fit,
        );
}
