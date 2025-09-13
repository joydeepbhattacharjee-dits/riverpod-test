import 'package:flutter/material.dart';
import 'package:flutter_app/providers/form_state_provider.dart';
import 'package:flutter_app/screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SliverPageLayout(),
      //home: Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(8.0),
        child: DependentForm(),
      )),
    );
  }
}


class DependentForm extends ConsumerWidget {
  const DependentForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstFieldValue = ref.watch(firstFieldProvider);
    final secondFieldOptions = ref.watch(secondFieldOptionsProvider);
    final selectedSecond = ref.watch(selectedSecondFieldProvider);

    return Column(
      children: [
        // First Field
        TextField(
          decoration: const InputDecoration(labelText: "First Field"),
          onChanged: (value) {
            ref.read(firstFieldProvider.notifier).state = value;
            // Reset second field selection whenever first changes
            ref.read(selectedSecondFieldProvider.notifier).state = null;
          },
        ),

        const SizedBox(height: 16),

        // Second Field (dropdown, reactive)
        secondFieldOptions.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, _) => Text("Error: $err"),
          data: (options) {
            final enabled =
                firstFieldValue != null && firstFieldValue.isNotEmpty;

            return DropdownButton<String>(
              value: selectedSecond,
              hint: const Text("Select option"),
              items: enabled
                  ? options
                      .map((opt) =>
                          DropdownMenuItem(value: opt, child: Text(opt)))
                      .toList()
                  : [],
              onChanged: enabled
                  ? (value) {
                      ref.read(selectedSecondFieldProvider.notifier).state =
                          value;
                    }
                  : null,
            );
          },
        ),
      ],
    );
  }
}
