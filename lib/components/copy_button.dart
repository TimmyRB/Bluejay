import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BlueCopyButton extends StatelessWidget {
  const BlueCopyButton({
    super.key,
    required this.content,
    this.icon = const Icon(Icons.copy),
  });

  final String content;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Clipboard.setData(ClipboardData(text: content));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Copied to clipboard')),
        );
      },
      child: icon,
    );
  }
}
