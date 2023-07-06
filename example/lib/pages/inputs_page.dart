import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/side_drawer.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  State<InputsPage> createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String defaultTextFieldCode = '''
TextFormField(
\tdecoration: const InputDecoration(
\t\tlabelText: 'Label',
\t),
)''';

  String passwordFieldCode = '''const BluePasswordFormField()''';
  String searchFieldCode = '''const BlueSearchFormField()''';

  String dropdownCode = '''
DropdownButtonFormField(
\thint: const Text('Dropdown'),
\tonChanged: (value) {},
\titems: const [
\t\tDropdownMenuItem(
\t\t\tvalue: 'coding',
\t\t\tchild: Text('Coding'),
\t\t),
\t\tDropdownMenuItem(
\t\t\tvalue: 'cool',
\t\t\tchild: Text('Is Cool'),
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
                      'Text Input',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Label',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: defaultTextFieldCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: defaultTextFieldCode),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Password Input',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    const BluePasswordFormField(),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: passwordFieldCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: passwordFieldCode),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Search Input',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    const BlueSearchFormField(),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: searchFieldCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: searchFieldCode),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Dropdown',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16.0),
                    DropdownButtonFormField(
                      hint: const Text('Dropdown'),
                      onChanged: (value) {},
                      items: const [
                        DropdownMenuItem(
                          value: 'coding',
                          child: Text('Coding'),
                        ),
                        DropdownMenuItem(
                          value: 'cool',
                          child: Text('Is Cool'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    BlueCodeBlock(
                      code: dropdownCode,
                      language: CodeBlockLanguage.dart,
                      actions: [
                        BlueCopyButton(content: dropdownCode),
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
