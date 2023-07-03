import 'package:flutter/material.dart';

class BlueHorizontalIconAndText extends StatelessWidget {
  final IconData icon;
  final List<Widget> headings;
  final List<Widget> subheadings;

  const BlueHorizontalIconAndText({
    super.key,
    required this.icon,
    required this.headings,
    this.subheadings = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Theme.of(context).highlightColor,
          ),
          child: Icon(icon),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            children: [
              DefaultTextStyle.merge(
                style: Theme.of(context).textTheme.bodyLarge,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: headings,
                ),
              ),
              DefaultTextStyle.merge(
                style: Theme.of(context).textTheme.bodySmall,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: subheadings,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
