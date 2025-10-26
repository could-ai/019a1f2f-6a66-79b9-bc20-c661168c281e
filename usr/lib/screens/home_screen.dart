import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Transactions'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTransactionCard(
            context,
            title: 'Product A',
            status: 'Waiting for payment',
            amount: '\$150.00',
            onTap: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
          _buildTransactionCard(
            context,
            title: 'Service B',
            status: 'Product shipped',
            amount: '\$300.00',
            onTap: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
          _buildTransactionCard(
            context,
            title: 'Product C',
            status: 'Completed',
            amount: '\$50.00',
            onTap: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create');
        },
        tooltip: 'New Transaction',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTransactionCard(BuildContext context,
      {required String title,
      required String status,
      required String amount,
      required VoidCallback onTap}) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.receipt_long, color: Colors.blue, size: 40),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(status),
        trailing: Text(amount,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.green)),
        onTap: onTap,
      ),
    );
  }
}
