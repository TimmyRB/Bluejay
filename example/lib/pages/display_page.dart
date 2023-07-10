import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/widgets/side_drawer.dart';
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

  String breakdownCode = '''
const BlueBreakdown(
\ttitle: '128 GB',
\tsubtitle: 'of 256 GB used',
\tshowLabels: true,
\ttotalValue: 256,
\tsections: [
\t\tBlueBreakdownSection(
\t\t\tcolor: Colors.blue,
\t\t\tlabel: 'Photos',
\t\t\tvalue: 64,
\t\t),
\t\tBlueBreakdownSection(
\t\t\tcolor: Colors.red,
\t\t\tlabel: 'Applications',
\t\t\tvalue: 32,
\t\t),
\t\tBlueBreakdownSection(
\t\t\tcolor: Colors.green,
\t\t\tlabel: 'System OS',
\t\t\tvalue: 32,
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
            title: Text('Data Display'),
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
                    const SizedBox(height: 16.0),
                    Text(
                      'Breakdown',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    const BlueBreakdown(
                      title: '128 GB',
                      subtitle: 'of 256 GB used',
                      showLabels: true,
                      totalValue: 256,
                      sections: [
                        BlueBreakdownSection(
                          color: Colors.blue,
                          label: 'Photos',
                          value: 64,
                        ),
                        BlueBreakdownSection(
                          color: Colors.red,
                          label: 'Applications',
                          value: 32,
                        ),
                        BlueBreakdownSection(
                          color: Colors.green,
                          label: 'System OS',
                          value: 32,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: breakdownCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: breakdownCode),
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
