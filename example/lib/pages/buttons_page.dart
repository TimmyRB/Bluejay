import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/side_drawer.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  String primaryCode = '''
// Active Primary Button
FilledButton(
\tonPressed: () {},
\tchild: const Text('Active'),
)''';

  String primaryDisabledCode = '''
// Disabled Primary Button
const FilledButton(
\tonPressed: null,
\tchild: Text('Disabled'),
)''';

  String secondaryCode = '''
// Active Secondary Button
TextButton(
\tonPressed: () {},
\tchild: const Text('Active'),
)''';

  String secondaryDisabledCode = '''
// Disabled Secondary Button
const TextButton(
\tonPressed: null,
\tchild: Text('Disabled'),
)''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Buttons'),
            pinned: true,
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(bottom: 16.0),
            sliver: SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Primary Button',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Flexible(
                          child: FilledButton(
                            onPressed: () {},
                            child: const Text('Active'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Flexible(
                          child: FilledButton(
                            onPressed: null,
                            child: Text('Disabled'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: primaryCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: primaryCode),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: primaryDisabledCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: primaryDisabledCode),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Secondary Button',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Flexible(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Active'),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Flexible(
                          child: TextButton(
                            onPressed: null,
                            child: Text('Disabled'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: secondaryCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: secondaryCode),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: secondaryDisabledCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: secondaryDisabledCode),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
