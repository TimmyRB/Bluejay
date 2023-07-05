import 'package:bluejay/extra/code_dark_theme.dart';
import 'package:bluejay/extra/code_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

class BlueCodeBlock extends StatelessWidget {
  const BlueCodeBlock({
    Key? key,
    required this.code,
    this.language,
    this.actions = const [],
    this.actionSpacing = 4.0,
    this.showActionBar = true,
  }) : super(key: key);

  final String code;
  final String? language;
  final List<Widget> actions;
  final double actionSpacing;
  final bool showActionBar;

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry themeBorderRadius =
        (Theme.of(context).cardTheme.shape as RoundedRectangleBorder)
            .borderRadius;

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: HighlightView(
              code,
              language: language,
              tabSize: 2,
              textStyle: const TextStyle(
                fontFamily: 'UberMoveMono',
                package: 'bluejay',
              ),
              theme: Theme.of(context).brightness == Brightness.light
                  ? blueCodeLightTheme
                  : blueCodeDarkTheme,
            ),
          ),
          if (showActionBar)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.code,
                    size: 16.0,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    language?.toUpperCase() ?? 'TEXT',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontFamily: 'UberMoveMono',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      package: 'bluejay',
                    ),
                  ),
                  const Spacer(),
                  ...actions.map((_) => SizedBox(width: actionSpacing)),
                  ...actions.map(
                    (e) => ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 24.0,
                        maxHeight: 24.0,
                      ),
                      child: Theme(
                        data: ThemeData(
                          iconTheme: IconThemeData(
                            size: 14.0,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        child: e,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
