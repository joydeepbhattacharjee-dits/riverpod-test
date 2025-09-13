import 'package:hooks_riverpod/hooks_riverpod.dart';

final firstFieldProvider = StateProvider<String?>((ref) => null);

final secondFieldOptionsProvider =
    FutureProvider.autoDispose<List<String>>((ref) async {
  final firstFieldValue = ref.watch(firstFieldProvider);

  if (firstFieldValue == null || firstFieldValue.isEmpty) {
    return [];
  }

  await Future.delayed(const Duration(seconds: 1));
  return ["Option A for $firstFieldValue", "Option B for $firstFieldValue"];
});

final selectedSecondFieldProvider = StateProvider<String?>((ref) => null);
