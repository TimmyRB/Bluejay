import 'package:bluejay/components/horizontal_action.dart';
import 'package:flutter/material.dart';

class BlueHorizontalActions extends StatelessWidget {
  const BlueHorizontalActions({
    super.key,
    this.actions = const [],
    this.showDivider = true,
  });

  final List<BlueHorizontalAction> actions;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    for (var i = 0; i < actions.length; i++) {
      children.add(Expanded(child: actions[i]));
      if (i < actions.length - 1 && showDivider) {
        children.add(const VerticalDivider(
          indent: 8,
          endIndent: 8,
        ));
      }
    }

    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
