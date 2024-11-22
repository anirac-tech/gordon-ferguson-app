import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WpaSearchBar extends HookWidget {
  const WpaSearchBar({
    super.key,
    required this.onSubmit,
  });

  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        controller: controller,
        onSubmitted: onSubmit,
        hintText: 'Search',
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        elevation: const WidgetStatePropertyAll(0.0),
        trailing: <Widget>[
          Text(
            String.fromCharCode(Icons.search.codePoint),
            style: TextStyle(
              inherit: false,
              color: Colors.grey.withOpacity(0.5),
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: Icons.search.fontFamily,
              package: Icons.search.fontPackage,
            ),
          ),
        ],
      ),
    );
  }
}
