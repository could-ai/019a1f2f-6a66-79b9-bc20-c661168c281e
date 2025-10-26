import 'package:flutter/material.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Details'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow('Product:', 'Product A'),
            _buildDetailRow('Amount:', '\$150.00'),
            _buildDetailRow('Buyer:', 'buyer@example.com'),
            _buildDetailRow('Seller:', 'seller@example.com'),
            const Divider(height: 32, thickness: 1),
            const Text(
              'Transaction Status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildStatusStep(
              title: 'Agreement Sent',
              isCompleted: true,
            ),
            _buildStatusStep(
              title: 'Buyer Paid',
              isCompleted: true,
            ),
            _buildStatusStep(
              title: 'Seller Shipped Product',
              isCompleted: false,
            ),
            _buildStatusStep(
              title: 'Product Delivered to Buyer',
              isCompleted: false,
            ),
            _buildStatusStep(
              title: 'Payment Released to Seller',
              isCompleted: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildStatusStep({required String title, required bool isCompleted}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
            color: isCompleted ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
