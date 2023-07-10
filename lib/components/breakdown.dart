import 'package:flutter/material.dart';

class BlueBreakdown extends StatefulWidget {
  const BlueBreakdown({
    super.key,
    this.title,
    this.subtitle,
    this.showLabels = false,
    this.totalValue = 1.0,
    this.sections = const [],
  });

  final String? title;
  final String? subtitle;
  final bool showLabels;
  final double? totalValue;
  final List<BlueBreakdownSection> sections;

  @override
  State<BlueBreakdown> createState() => _BlueBreakdownState();
}

class _BlueBreakdownState extends State<BlueBreakdown> {
  bool _labelsVisible = false;
  double _total = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _labelsVisible = widget.showLabels;
    _total = widget.totalValue ?? 0;

    if (widget.sections.fold<double>(0, (a, b) => a + b.value) > _total) {
      _total = widget.sections.fold<double>(0, (a, b) => a + b.value);
    }

    List<BlueBreakdownSection> sortedSections = widget.sections.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    List<Widget> labelWidgets = [];
    for (var s in sortedSections) {
      labelWidgets.add(
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: s.color,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 4.0),
            Text(
              s.label,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null || widget.subtitle != null)
          Text.rich(
            TextSpan(
              text: widget.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontFamily: 'UberMoveMono'),
              children: [
                TextSpan(
                  text: ' ${widget.subtitle ?? ''}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        if (widget.sections.isNotEmpty &&
            (widget.title != null || widget.subtitle != null))
          const SizedBox(height: 8.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Row(
            children: [
              ...sortedSections
                  .map(
                    (section) => Flexible(
                      flex: (section.value / _total * 100).floor(),
                      child: Container(
                        height: 16,
                        color: section.color,
                      ),
                    ),
                  )
                  .toList(),
              if (widget.sections.fold<double>(0, (a, b) => a + b.value) <
                  _total)
                Flexible(
                  flex: ((_total -
                              widget.sections
                                  .fold<double>(0, (a, b) => a + b.value)) /
                          _total *
                          100)
                      .ceil(),
                  child: Container(
                    height: 16,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        AnimatedOpacity(
          opacity: _labelsVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8.0,
            runSpacing: 4.0,
            children: labelWidgets,
          ),
        ),
      ],
    );
  }
}

class BlueBreakdownSection {
  const BlueBreakdownSection({
    required this.color,
    required this.label,
    required this.value,
  });

  final Color color;
  final String label;
  final double value;
}
