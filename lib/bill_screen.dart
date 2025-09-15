import 'package:flutter/material.dart';
import 'package:flutter_app/providers/bill_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/bill.dart';

class BillCard extends StatelessWidget {
  final Bill bill;

  const BillCard({super.key, required this.bill});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              "Bill #${bill.id}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),

            // Patient details
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(bill.patientName ?? "Unknown Patient"),
              subtitle: Text("Phone: ${bill.phone}"),
              trailing: Text(
                bill.billDate.toString().split(" ").first,
                style: const TextStyle(color: Colors.grey),
              ),
            ),

            const Divider(),

            // Doctor + Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctor: ${bill.doctorName}"),
                Text("Section: ${bill.section}"),
              ],
            ),
            const SizedBox(height: 8),

            // Totals
            Text("Total: ₹${bill.total}"),
            Text("Grand Total: ₹${bill.grandTotal}"),
            Text("Discount: ₹${bill.discountAmount}"),
            Text("Paid: ₹${bill.totalPayment}"),
            Text("Due: ₹${bill.dueAmount}"),

            const Divider(),

            // Amounts summary
            Text(
              "Summary",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Due Total: ₹${bill.amounts?.due ?? 0}"),
            Text("Refund Total: ₹${bill.amounts?.refund ?? 0}"),
            Text("Adjustment: ₹${bill.amounts?.adjustment} ?? 0"),
          ],
        ),
      ),
    );
  }
}


class BillListScreen extends ConsumerWidget {
  const BillListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final billsAsync = ref.watch(billProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Bills")),
      body: billsAsync.when(
        data: (bills) {
          if (bills.isEmpty) {
            return const Center(child: Text("No bills found"));
          }
          return ListView.builder(
            itemCount: bills.length,
            itemBuilder: (context, index) {
              return BillCard(bill: bills[index]);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Text("Error: $err"),
        ),
      ),
    );
  }
}
