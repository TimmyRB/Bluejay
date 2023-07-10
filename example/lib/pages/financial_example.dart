import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/widgets/line_chart.dart';
import 'package:bluejay_example/widgets/side_drawer.dart';
import 'package:flutter/material.dart';

class FinancialExample extends StatefulWidget {
  const FinancialExample({super.key});

  @override
  State<FinancialExample> createState() => _MyAppState();
}

class _MyAppState extends State<FinancialExample>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );

    _tabController.addListener(() {
      setState(() {});
    });
  }

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Financial Example'),
            pinned: true,
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(bottom: 16.0),
            sliver: SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    const BlueSearchFormField(),
                    const SizedBox(height: 16.0),
                    TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(text: 'Net Worth'),
                        Tab(text: 'Spending'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    CustomLineChart(
                      showNet: _tabController.index == 0,
                    ),
                    const SizedBox(height: 16.0),
                    Card(
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
                    const SizedBox(height: 16.0),
                    Card(
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
                            const SizedBox(height: 8.0),
                            const BlueHorizontalIconAndText(
                              icon: Icons.restaurant,
                              headings: [
                                Text('McDonalds'),
                                Text('\$50.00'),
                              ],
                              subheadings: [
                                Text('Restaurants'),
                                Text('8:00 AM'),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            FilledButton(
                              onPressed: () {},
                              child: const Text('View All'),
                            ),
                          ],
                        ),
                      ),
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
