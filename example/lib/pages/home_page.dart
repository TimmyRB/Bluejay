import 'package:bluejay/bluejay.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Bluejay Example'),
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 8.0,
            ),
            sliver: SliverToBoxAdapter(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BlueHorizontalActions(
                    actions: [
                      BlueHorizontalAction(
                        icon: Icons.wallet,
                        label: 'Pay',
                        onPressed: () {},
                      ),
                      BlueHorizontalAction(
                        icon: Icons.arrow_upward,
                        label: 'Transfer',
                        onPressed: () {},
                      ),
                      BlueHorizontalAction(
                        icon: Icons.add,
                        label: 'Fund',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            sliver: SliverToBoxAdapter(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      BlueTitleWithFilter<int>(
                        title: 'Transactions',
                        value: value,
                        onChanged: (newValue) {
                          setState(() {
                            value = newValue ?? 0;
                          });
                        },
                        filters: const [
                          BlueFilter(value: 0, label: 'Last month'),
                          BlueFilter(value: 1, label: 'Last 3 months'),
                          BlueFilter(value: 2, label: 'Last 6 months'),
                          BlueFilter(value: 3, label: 'Last year'),
                          BlueFilter(value: 4, label: 'All'),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const BlueBreakdown(
                        title: '\$ 1,250.32',
                        subtitle: 'spent this month',
                        showLabels: true,
                        sections: [
                          BlueBreakdownSection(
                            label: 'Groceries',
                            value: 750.00,
                            color: Colors.green,
                          ),
                          BlueBreakdownSection(
                            label: 'Restaurants',
                            value: 350.00,
                            color: Colors.red,
                          ),
                          BlueBreakdownSection(
                            label: 'Shopping',
                            value: 100.00,
                            color: Colors.orange,
                          ),
                          BlueBreakdownSection(
                            label: 'Transfers',
                            value: 50.32,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Divider(),
                      ),
                      const BlueHorizontalIconAndText(
                        icon: Icons.apple,
                        headings: [
                          Text('Apple'),
                          Text('\$256.64'),
                        ],
                        subheadings: [
                          Text('Shopping'),
                          Text('10:30 AM'),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const BlueHorizontalIconAndText(
                        icon: Icons.shopping_cart,
                        headings: [
                          Text('Loblaws'),
                          Text('\$150.86'),
                        ],
                        subheadings: [
                          Text('Groceries'),
                          Text('9:00 AM'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: FilledButton(
                          child: const Text('Filled Button'),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Flexible(
                        child: ElevatedButton(
                          child: const Text('Elevated Button'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Flexible(
                        child: TextButton(
                          child: const Text('Text Button'),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Flexible(
                        child: OutlinedButton(
                          child: const Text('Outlined Button'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
