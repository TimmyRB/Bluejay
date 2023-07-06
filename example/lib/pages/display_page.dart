import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/side_drawer.dart';
import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  String codeBlockCode = '''
const BlueCodeBlock(
\tcode: 'Syntax highlighting for the code block is provided by the flutter_highlight package.',
\tlanguage: CodeBlockLanguage.plaintext,
\tactions: [
\t\tBlueCopyButton(
\t\t\tcontent: 'String to be copied to clipboard!',
\t\t),
\t],
)''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Inputs'),
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
                      'Code Block',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    const BlueCodeBlock(
                      code:
                          'Syntax highlighting for the code block is provided by the flutter_highlight package.',
                      language: CodeBlockLanguage.plaintext,
                      actions: [
                        BlueCopyButton(
                          content: 'String to be copied to clipboard!',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: codeBlockCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: codeBlockCode),
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
