import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyNotifier extends StateNotifier<List<String>> {
  MyNotifier() : super([]);

  void _updateState(String data) {
    state = [...state, data];
  }
}

final myProvider = StateNotifierProvider((ref) => MyNotifier());

class MyApp extends ConsumerWidget {
  final random = Random();

  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listOfNames = ref.watch(myProvider) as List;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ... listOfNames.map((name) => Text(name))
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                ref
                    .read(myProvider.notifier)._updateState('string ${random.nextInt((100))}');
              },
              icon: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
