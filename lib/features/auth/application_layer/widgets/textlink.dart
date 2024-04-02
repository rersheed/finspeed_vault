import 'package:flutter/material.dart';

class LinkComponent extends StatelessWidget {
  final VoidCallback function;
  final String text;
  final Color linkColor;

  const LinkComponent({
    super.key,
    required this.function,
    required this.text,
    required this.linkColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          color: linkColor,
        ),
      ),
    );
  }
}
