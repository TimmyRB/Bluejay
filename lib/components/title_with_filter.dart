import 'package:flutter/material.dart';

class BlueTitleWithFilter<T> extends StatelessWidget {
  const BlueTitleWithFilter({
    super.key,
    required this.title,
    this.filters = const [],
    this.value,
    this.onChanged,
  });

  final String title;
  final List<BlueFilter<T>> filters;
  final T? value;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if (filters.isNotEmpty)
          DropdownButton<T>(
            value: value,
            onChanged: onChanged,
            items: filters
                .map(
                  (filter) => DropdownMenuItem<T>(
                    value: filter.value,
                    child: Text(
                      filter.label ?? filter.value.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                )
                .toList(),
            isDense: true,
            underline: Container(),
            alignment: Alignment.centerRight,
            dropdownColor: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8.0),
            padding: const EdgeInsets.only(left: 8.0),
          ),
      ],
    );
  }
}

class BlueFilter<T> {
  const BlueFilter({
    required this.value,
    this.label,
  });

  final T value;
  final String? label;
}
