import 'package:flutter/material.dart';

class BlueHorizontalAction extends StatelessWidget {
  const BlueHorizontalAction({
    super.key,
    this.icon,
    this.label,
    this.onPressed,
  });

  final IconData? icon;
  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(height: 8.0),
            if (label != null)
              Text(
                label!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
          ],
        ),
      ),
    );
  }
}
