import 'package:bluejay/components/code_block.dart';
import 'package:bluejay_example/side_drawer.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  String defaultTextFieldCode = '''
const TextField(
\tdecoration: InputDecoration(
\t\tlabel: Text('Label'),
\t),
),''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Text Fields'),
            pinned: true,
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Default TextField',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    const TextField(
                      decoration: InputDecoration(label: Text('Label')),
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: defaultTextFieldCode,
                      language: 'dart',
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
